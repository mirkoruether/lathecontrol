# Isolated VFD interface — design plan

Add-on for the RP2040 lathe DRO board: drive a Chinese AT-series inverter
(single-phase in, three-phase out) for constant cutting speed, fully
galvanically isolated, using cheap JLCPCB basic parts only.

## 1. Design decisions

| Topic | Decision | Reason |
|---|---|---|
| Analog setpoint | PWM through optocoupler + RC filter + buffer | No DAC, no digital isolator, ~1 € of basic parts |
| Setpoint range | 0–10 V (VL1) | Twice the SNR of 0–5 V; 4–20 mA not worth it at ~1 m cable |
| PWM amplitude reference | VFD's own 10 V reference terminal | Scale factor tracks the VFD's own ADC reference |
| Isolation devices | LTV-817S-TA1-C optocouplers | Basic part, CTR bin C (200–400 %), largest creepage of the candidates |
| Opto LED drive | Directly from RP2040 GPIO, sinking | No ULN2003 / no discrete NPN needed |
| Isolated supply | From the VFD's own 15/24 V terminal (200 mA) | No isolated DC/DC needed on the board |
| Run command | Isolated, gated by a charge-pump watchdog | MCU hang must not leave the spindle running |
| Status | SP1 open-collector read back through a 4th opto | Running / fault indication |
| Speed accuracy | Closed loop on the existing spindle encoder | Makes DAC accuracy, VFD scaling and motor slip irrelevant |

### Alternates considered and rejected

- **SPI DAC (MCP4822) behind a digital isolator** — better linearity and step
  response, but 3 ICs, and digital isolators are extended parts with a feeder
  fee each. Not needed once the speed loop closes on the encoder.
- **4–20 mA output (XTR111)** — current loops earn their keep over tens of
  metres. Cable here is about 1 m.
- **RS485 (P10 = 3, P11 = 1)** — would replace everything below and give
  frequency/current readback, but the protocol is not documented in the
  manual that came with the inverter. Revisit if it ever turns up.

## 2. Safety ground rules

- **Treat the VFD's COM as mains potential.** On cheap single-phase drives the
  control ground is often tied to the DC bus negative. `COM_ISO` must never
  touch board GND, PE or the enclosure.
- **Design the barrier as reinforced isolation:** board slot under every
  optocoupler, no copper in the keep-out, target ≥ 6–8 mm creepage. Check
  against IEC 62368 / 61010 for 230 V reinforced before release.
- **The emergency stop stays hardwired** and drops a contactor ahead of the
  VFD. This drive has no STO. Neither this board nor an X input configured as
  "emergency stop" (function 19) is a substitute.
- **The watchdog is a second layer, not a safety function.** No diagnostic
  coverage, no certification.
- **Manual fallback:** `P10 = 2` disables the VFD's panel knob. Consider a
  DPDT manual/auto switch that routes VL1 either to this board or to an
  external 10 k pot on the VFD's 10 V terminal, and X4 either to Q1 or to a
  plain switch. Then the lathe still runs while the board is on the bench.

## 3. Sheet 1 — isolated analog setpoint (0–10 V → VL1)

```
 MCU side                      |  barrier  |            VFD side (COM_ISO)

 3V3 ──────────────────────────────────── A |         | C ── node N1 ── R3 22k ── n1
                                    OC1     |         |                    |
 GP20 ── R1 330R ──────────────────────── K |         | E ── COM_ISO      C1 220n → COM
                                            |         |
                     +10 V ref (VFD) ── R2 4k7 ── N1
                                                                  n1 ── R4 22k ── n2
                                                                         |
                                                                       C2 220n → COM
     n2 ── U1 LM358 (unity buffer, V+ = V15_ISO, V- = COM_ISO) ── R5 220R ── VL1
                                                                      |
                                                                    C3 10n → COM
```

- Two RC stages, τ ≈ 4.8 ms each. At 1 kHz PWM the ripple is a few mV and the
  setpoint settles in ~50 ms — far faster than the spindle accelerates.
- The filter resistors carry no DC into the op-amp input, so the average
  passes through undivided.
- **LED polarity inverts the logic.** Anode to 3V3, cathode through R1 to
  GP20: the pin pulls low to light the LED, which pulls the collector node
  down. 100 % duty = 0 V setpoint. Invert in firmware, or move the LED to the
  GPIO side.
- The opto's V_CE(sat) leaves ~0.2 V of floor instead of 0 V, i.e. a small
  residual frequency at "zero". One more reason the run command, not the
  setpoint, is what stops the spindle.
- PC817-class switching edges are a few µs, so expect a fraction of a percent
  of duty-cycle distortion at 1 kHz. Calibrate it out or let the encoder loop
  absorb it.
- 100 nF decoupling directly at the LM358 supply pins.

## 4. Sheet 2 — run command with charge-pump watchdog

```
 MCU side                      |  barrier  |            VFD side (COM_ISO)

 3V3 ──────────────────────────────────── A |         | C ── node P ── C4 47n ── node M
                                    OC2     |         |        |
 GP21 ── R6 330R ──────────────────────── K |         |      R7 1k → +5V_ISO
 (square wave ~1 kHz,                       |         |
  only while healthy)                       | E ── COM_ISO

 node M ── D1 BAT54 (cathode at M, anode at COM_ISO)
 node M ── D2 BAT54 ──> gate G ── C5 47n → COM_ISO
                              └─ R8 100k → COM_ISO
                              └─ Q1 AO3400  D → X4 (FWD)
                                            S → COM_ISO
```

### Why a pulse train, not a level

Three failure modes, unequally dangerous:

1. **Board loses power** — LEDs go dark. Safe.
2. **RP2040 resets** — pins become inputs, LEDs go dark. Safe.
3. **Firmware deadlocks with the RUN pin stuck high** — indistinguishable
   from a healthy MCU commanding RUN. The spindle keeps turning with nothing
   in control. This is the one the watchdog covers.

A stuck pin produces no edges. A capacitor passes only edges, so C4 is a
natural liveness detector: each rising edge pumps a little charge through D2
into C5, D1 clamps the coupling node on the falling edge so C4 can reset.
After a few dozen pulses the gate sits around 4 V and Q1 shorts X4 to COM.
R8 bleeds C5 continuously (τ ≈ 5 ms), so ~20 ms after the pulses stop the
gate falls below threshold, X4 opens and the VFD decelerates per P12.

- **Q1 must be logic-level** (AO3400, V_th ≈ 1 V) — the pumped gate never
  reaches a full rail.
- Generate the pulse train from a PWM slice that the main loop **re-arms every
  pass**, so a stalled loop stops the pulses instead of leaving hardware
  happily toggling on its own.
- Stopping deliberately = stop the pulse train.
- The analog line cannot be made fail-safe this way: whichever polarity is
  chosen, some dead state maps to some voltage, and even 0 V setpoint still
  means "run". Fail-safety lives in the run command.

**Reverse run:** duplicate this sheet onto another GPIO driving X5. Leave the
footprints unpopulated if reverse is not needed.

## 5. Sheet 3 — isolated supply and status readback

### Supply

```
 VFD "15/24 V" ── F1 PTC 50 mA ── D1 SS14 ──┬── U2 78L05 ──┬── +5V_ISO
                                            |              |
                                          C1 22µ/35V      C2 1µ
 VFD "COM" ─────────────────────────────────┴──────────────┴── COM_ISO
```

- The raw rail after D1 (`V15_ISO`) also feeds the LM358's V+ on sheet 1.
- Load on +5V_ISO is about 6 mA, so dissipation is negligible (~115 mW at
  24 V in).
- **Measure the terminal voltage first.** AMS1117-5.0 tolerates only 15 V in
  and will die on 24 V; the 78L05 takes 30 V.
- D1 is reverse-polarity protection in case the terminal ever gets wired
  backwards.

### Status readback (signal flows the other way)

```
 +5V_ISO ── R10 1k ── A |  OC4  | C ── node ── R9 10k → 3V3
                                |            └── GP22
 SP1 (open collector) ──────── K |         | E ── GND
```

- Note OC4 is **mirrored**: LED on the VFD side, transistor on the MCU side.
  Double-check the net assignment rather than copying the symbol orientation
  from sheets 1 and 2.
- R9 is optional (the RP2040 has internal pull-ups), but fit the footprint —
  an external pull-up gives a defined level during reset.
- Set `P58 = 1` (running) or `3` (fault).

## 6. Part selection notes

### Optocouplers

All of these are the same class — one LED, one plain phototransistor, SMD
4-pin, roughly PC817 performance — and all share the standard pinout
(1 anode, 2 cathode, 3 emitter, 4 collector):

| Part | Notes |
|---|---|
| LTV-817S-TA1-C | **Chosen.** Full-size 4-pin SOP, largest creepage here, CTR bin C = 200–400 % |
| LTV-217-B-G | Compact package, CTR bin B = 130–260 %, less creepage |
| IS281B-N-AXW | Compact package, B bin |
| ICPL-356-50CE | SOP-4, 3750 V RMS, C bin |

Lay out the full-size footprint and keep the others as drop-in alternates —
JLCPCB basic/extended status shifts often, so having two or three candidates
per footprint is worth more than picking the perfect part today.

**CTR check:** R2 = 4k7 from 10 V means the transistor must sink ~2.1 mA. At
6 mA LED current even the worst bin here (130 %) provides 7.8 mA — about 4×
margin. That margin matters because **CTR degrades with LED age** (expect
20–50 % over a decade) and drops at low temperature.

**Speed** is irrelevant at 1 kHz (all switch in a few µs). It would matter for
an SPI-DAC route, which would need a high-speed logic-output type
(ICPL-0601 / 6N137 class) instead.

### GPIO drive

Direct drive, no ULN2003, no discrete transistors.

- 330 Ω from 3V3 minus the LED's ~1.2 V gives ~6.4 mA. RP2040 pins handle up
  to 12 mA.
- **Set the pin drive strength to 8 mA.** The field is not a current limiter —
  it sets how stiff the pin is. Left at the 4 mA default while pulling 6 mA,
  the pin droops and the LED gets less than calculated: works on the bench,
  goes marginal after the LED ages.
- Four channels at once ≈ 26 mA total. No issue for IOVDD.
- A ULN2003 would drop ~1.0–1.1 V in its Darlington, throwing away half the
  headroom from a 3.3 V rail to gain nothing, plus a 16-pin package and
  another part number.

### Bill of materials (per function)

| Function | Parts |
|---|---|
| Analog setpoint | 1× LTV-817S, 1× LM358, 2× 22k, 2× 220n, 4k7, 330R, 220R, 10n |
| Run forward | 1× LTV-817S, 1× AO3400, 2× BAT54, 1k, 100k, 2× 47n, 330R |
| Run reverse | same again (optional, DNP) |
| Status readback | 1× LTV-817S, 1k, 10k, 330R n/a (LED driven from VFD side) |
| Isolated supply | 78L05 (or AMS1117-5.0 if the terminal is 15 V), SS14, PTC, 22µ, 1µ |

## 7. VFD parameters

| Parameter | Value | Meaning |
|---|---|---|
| P10 | 2 | Frequency setpoint from external analog input |
| P11 | 2 | Start/stop from terminals |
| P53 | 5 (default) | X4 = wire forward operation |
| P54 | 6 (default) | X5 = wire reverse operation |
| P58 | 1 or 3 | SP1 = running indication / fault indication |
| P50–P52 | 0 | Disable unused X1–X3 so noise cannot select preset speeds; optionally set one to 8 (error reset) |
| P12 | — | Stopping mode, applies when the watchdog drops X4 |
| P73 / P74 | leave alone at first | Raw ADC endpoints of the analog input |

**Calibration procedure:** do not touch P73/P74 blindly. Sweep the DAC/PWM,
log the frequency the VFD displays, and build the mapping in firmware.

## 8. Layout and wiring

- Isolated section as one contiguous copper region, barrier slot between it
  and everything else, no copper in the keep-out.
- 7-pole 5.08 mm terminal block on the VFD side: VL1, COM, X4, X5, SP1,
  15/24 V, 10 V ref.
- Shielded twisted pair to VL1/COM. Shield to COM **at the VFD end only**.
- Route caliper and TFT traces nowhere near the isolated section.

## 9. Open items to verify on the bench

1. **Which voltage does the "15V/24V" terminal actually deliver?** Decides
   78L05 vs AMS1117.
2. **Which analog mode is the jumper set to?** 0–5 V / 0–10 V / 4–20 mA — on
   the VFD control PCB. The 10 V/5 V reference output follows it.
3. **Does the 10 V reference hold steady under the ~2 mA R2 draws?** It is
   specified for 20 mA, so it should, but that reference is the entire gain
   accuracy of the analog channel. Scope it while the PWM runs; if it wobbles
   at the PWM frequency, add 10 µF across it at the VFD terminal.
4. **X input polarity and current:** measure open-circuit voltage from X4 to
   COM (expect 12–24 V) and short-circuit current, to confirm they are
   sinking inputs.
5. **Is COM actually mains-referenced?** Measure COM against PE. Design for
   the worst case either way.

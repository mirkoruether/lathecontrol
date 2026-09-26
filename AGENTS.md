# lathecontrol

Electronic lathe controller: position readout from calipers/encoders, display, and
spindle VFD control. Three hardware generations: `v1_arduino_mega`, `v2_stm32`
(PlatformIO), and `v3_rp2040` (current, KiCad 10 board in `v3_rp2040/board`).

## Current work (v3)

- Schematic `lathecontrol_v3.kicad_sch` plus the `calipers_in.kicad_sch` sub-sheet
  (instantiated 4x, owns R20–R51, C21–C32, J8–J11 — check before picking new refs).
- Isolated VFD interface per `v3_rp2040/board/vfd-interface-plan.md`.

## Tooling rules

- KiCad edits go through the **Konnect MCP server** (`.mcp.json`). If Konnect is not
  available or disconnects, **tell the user before falling back** to editing files
  directly — don't silently switch.
- JLCPCB/LCSC lookups: kicad-happy plugin (`search_lcsc.py`, run with
  `PYTHONIOENCODING=utf-8`). Konnect's JLCPCB DB doesn't work on Windows.
- Only JLCPCB **basic** parts get an LCSC number without asking; extended parts need
  the user's approval.
- The project is KiCad 10: use `KiCad\10.0\bin\kicad-cli.exe` (9.0 can't load it).
- When editing KiCad files by script, keep line endings consistent (a stray `\r`
  makes git treat the whole file as changed).

#include <Arduino.h>
#include <RotaryEncoder.h>
#include "MeasuringStick20Bit.h"

// Pin config
#define ROTARYENCODER0_PIN1 A8
#define ROTARYENCODER0_PIN2 A9
#define MEASURINGSTICK0_CLK 21
#define MEASURINGSTICK0_DAT 17

RotaryEncoder encoder0(ROTARYENCODER0_PIN1, ROTARYENCODER0_PIN2);
MeasuringStick20Bit ms0;

void setup()
{
    Serial.begin(9600);
    Serial.println("Hello World!");

    // Enable Pin Change Interrupt for Pins A8, A9 = PCINT16, PCINT17 
    // PCINT16 and PCINT17 are part of PCIE2
    // ToDo: Use defined pins and digitalPinToXXX to set these
    PCICR |= _BV(PCIE2);
    PCMSK2 |= _BV(PCINT16) | _BV(PCINT17);

    attachInterrupt(digitalPinToInterrupt(MEASURINGSTICK0_CLK), ms_clk, RISING);
    pinMode(MEASURINGSTICK0_CLK, INPUT_PULLUP);
    pinMode(MEASURINGSTICK0_DAT, INPUT_PULLUP);
}

// Interrupt Service Routine for PCIE2
ISR(PCINT2_vect) 
{
    encoder0.tick();
}

// Interrupt Service Routine for measuring stick clock
void ms_clk()
{
    ms0.next_bit(digitalRead(MEASURINGSTICK0_DAT));
}

// Print the current encoder position and measuring stick info.
void loop()
{
    Serial.print("Encoder Pos: ");
    Serial.print(encoder0.getPosition());
    Serial.println();

    Serial.print("MS Raw Data: ");
    Serial.print(ms0.get_raw_data(), BIN);
    Serial.println();

    Serial.print("Millimeters: ");
    Serial.print(ms0.calc_mm());
    Serial.println(" mm");

    Serial.print("Inches:      ");
    Serial.print(ms0.calc_inch());
    Serial.println(" in");

    delay(1000);
}

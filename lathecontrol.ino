#define __AVR_ATmega2560__

#include <Arduino.h>
#include <RotaryEncoder.h>

RotaryEncoder encoder(A8, A9);

void setup()
{
    Serial.begin(9600);
    Serial.println("Hello World!");

    // Enable Pin Change Interrupt for Pins A8, A9 = PCINT16, PCINT17 
    // PCINT16 and PCINT17 are part of PCIE2

    PCICR |= _BV(PCIE2);
    PCMSK2 |= _BV(PCINT16) | _BV(PCINT17);
}

// Interrupt Service Routine for PCIE2
ISR(PCINT2_vect) 
{
    encoder.tick();
}

// Read the current position of the encoder and print out when changed.
void loop()
{
    static int pos = 0;

    int newPos = encoder.getPosition();
    if (pos != newPos) {
        Serial.print(newPos);
        Serial.println();
        pos = newPos;
    }
}

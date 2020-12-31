#include <Arduino.h>
#include <PinChangeInterrupt.h>
#include <RotaryEncoder.h>
#include "MeasuringStick20Bit.h"

// Pin config
#define ROTARYENCODER0_BTN A8
#define ROTARYENCODER0_PIN1 A9
#define ROTARYENCODER0_PIN2 A10

#define EXTRABUTTON0_PIN A11
#define EXTRABUTTON1_PIN A14
#define EXTRABUTTON2_PIN A15

#define MEASURINGSTICK0_CLK 21
#define MEASURINGSTICK0_DAT 17

#define MEASURINGSTICK1_CLK 20
#define MEASURINGSTICK1_DAT 16

#define MEASURINGSTICK2_CLK 19
#define MEASURINGSTICK2_DAT 16

typedef enum InterruptType
{
    INT = 0,
    PCINT = 1
} InteruptType;

inline void attach_matching_interrupt(InterruptType inttype, uint8_t pin, void (*userFunc)(), int mode)
{
    if (inttype == PCINT) attachPCINT(digitalPinToPCINT(pin), userFunc, mode);
    else attachInterrupt(digitalPinToInterrupt(pin), userFunc, mode);
}

template<
    uint8_t PIN_CLK,
    uint8_t PIN_DAT,
    InterruptType CLK_INTERRUPT_TYPE = INT
>
MeasuringStick20Bit* make_measurestick()
{
    static MeasuringStick20Bit ms;
    static void (*func)() = [](){ms.next_bit(digitalRead(PIN_DAT));};
    pinMode(PIN_CLK, INPUT_PULLUP);
    pinMode(PIN_DAT, INPUT_PULLUP);
    attach_matching_interrupt(CLK_INTERRUPT_TYPE, PIN_CLK, func, RISING);
    return &ms;
}

MeasuringStick20Bit *ms[]{
    make_measurestick<MEASURINGSTICK0_CLK, MEASURINGSTICK0_DAT, INT>()
};

template<
    uint8_t PIN_1,
    uint8_t PIN_2,
    InterruptType PIN1_INTERRUPT_TYPE = PCINT,
    InterruptType PIN2_INTERRUPT_TYPE = PCINT
>
RotaryEncoder* make_rotaryencoder()
{
    static RotaryEncoder encoder(PIN_1, PIN_2);
    static void (*func)() = [](){encoder.tick();};
    attach_matching_interrupt(PIN1_INTERRUPT_TYPE, PIN_1, func, CHANGE);
    attach_matching_interrupt(PIN2_INTERRUPT_TYPE, PIN_2, func, CHANGE);
    return &encoder;
}

RotaryEncoder *encoder[]{
    make_rotaryencoder<ROTARYENCODER0_PIN1, ROTARYENCODER0_PIN2, PCINT, PCINT>()
};

void setup()
{
    Serial.begin(9600);
    Serial.println("Hello World!");
}

// Print the current encoder position and measuring stick info.
void loop()
{
    Serial.print("Encoder Pos: ");
    Serial.print(encoder[0]->getPosition());
    Serial.println();

    Serial.print("MS Raw Data: ");
    Serial.print(ms[0]->get_raw_data(), BIN);
    Serial.println();

    Serial.print("Millimeters: ");
    Serial.print(ms[0]->calc_mm());
    Serial.println(" mm");

    Serial.print("Inches:      ");
    Serial.print(ms[0]->calc_inch());
    Serial.println(" in");

    delay(1000);
}

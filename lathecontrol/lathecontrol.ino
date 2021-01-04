#include <Arduino.h>
#include <PinChangeInterrupt.h>
#include <OneButton.h>
#include <RotaryEncoder.h>
#include "MeasuringStick20Bit.h"
#include "AxisGuiSegment.h"
#include <LCDWIKI_KBV.h>

#define AXIS_COUNT 2

#define AXIS0_NAME 'd'
#define AXIS0_UNIT "mm"
#define AXIS0_DECIMALS 2
#define AXIS0_BTNPIN A14

#define AXIS1_NAME 'Z'
#define AXIS1_UNIT "mm"
#define AXIS1_DECIMALS 2
#define AXIS1_BTNPIN A15

#define MEASURINGSTICK_COUNT 3

#define MEASURINGSTICK0_CLK 21
#define MEASURINGSTICK0_DAT 17
#define MEASURINGSTICK0_CLK_INT_TYPE INT

#define MEASURINGSTICK1_CLK 20
#define MEASURINGSTICK1_DAT 16
#define MEASURINGSTICK1_CLK_INT_TYPE INT

#define MEASURINGSTICK2_CLK 19
#define MEASURINGSTICK2_DAT 16
#define MEASURINGSTICK2_CLK_INT_TYPE INT

#define ROTARYENCODER_PIN1 A9
#define ROTARYENCODER_PIN2 A10

typedef enum InterruptType
{
    INT = 0,
    PCINT = 1
} InteruptType;

void attach_matching_interrupt(InterruptType inttype, uint8_t pin, void (*userFunc)(), int mode)
{
    if (inttype == PCINT) attachPCINT(digitalPinToPCINT(pin), userFunc, mode);
    else attachInterrupt(digitalPinToInterrupt(pin), userFunc, mode);
}

template<uint8_t MS_IDX>
MeasuringStick20Bit* make_measurestick(uint8_t pin_clk, uint8_t pin_dat, InterruptType clk_int_type = INT)
{
    static MeasuringStick20Bit ms(pin_dat);
    static void (*func)() = [](){ms.clk_rising_edge();};
    pinMode(pin_clk, INPUT_PULLUP);
    pinMode(pin_dat, INPUT_PULLUP);
    attach_matching_interrupt(clk_int_type, pin_clk, func, RISING);
    return &ms;
}

MeasuringStick20Bit *ms[]{
#if MEASURINGSTICK_COUNT > 0
    make_measurestick<0>(MEASURINGSTICK0_CLK, MEASURINGSTICK0_DAT, MEASURINGSTICK0_CLK_INT_TYPE),
#endif
#if MEASURINGSTICK_COUNT > 1
    make_measurestick<1>(MEASURINGSTICK1_CLK, MEASURINGSTICK1_DAT, MEASURINGSTICK1_CLK_INT_TYPE),
#endif
#if MEASURINGSTICK_COUNT > 2
    make_measurestick<2>(MEASURINGSTICK2_CLK, MEASURINGSTICK2_DAT, MEASURINGSTICK2_CLK_INT_TYPE),
#endif
#if MEASURINGSTICK_COUNT > 3
    make_measurestick<3>(MEASURINGSTICK3_CLK, MEASURINGSTICK3_DAT, MEASURINGSTICK3_CLK_INT_TYPE),
#endif
};

template<uint8_t AXIS_IDX>
OneButton* make_axis_btn(uint8_t pin)
{
    static OneButton btn(pin, true, true);
    static void (*func1)() = [](){axis_button_short_click(AXIS_IDX);};
    static void (*func2)() = [](){axis_button_long_press(AXIS_IDX);};
    btn.attachClick(func1);
    btn.attachLongPressStart(func2);
    return &btn;
}

OneButton *axis_btn[]{
#if AXIS_COUNT > 0
    make_axis_btn<0>(AXIS0_BTNPIN),
#endif
#if AXIS_COUNT > 1
    make_axis_btn<1>(AXIS1_BTNPIN),
#endif
#if AXIS_COUNT > 2
    make_axis_btn<2>(AXIS2_BTNPIN),
#endif
#if AXIS_COUNT > 3
    make_axis_btn<3>(AXIS3_BTNPIN),
#endif
};

RotaryEncoder encoder(ROTARYENCODER_PIN1, ROTARYENCODER_PIN2);

LCDWIKI_KBV mainlcd(ILI9486, A3, A2, A1, A0, A4);

AxisGuiSegment axgui[]{
#if AXIS_COUNT > 0
    AxisGuiSegment(mainlcd, AXIS0_NAME, AXIS0_UNIT, 0 * HEIGHT_TOTAL, AXIS0_DECIMALS),
#endif
#if AXIS_COUNT > 1
    AxisGuiSegment(mainlcd, AXIS1_NAME, AXIS1_UNIT, 1 * HEIGHT_TOTAL, AXIS1_DECIMALS),
#endif
#if AXIS_COUNT > 2
    AxisGuiSegment(mainlcd, AXIS2_NAME, AXIS2_UNIT, 2 * HEIGHT_TOTAL, AXIS2_DECIMALS),
#endif
#if AXIS_COUNT > 3
    AxisGuiSegment(mainlcd, AXIS3_NAME, AXIS3_UNIT, 3 * HEIGHT_TOTAL, AXIS3_DECIMALS),
#endif
};

int32_t axis_offset[AXIS_COUNT];

uint8_t active_axis = 255;
uint8_t active_exp = 255;

int32_t get_axis_input_value(uint8_t axis)
{
    int32_t val1, val2;
    switch (axis)
    {
    case 0:
        val1 = ms[0]->get_hundredth_mm();
        return val1 != INT32_MAX ? 2 * val1 : INT32_MAX;
    case 1:
        val1 = ms[1]->get_hundredth_mm();
        val2 = ms[2]->get_hundredth_mm();
        if(val2 == INT32_MAX)
            val2 = 0;
        return val1 != INT32_MAX ? val1 + val2 : INT32_MAX;
    default:
        INT32_MAX;
    }
}

void axis_button_short_click(uint8_t axis)
{
    uint8_t new_active_axis = 255;
    uint8_t new_active_exp = 255;

    if(active_axis != axis)
    {
        new_active_axis = axis;
        new_active_exp = 3;
    }
    else if(active_exp > 0)
    {
        new_active_axis = axis;
        new_active_exp = active_exp - 1;
    }

    noInterrupts();
    active_axis = new_active_axis;
    active_exp = new_active_exp;
    interrupts();
}

void axis_button_long_press(uint8_t axis)
{
    axis_offset[axis] = -1 * get_axis_input_value(axis);
}

void encoder_moved()
{
    noInterrupts();
    encoder.tick();
    RotaryEncoder::Direction local_dir = encoder.getDirection();
    uint8_t local_active_axis = active_axis;
    uint8_t local_active_exp = active_exp;
    interrupts();

    if(local_dir == RotaryEncoder::Direction::NOROTATION)
        return;

    if(local_active_axis >= AXIS_COUNT)
        return;

    if (local_active_exp >= DIGITS)
        return;

    int32_t incr = int32pow(10, local_active_exp);
    if(local_dir == RotaryEncoder::Direction::COUNTERCLOCKWISE)
        incr *= -1;
    axis_offset[local_active_axis] += incr;
}

void setup()
{
    Serial.begin(9600);
    Serial.println("Hello World!");

    attach_matching_interrupt(PCINT, ROTARYENCODER_PIN1, encoder_moved, CHANGE);
    attach_matching_interrupt(PCINT, ROTARYENCODER_PIN2, encoder_moved, CHANGE);

    mainlcd.Init_LCD();
    mainlcd.Fill_Screen(BLACK);
}

void loop()
{
    for(uint8_t i = 0; i < AXIS_COUNT; i++)
    {
        for(uint8_t j = 0; j < AXIS_COUNT; j++)
            axis_btn[j]->tick();

        int32_t val = get_axis_input_value(i);
        axgui[i].set_value(val != INT32_MAX ? val + axis_offset[i]: INT32_MAX);
        axgui[i].set_markexp(active_axis == i ? active_exp : 255);
        axgui[i].redraw();
    }
}

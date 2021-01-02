#include <Arduino.h>
#include <PinChangeInterrupt.h>
#include <RotaryEncoder.h>
#include "MeasuringStick20Bit.h"
#include <LCDWIKI_GUI.h>
#include <LCDWIKI_KBV.h>

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

// Some colors
#define BLACK   0x0000
#define BLUE    0x001F
#define RED     0xF800
#define GREEN   0x07E0
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0
#define WHITE   0xFFFF

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

LCDWIKI_KBV mainlcd(ILI9486, A3, A2, A1, A0, A4);

int32_t int_pow(int32_t base, uint8_t exp)
{
    int32_t result = 1;
    while (exp)
    {
        if (exp % 2)
           result *= base;
        exp /= 2;
        base *= base;
    }
    return result;
}

#define LCD_CHAR_BASE_HEIGHT 8
#define LCD_CHAR_BASE_WIDTH 6
int16_t draw_segment(
    LCDWIKI_GUI &lcd, char name, String unit, int32_t val, 
    int16_t y, uint8_t markdigit = 255, uint8_t decimals = 2,
    uint8_t numlen = 5, uint8_t textsize = 7, int16_t valgap = 12
)
{
    lcd.Set_Text_Mode(0); // Draw background
    lcd.Set_Text_colour(RED);
    lcd.Set_Text_Back_colour(BLACK);

    uint8_t nametextsize = (textsize / 3) * 2;
    uint8_t unittextsize = (textsize / 3) * 1;
    uint8_t nameunitgap = (textsize % 3) * LCD_CHAR_BASE_HEIGHT;

    int16_t x_it = 5;
    int16_t y_val = y + 5;
    int16_t y_unit = y_val + nametextsize * LCD_CHAR_BASE_HEIGHT + nameunitgap;
    int16_t y_mark = y_val + textsize * LCD_CHAR_BASE_HEIGHT;
    int16_t y_end = y_mark + textsize * LCD_CHAR_BASE_HEIGHT / 4;
    // Draw axis name
    lcd.Set_Text_Size(nametextsize);
    lcd.Print_String(String(name), x_it, y_val);
    
    // Draw axis unit
    if (unit.length() > 2)
        unit = unit.substring(0, 2);
    lcd.Set_Text_Size(unittextsize);
    lcd.Print_String(unit, x_it, y_unit);

    x_it += 1 * nametextsize * LCD_CHAR_BASE_WIDTH + valgap;

    int32_t intval = val / int_pow(10, decimals);
    int32_t commaval = abs(val) % int_pow(10, decimals);
    
    lcd.Draw_Rectangle(0, y, lcd.Get_Display_Width() - 1, y_end);
    lcd.Fill_Rect(1, y_mark, lcd.Get_Display_Width() - 2, y_end - y_mark - 1, BLACK);

    lcd.Set_Text_Size(textsize);
    if (abs(intval) >= int_pow(10, numlen - decimals))
    {
        lcd.Print_String("ERROR", x_it, y_val);
        return y_end;
    }

    uint8_t intlen = 1u + numlen - decimals; // +1 for minus
    int16_t x_intval = x_it;
    lcd.Print_Number_Int(intval, x_intval, y_val, intlen, ' ', 10);
    x_it += intlen * textsize * LCD_CHAR_BASE_WIDTH;
    int16_t x_commachar = x_it - textsize * LCD_CHAR_BASE_WIDTH / 3;
    x_it += textsize * LCD_CHAR_BASE_WIDTH / 2;
    int16_t x_commaval = x_it;
    lcd.Print_Number_Int(commaval, x_commaval, y_val, decimals, '0', 10);
    lcd.Draw_Char(x_commachar, y_val, '.', RED, BLACK, textsize, 1);

    if(markdigit < numlen)
    {
        int16_t x_mark; 
        if(markdigit >= numlen - decimals)
        {
            x_mark = x_commaval + textsize * LCD_CHAR_BASE_WIDTH * (markdigit - (numlen - decimals));
        }
        else
        {
            x_mark = x_intval + textsize * LCD_CHAR_BASE_WIDTH * (markdigit + 1); // +1 for minus
        }
        lcd.Draw_Char(x_mark + textsize * LCD_CHAR_BASE_WIDTH / 4, y_mark, '^', RED, BLACK, textsize / 2, 1);
    }
    return y_end;
}

void setup()
{
    Serial.begin(9600);
    Serial.println("Hello World!");
    mainlcd.Init_LCD();
    mainlcd.Fill_Screen(BLACK);
}

uint8_t markit = 0;
void loop()
{
    markit = (markit + 1) % 5;
    draw_segment(mainlcd, 'X', "mm", -99999, 0, markit);
    draw_segment(mainlcd, 'Y', "mm", -99999, 100, markit);
    draw_segment(mainlcd, 'Z', "mm", -99999, 200, markit);

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

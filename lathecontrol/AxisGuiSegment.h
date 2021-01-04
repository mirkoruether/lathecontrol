#include <Arduino.h>
#include <LCDWIKI_GUI.h>

#define LCD_CHAR_BASE_HEIGHT 8
#define LCD_CHAR_BASE_WIDTH 6

#define BLACK   0x0000
#define BLUE    0x001F
#define RED     0xF800
#define GREEN   0x07E0
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0
#define WHITE   0xFFFF

#define DIGITS 5

#define TEXTSIZE_VALUE 7
#define TEXTSIZE_NAME ((TEXTSIZE_VALUE / 3) * 2)
#define TEXTSIZE_UNIT ((TEXTSIZE_VALUE / 3) * 1)
#define CHARWIDTH_VALUE (TEXTSIZE_VALUE * LCD_CHAR_BASE_WIDTH)
#define GAP_NAME_UNIT ((TEXTSIZE_VALUE % 3) * LCD_CHAR_BASE_HEIGHT)
#define GAP_BORDER_CONTENT 5

#define WIDTH_TOTAL 320
#define WIDTH_VALUE (6 * CHARWIDTH_VALUE + CHARWIDTH_VALUE / 3)

#define XPOS_NAMEUNIT (GAP_BORDER_CONTENT)
#define XPOS_VALUE (WIDTH_TOTAL - WIDTH_VALUE - GAP_BORDER_CONTENT)

#define HEIGHT_NAME (TEXTSIZE_NAME * LCD_CHAR_BASE_HEIGHT)
#define HEIGHT_UNIT (TEXTSIZE_UNIT * LCD_CHAR_BASE_HEIGHT)
#define HEIGHT_VALUE (TEXTSIZE_VALUE * LCD_CHAR_BASE_HEIGHT)
#define HEIGHT_MARK (TEXTSIZE_VALUE * LCD_CHAR_BASE_HEIGHT / 4)
#define HEIGHT_TOTAL (HEIGHT_VALUE + HEIGHT_MARK + 2 * GAP_BORDER_CONTENT)

template<typename val_t=int32_t, typename exp_t=uint8_t>
val_t int_pow(val_t base, exp_t exp)
{
    val_t result = 1;
    while (exp)
    {
        if (exp % 2)
           result *= base;
        exp /= 2;
        base *= base;
    }
    return result;
}

#define int32pow int_pow<int32_t, uint8_t>

class AxisGuiSegment
{
private:
    LCDWIKI_GUI &lcd;
    const char name;
    const String unit;
    const int16_t basey;
    const uint8_t decimals;
    int32_t _value;
    uint8_t _markdigit;

    bool redraw_needed_base = true;
    bool redraw_needed_value = true;
    bool redraw_needed_mark = true;

public:
    AxisGuiSegment(
        LCDWIKI_GUI &lcd, char name, String unit, int16_t basey, uint8_t decimals,
        int32_t initial_value = INT32_MAX, uint8_t initial_markdigit = 255
    ):
        lcd(lcd), name(name), unit(unit), basey(basey), decimals(decimals),
        _value(initial_value), _markdigit(initial_markdigit)
    {}

    bool set_value(int32_t newvalue)
    {
        noInterrupts();
        bool changed = _value != newvalue;
        if (changed)
        {
            _value = newvalue;
            redraw_needed_value = true;
        }
        interrupts();
        return changed;
    }

    bool set_markexp(uint8_t newmarkexp)
    {
        return set_markdigit(DIGITS - newmarkexp - 1);
    }

    bool set_markdigit(uint8_t newmarkdigit)
    {
        noInterrupts();
        bool changed = _markdigit != newmarkdigit;
        if (changed)
        {
            _markdigit = newmarkdigit;
            redraw_needed_mark = true;
        }
        interrupts();
        return changed;
    }

    void redraw(bool force = false)
    {
        if (force || redraw_needed_base)
            draw_base();
        if (force || redraw_needed_value)
            draw_value();
        if (force || redraw_needed_mark)
            draw_mark();
    }
private:
    // Draws border, name and unit
    void draw_base()
    {
        lcd.Set_Text_Mode(0); // Mode: Override background
        lcd.Set_Text_colour(RED);
        lcd.Set_Text_Back_colour(BLACK);

        // Draw axis name
        lcd.Set_Text_Size(TEXTSIZE_NAME);
        lcd.Print_String(String(name), XPOS_NAMEUNIT, basey + GAP_BORDER_CONTENT);

        // Draw axis unit
        String unitcut = unit.length() > 2 ? unit.substring(0, 2) : unit;
        lcd.Set_Text_Size(TEXTSIZE_UNIT);
        lcd.Print_String(unitcut, XPOS_NAMEUNIT, basey + GAP_BORDER_CONTENT + HEIGHT_NAME + GAP_NAME_UNIT);

        // Draw Border
        lcd.Draw_Rectangle(0, basey, WIDTH_TOTAL - 1, basey + HEIGHT_TOTAL - 1);
    }

    inline uint8_t get_char(int32_t val, uint8_t exp)
    {
        return 48 + ((abs(val) / int32pow(10, exp)) % 10);
    }

    void draw_value()
    {
        noInterrupts();
        int32_t value = _value;
        redraw_needed_value = false;
        interrupts();

        lcd.Set_Text_Mode(0); // Mode: Override background
        lcd.Set_Text_colour(RED);
        lcd.Set_Text_Back_colour(BLACK);
        lcd.Set_Text_Size(TEXTSIZE_VALUE);

        int16_t y = basey + GAP_BORDER_CONTENT;

        if (abs(value) >= int32pow(10, DIGITS))
        {
            lcd.Print_String("ERROR", XPOS_VALUE, y);
            return;
        }

        int16_t x_signchar = XPOS_VALUE;
        int16_t x_val = x_signchar + CHARWIDTH_VALUE;
        int16_t x_commachar = x_val + (DIGITS - decimals) * CHARWIDTH_VALUE;

        for (int i = 0; i < DIGITS; i++)
        {
            int16_t commaoffset = i < DIGITS - decimals ? 0 : CHARWIDTH_VALUE / 3;
            lcd.Draw_Char(
                x_val + i * CHARWIDTH_VALUE + commaoffset, y,
                get_char(value, DIGITS - i - 1),
                RED, BLACK, TEXTSIZE_VALUE, 0
            );
        }
        lcd.Draw_Char(x_signchar, y, value >= 0 ? '+' : '-', RED, BLACK, TEXTSIZE_VALUE, 0);
        lcd.Fill_Rect(x_commachar, y, 2 * TEXTSIZE_VALUE, LCD_CHAR_BASE_HEIGHT * TEXTSIZE_VALUE, BLACK);
        lcd.Fill_Rect(x_commachar, y + 6 * TEXTSIZE_VALUE, TEXTSIZE_VALUE, TEXTSIZE_VALUE, RED);
    }

    void draw_mark()
    {
        noInterrupts();
        uint8_t markdigit = _markdigit;
        redraw_needed_mark = false;
        interrupts();

        lcd.Fill_Rect(XPOS_VALUE, basey + HEIGHT_VALUE, WIDTH_VALUE - 2, HEIGHT_MARK, BLACK);
        if(markdigit < DIGITS)
        {
            int16_t commaoffset = markdigit < DIGITS - decimals ? 0 : CHARWIDTH_VALUE / 3;
            int16_t x_mark = XPOS_VALUE + commaoffset + CHARWIDTH_VALUE * (markdigit + 1); // +1 for sign character
            lcd.Draw_Char(x_mark + CHARWIDTH_VALUE / 4, basey + GAP_BORDER_CONTENT + HEIGHT_VALUE, '^', RED, BLACK, TEXTSIZE_VALUE / 2, 1);
        }
    }
};

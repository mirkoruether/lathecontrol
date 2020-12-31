#include <Arduino.h>

#define DEFAULT_TIMEOUT_MICROS 1000000UL

class MeasuringStick20Bit
{
private:
    uint32_t tempdata;
    uint32_t data;

    uint8_t bitcounter;

    unsigned long lastdata_micros;
    unsigned long lastbit_micros;

public:
    MeasuringStick20Bit(): 
        tempdata(0), data(0), bitcounter(0), 
        lastbit_micros(0), lastdata_micros(0)
    {}

    void next_bit(bool databit)
    {
        long currbit_micros = micros();

        if(currbit_micros - lastbit_micros > 10000)
        {
            tempdata = 0;
            bitcounter = 0;
        }

        if(databit) tempdata |= 1UL << bitcounter;

        bitcounter++;
        lastbit_micros = currbit_micros;

        if(bitcounter == 24)
        {
            data = tempdata;
            lastdata_micros = currbit_micros;
        }
    }

    inline bool is_mm()
    {
        return !is_inch();
    }

    inline bool is_inch()
    {
        return (data & (1L << 23)) > 0;
    }

    inline uint32_t get_raw_data()
    {
        return data;
    }

    inline uint32_t get_raw_unsigned_value()
    {
        return data & 0xFFFFFL;
    }

    inline int8_t get_sign()
    {
        return ((data & (1L << 20)) ? -1 : 1);
    }

    inline int32_t get_raw_signed_value()
    {
        return get_sign() * get_raw_unsigned_value();
    }

    inline bool is_outdated(unsigned long timeout_micros = DEFAULT_TIMEOUT_MICROS)
    {
        if (timeout_micros <= 0) return false;
        return (micros() - lastdata_micros) > timeout_micros;
    }

    int32_t get_hundredth_mm(unsigned long timeout_micros = DEFAULT_TIMEOUT_MICROS)
    {
        if(is_outdated(timeout_micros) || is_inch()) return INT32_MAX;
        return get_raw_signed_value();
    }

    int32_t get_half_mil(unsigned long timeout_micros = DEFAULT_TIMEOUT_MICROS)
    {
        if(is_outdated(timeout_micros) || is_mm()) return INT32_MAX;
        return get_raw_signed_value();
    }

    float calc_mm(unsigned long timeout_micros = DEFAULT_TIMEOUT_MICROS)
    {
        if(is_outdated(timeout_micros)) return NAN;
        return get_raw_signed_value() * (is_inch() ? 25.4 * 0.0005 : 0.01);
    }

    float calc_inch(unsigned long timeout_micros = DEFAULT_TIMEOUT_MICROS)
    {
        if(is_outdated(timeout_micros)) return NAN;
        return get_raw_signed_value() * (is_inch() ? 0.0005 : 0.01 / 25.4);
    }
};

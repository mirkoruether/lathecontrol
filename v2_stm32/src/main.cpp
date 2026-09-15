#include <Arduino.h>
#include "SPI.h"
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <ILI9488.h>

#define MOSI2     PB15
#define MISO2     PB14
#define SCLK2     PB13
#define SS2       PB12

#define TFT_CS    PC6
#define TFT_DC    PC8
#define TFT_RST   PC7

ILI9488 tft = ILI9488(TFT_CS, TFT_DC, TFT_RST);

void setup() {
    Serial.begin(9600);
    Serial.println("ILI9488 Test!");

    SPI.setMOSI(PB15);
    SPI.setMISO(PB14);
    SPI.setSCLK(PB13);
    SPI.setSSEL(PB12);

    tft.begin();

    // read diagnostics (optional but can help debug problems)
    uint8_t x = tft.readcommand8(ILI9488_RDMODE);
    Serial.print("Display Power Mode: 0x"); Serial.println(x, HEX);
    x = tft.readcommand8(ILI9488_RDMADCTL);
    Serial.print("MADCTL Mode: 0x"); Serial.println(x, HEX);
    x = tft.readcommand8(ILI9488_RDPIXFMT);
    Serial.print("Pixel Format: 0x"); Serial.println(x, HEX);
    x = tft.readcommand8(ILI9488_RDIMGFMT);
    Serial.print("Image Format: 0x"); Serial.println(x, HEX);
    x = tft.readcommand8(ILI9488_RDSELFDIAG);
    Serial.print("Self Diagnostic: 0x"); Serial.println(x, HEX);
}

void loop() {
    for(uint8_t rot = 0; rot < 4; rot++)
    {
        tft.fillScreen(ILI9488_BLACK);
        tft.setRotation(rot);
        tft.setCursor(0, 0);
        tft.setTextColor(ILI9488_WHITE);
        tft.setTextSize(4);

        tft.println("Hello World!");
        delay(2000);
    }
}

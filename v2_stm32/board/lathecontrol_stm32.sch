EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1250 1050 1150 700 
U 60265C89
F0 "Measurestick Input 1" 50
F1 "measurestick_single.sch" 50
F2 "DAT" I R 2400 1250 50 
F3 "CLK" I R 2400 1550 50 
$EndSheet
$Sheet
S 1250 2050 1150 700 
U 60265F6D
F0 "Measurestick Input 2" 50
F1 "measurestick_single.sch" 50
F2 "DAT" I R 2400 2250 50 
F3 "CLK" I R 2400 2550 50 
$EndSheet
$Sheet
S 1250 3050 1150 700 
U 60265FC9
F0 "Measurestick Input 3" 50
F1 "measurestick_single.sch" 50
F2 "DAT" I R 2400 3250 50 
F3 "CLK" I R 2400 3550 50 
$EndSheet
$Sheet
S 1250 4050 1150 700 
U 6026601C
F0 "Measurestick Input 4" 50
F1 "measurestick_single.sch" 50
F2 "DAT" I R 2400 4250 50 
F3 "CLK" I R 2400 4550 50 
$EndSheet
$Comp
L power:GND #PWR?
U 1 1 6028B775
P 5600 5800
F 0 "#PWR?" H 5600 5550 50  0001 C CNN
F 1 "GND" H 5605 5627 50  0000 C CNN
F 2 "" H 5600 5800 50  0001 C CNN
F 3 "" H 5600 5800 50  0001 C CNN
	1    5600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6028E24A
P 5650 2100
F 0 "#PWR?" H 5650 1950 50  0001 C CNN
F 1 "+3.3V" H 5665 2273 50  0000 C CNN
F 2 "" H 5650 2100 50  0001 C CNN
F 3 "" H 5650 2100 50  0001 C CNN
	1    5650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2100 5600 2150
Wire Wire Line
	5500 2100 5500 2150
Wire Wire Line
	5500 2100 5400 2100
Wire Wire Line
	5400 2100 5400 2150
Connection ~ 5500 2100
Wire Wire Line
	5600 2100 5650 2100
Wire Wire Line
	5700 2100 5700 2150
Connection ~ 5600 2100
Wire Wire Line
	5700 2100 5800 2100
Wire Wire Line
	5800 2100 5800 2150
Connection ~ 5700 2100
$Comp
L power:+3.3V #PWR?
U 1 1 602914E4
P 5650 1100
F 0 "#PWR?" H 5650 950 50  0001 C CNN
F 1 "+3.3V" H 5665 1273 50  0000 C CNN
F 2 "" H 5650 1100 50  0001 C CNN
F 3 "" H 5650 1100 50  0001 C CNN
	1    5650 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60292021
P 5650 1500
F 0 "#PWR?" H 5650 1250 50  0001 C CNN
F 1 "GND" H 5655 1327 50  0000 C CNN
F 2 "" H 5650 1500 50  0001 C CNN
F 3 "" H 5650 1500 50  0001 C CNN
	1    5650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602977E9
P 5400 1300
AR Path="/6025D9E2/602977E9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/602977E9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/602977E9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/602977E9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/602977E9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/602977E9" Ref="C?"  Part="1" 
AR Path="/60265C89/602977E9" Ref="C?"  Part="1" 
AR Path="/60265F6D/602977E9" Ref="C?"  Part="1" 
AR Path="/60265FC9/602977E9" Ref="C?"  Part="1" 
AR Path="/6026601C/602977E9" Ref="C?"  Part="1" 
AR Path="/602977E9" Ref="C?"  Part="1" 
F 0 "C?" H 5515 1346 50  0000 L CNN
F 1 "100n" H 5515 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5400 1300 50  0001 C CNN
F 4 "C14663" H 5400 1300 50  0001 C CNN "LCSC"
	1    5400 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6029BBC1
P 4950 1300
AR Path="/6025D9E2/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/6029BBC1" Ref="C?"  Part="1" 
AR Path="/60265C89/6029BBC1" Ref="C?"  Part="1" 
AR Path="/60265F6D/6029BBC1" Ref="C?"  Part="1" 
AR Path="/60265FC9/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6026601C/6029BBC1" Ref="C?"  Part="1" 
AR Path="/6029BBC1" Ref="C?"  Part="1" 
F 0 "C?" H 5065 1346 50  0000 L CNN
F 1 "100n" H 5065 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 4950 1300 50  0001 C CNN
F 4 "C14663" H 4950 1300 50  0001 C CNN "LCSC"
	1    4950 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6029BFB8
P 5850 1300
AR Path="/6025D9E2/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/6029BFB8" Ref="C?"  Part="1" 
AR Path="/60265C89/6029BFB8" Ref="C?"  Part="1" 
AR Path="/60265F6D/6029BFB8" Ref="C?"  Part="1" 
AR Path="/60265FC9/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6026601C/6029BFB8" Ref="C?"  Part="1" 
AR Path="/6029BFB8" Ref="C?"  Part="1" 
F 0 "C?" H 5965 1346 50  0000 L CNN
F 1 "100n" H 5965 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5850 1300 50  0001 C CNN
F 4 "C14663" H 5850 1300 50  0001 C CNN "LCSC"
	1    5850 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6029C42F
P 6300 1300
AR Path="/6025D9E2/6029C42F" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/6029C42F" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/6029C42F" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/6029C42F" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/6029C42F" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/6029C42F" Ref="C?"  Part="1" 
AR Path="/60265C89/6029C42F" Ref="C?"  Part="1" 
AR Path="/60265F6D/6029C42F" Ref="C?"  Part="1" 
AR Path="/60265FC9/6029C42F" Ref="C?"  Part="1" 
AR Path="/6026601C/6029C42F" Ref="C?"  Part="1" 
AR Path="/6029C42F" Ref="C?"  Part="1" 
F 0 "C?" H 6415 1346 50  0000 L CNN
F 1 "100n" H 6415 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6338 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 6300 1300 50  0001 C CNN
F 4 "C14663" H 6300 1300 50  0001 C CNN "LCSC"
	1    6300 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6029DE54
P 4500 1300
AR Path="/6025D9E2/6029DE54" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/6029DE54" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/6029DE54" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/6029DE54" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/6029DE54" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/6029DE54" Ref="C?"  Part="1" 
AR Path="/60265C89/6029DE54" Ref="C?"  Part="1" 
AR Path="/60265F6D/6029DE54" Ref="C?"  Part="1" 
AR Path="/60265FC9/6029DE54" Ref="C?"  Part="1" 
AR Path="/6026601C/6029DE54" Ref="C?"  Part="1" 
AR Path="/6029DE54" Ref="C?"  Part="1" 
F 0 "C?" H 4615 1346 50  0000 L CNN
F 1 "100n" H 4615 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4538 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 4500 1300 50  0001 C CNN
F 4 "C14663" H 4500 1300 50  0001 C CNN "LCSC"
	1    4500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1450 4500 1500
Wire Wire Line
	4500 1500 4950 1500
Wire Wire Line
	6300 1500 6300 1450
Wire Wire Line
	4950 1450 4950 1500
Connection ~ 4950 1500
Wire Wire Line
	4950 1500 5400 1500
Wire Wire Line
	5850 1450 5850 1500
Connection ~ 5850 1500
Wire Wire Line
	5850 1500 6300 1500
Wire Wire Line
	4500 1150 4500 1100
Wire Wire Line
	4500 1100 4950 1100
Wire Wire Line
	6300 1100 6300 1150
Wire Wire Line
	5850 1150 5850 1100
Connection ~ 5850 1100
Wire Wire Line
	5850 1100 6300 1100
Wire Wire Line
	4950 1150 4950 1100
Connection ~ 4950 1100
Wire Wire Line
	4950 1100 5400 1100
$Comp
L Device:Crystal Y?
U 1 1 602A5242
P 3800 4150
F 0 "Y?" H 3800 4418 50  0000 C CNN
F 1 "8MHz" H 3800 4327 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 3800 4150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809192319_Yangxing-Tech-X50328MSB2GI_C115962.pdf" H 3800 4150 50  0001 C CNN
F 4 "C115962" H 3800 4150 50  0001 C CNN "LCSC"
	1    3800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602A6EB0
P 3550 4400
AR Path="/6025D9E2/602A6EB0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/602A6EB0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/602A6EB0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/602A6EB0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/602A6EB0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/602A6EB0" Ref="C?"  Part="1" 
AR Path="/60265C89/602A6EB0" Ref="C?"  Part="1" 
AR Path="/60265F6D/602A6EB0" Ref="C?"  Part="1" 
AR Path="/60265FC9/602A6EB0" Ref="C?"  Part="1" 
AR Path="/6026601C/602A6EB0" Ref="C?"  Part="1" 
AR Path="/602A6EB0" Ref="C?"  Part="1" 
F 0 "C?" H 3665 4446 50  0000 L CNN
F 1 "30p" H 3665 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3588 4250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809300925_Samsung-Electro-Mechanics-CL10C300JB8NNNC_C22397.pdf" H 3550 4400 50  0001 C CNN
F 4 "C22397" H 3550 4400 50  0001 C CNN "LCSC"
	1    3550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4250 3550 4150
Wire Wire Line
	3550 4150 3650 4150
Wire Wire Line
	3950 4150 4050 4150
Wire Wire Line
	4050 4150 4050 3750
Connection ~ 4050 4150
Wire Wire Line
	4900 3650 3550 3650
Wire Wire Line
	3550 3650 3550 4150
Connection ~ 3550 4150
$Comp
L power:GND #PWR?
U 1 1 602ADD83
P 3550 4550
F 0 "#PWR?" H 3550 4300 50  0001 C CNN
F 1 "GND" H 3555 4377 50  0000 C CNN
F 2 "" H 3550 4550 50  0001 C CNN
F 3 "" H 3550 4550 50  0001 C CNN
	1    3550 4550
	1    0    0    -1  
$EndComp
Text Label 4550 3650 0    50   ~ 0
OSC_IN
Text Label 4550 3750 0    50   ~ 0
OSC_OUT
Wire Wire Line
	4050 3750 4900 3750
Text GLabel 6300 3650 2    50   Input ~ 0
SWDIO
Text GLabel 6300 3750 2    50   Input ~ 0
SWCLK
Text GLabel 7400 3550 2    50   Input ~ 0
USB_D+
Text GLabel 7400 3450 2    50   Input ~ 0
USB_D-
Wire Wire Line
	7400 3450 6300 3450
Wire Wire Line
	7400 3550 7250 3550
$Comp
L power:+3.3V #PWR?
U 1 1 602EBCE5
P 7250 3050
F 0 "#PWR?" H 7250 2900 50  0001 C CNN
F 1 "+3.3V" H 7265 3223 50  0000 C CNN
F 2 "" H 7250 3050 50  0001 C CNN
F 3 "" H 7250 3050 50  0001 C CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 602EC5C6
P 7250 3200
F 0 "R?" H 7320 3246 50  0000 L CNN
F 1 "1k5" H 7320 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7180 3200 50  0001 C CNN
F 3 "~" H 7250 3200 50  0001 C CNN
F 4 "C22843" H 7250 3200 50  0001 C CNN "LCSC"
	1    7250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3350 7250 3550
Connection ~ 7250 3550
Wire Wire Line
	7250 3550 6300 3550
$Comp
L power:GND #PWR?
U 1 1 602AE06E
P 4050 4550
F 0 "#PWR?" H 4050 4300 50  0001 C CNN
F 1 "GND" H 4055 4377 50  0000 C CNN
F 2 "" H 4050 4550 50  0001 C CNN
F 3 "" H 4050 4550 50  0001 C CNN
	1    4050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4150 4050 4250
$Comp
L Device:C C?
U 1 1 602A8A25
P 4050 4400
AR Path="/6025D9E2/602A8A25" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/602A8A25" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/602A8A25" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/602A8A25" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/602A8A25" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/602A8A25" Ref="C?"  Part="1" 
AR Path="/60265C89/602A8A25" Ref="C?"  Part="1" 
AR Path="/60265F6D/602A8A25" Ref="C?"  Part="1" 
AR Path="/60265FC9/602A8A25" Ref="C?"  Part="1" 
AR Path="/6026601C/602A8A25" Ref="C?"  Part="1" 
AR Path="/602A8A25" Ref="C?"  Part="1" 
F 0 "C?" H 4165 4446 50  0000 L CNN
F 1 "30p" H 4165 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 4250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809300925_Samsung-Electro-Mechanics-CL10C300JB8NNNC_C22397.pdf" H 4050 4400 50  0001 C CNN
F 4 "C22397" H 4050 4400 50  0001 C CNN "LCSC"
	1    4050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5400 1500
Connection ~ 5400 1500
Wire Wire Line
	5400 1500 5650 1500
Wire Wire Line
	5400 1150 5400 1100
Connection ~ 5400 1100
Wire Wire Line
	5400 1100 5650 1100
Text GLabel 4900 2350 0    50   Input ~ 0
NRST
Text GLabel 6550 4250 2    50   Input ~ 0
TRACE_SWO
Text GLabel 4900 2550 0    50   Input ~ 0
BOOT0
$Sheet
S 1250 5800 950  1300
U 60278C87
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Comp
L MCU_ST_STM32F1:STM32F103RBTx U?
U 1 1 602AD02E
P 5600 3950
F 0 "U?" H 5950 2150 50  0000 C CNN
F 1 "STM32F103RBTx" H 6200 2050 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5000 2250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 5600 3950 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2100 5600 2100
Connection ~ 5650 2100
Wire Wire Line
	5650 2100 5700 2100
Wire Wire Line
	5800 2100 5900 2100
Wire Wire Line
	5900 2100 5900 2150
Connection ~ 5800 2100
Wire Wire Line
	5600 5800 5500 5800
Wire Wire Line
	5400 5800 5400 5750
Wire Wire Line
	5500 5750 5500 5800
Connection ~ 5500 5800
Wire Wire Line
	5500 5800 5400 5800
Wire Wire Line
	5600 5750 5600 5800
Connection ~ 5600 5800
Wire Wire Line
	5600 5800 5700 5800
Wire Wire Line
	5700 5800 5700 5750
Wire Wire Line
	5700 5800 5800 5800
Wire Wire Line
	5800 5800 5800 5750
Connection ~ 5700 5800
$Comp
L Device:C C?
U 1 1 602E1A11
P 6750 1300
AR Path="/6025D9E2/602E1A11" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/602E1A11" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/602E1A11" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/602E1A11" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/602E1A11" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/602E1A11" Ref="C?"  Part="1" 
AR Path="/60265C89/602E1A11" Ref="C?"  Part="1" 
AR Path="/60265F6D/602E1A11" Ref="C?"  Part="1" 
AR Path="/60265FC9/602E1A11" Ref="C?"  Part="1" 
AR Path="/6026601C/602E1A11" Ref="C?"  Part="1" 
AR Path="/602E1A11" Ref="C?"  Part="1" 
F 0 "C?" H 6865 1346 50  0000 L CNN
F 1 "100n" H 6865 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6788 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 6750 1300 50  0001 C CNN
F 4 "C14663" H 6750 1300 50  0001 C CNN "LCSC"
	1    6750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1500 6750 1500
Wire Wire Line
	6750 1500 6750 1450
Connection ~ 6300 1500
Wire Wire Line
	6300 1100 6750 1100
Wire Wire Line
	6750 1100 6750 1150
Connection ~ 6300 1100
Connection ~ 5650 1100
Wire Wire Line
	5650 1100 5850 1100
Connection ~ 5650 1500
Wire Wire Line
	5650 1500 5850 1500
Text GLabel 6550 4350 2    50   Input ~ 0
SPI_SCK
Text GLabel 6300 4450 2    50   Input ~ 0
SPI_MISO
Text GLabel 6300 4550 2    50   Input ~ 0
SPI_MOSI
Text GLabel 6300 4750 2    50   Input ~ 0
SPI_SS1
Text GLabel 6300 4850 2    50   Input ~ 0
I2C_SCL
Text GLabel 6300 4950 2    50   Input ~ 0
I2C_SDA
Text GLabel 6300 5050 2    50   Input ~ 0
UART_TX
Text GLabel 6300 5150 2    50   Input ~ 0
UART_RX
Text GLabel 6300 5350 2    50   Input ~ 0
DISPL_SCK
Text GLabel 6300 5450 2    50   Input ~ 0
DISPL_MISO
Text GLabel 6300 4050 2    50   Input ~ 0
MS4_CLK
Text GLabel 6300 4150 2    50   Input ~ 0
MS4_DAT
Text GLabel 2400 4550 2    50   Input ~ 0
MS3_CLK
Text GLabel 2400 4250 2    50   Input ~ 0
MS3_DAT
Text GLabel 6300 2550 2    50   Input ~ 0
MS1_CLK
Text GLabel 6300 2650 2    50   Input ~ 0
MS1_DAT
Text GLabel 6300 2750 2    50   Input ~ 0
MS2_CLK
Text GLabel 6300 2850 2    50   Input ~ 0
MS2_DAT
Text GLabel 6300 2950 2    50   Input ~ 0
MS3_CLK
Text GLabel 6300 3050 2    50   Input ~ 0
MS3_DAT
Text GLabel 2400 1550 2    50   Input ~ 0
MS1_CLK
Text GLabel 2400 1250 2    50   Input ~ 0
MS1_DAT
Text GLabel 2400 2550 2    50   Input ~ 0
MS2_CLK
Text GLabel 2400 2250 2    50   Input ~ 0
MS2_DAT
Text GLabel 2400 3550 2    50   Input ~ 0
MS3_CLK
Text GLabel 2400 3250 2    50   Input ~ 0
MS3_DAT
Text GLabel 6300 4650 2    50   Input ~ 0
SPI_SS0
Wire Wire Line
	6550 4250 6450 4250
Wire Wire Line
	6450 4250 6450 4350
Wire Wire Line
	6450 4350 6550 4350
Text GLabel 6300 5550 2    50   Input ~ 0
DISPL_MOSI
Text GLabel 6300 5250 2    50   Input ~ 0
DISPL_T_IRQ
Wire Wire Line
	6450 4350 6300 4350
Connection ~ 6450 4350
Text GLabel 4900 4650 0    50   Input ~ 0
DISPL_CS
Text GLabel 4900 4750 0    50   Input ~ 0
DISPL_RST
Text GLabel 4900 4850 0    50   Input ~ 0
DISPL_DC
Text GLabel 4900 4950 0    50   Input ~ 0
DISPL_T_CS
Text GLabel 6300 3850 2    50   Input ~ 0
BTN4
Text GLabel 4900 5050 0    50   Input ~ 0
BTN3
Text GLabel 4900 5150 0    50   Input ~ 0
BTN2
Text GLabel 4900 5250 0    50   Input ~ 0
BTN1
Text GLabel 4900 5350 0    50   Input ~ 0
ROT1
Text GLabel 4900 4050 0    50   Input ~ 0
ADC1
Text GLabel 4900 4150 0    50   Input ~ 0
ADC2
Text GLabel 4900 4250 0    50   Input ~ 0
ADC3
Text GLabel 4900 4350 0    50   Input ~ 0
ADC4
Text GLabel 6300 3150 2    50   Input ~ 0
ENC_BTN
Text GLabel 6300 3250 2    50   Input ~ 0
ENC_1
Text GLabel 6300 3350 2    50   Input ~ 0
ENC_2
Text GLabel 4900 5450 0    50   Input ~ 0
GPIO1
Text GLabel 4900 5550 0    50   Input ~ 0
GPIO2
$EndSCHEMATC

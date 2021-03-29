EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Isolator:6N137 U?
U 1 1 60598E29
P 2350 1900
F 0 "U?" H 2350 2367 50  0000 C CNN
F 1 "6N137" H 2350 2276 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2350 1400 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-0940EN" H 1500 2450 50  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6059A0D3
P 1850 1900
F 0 "R?" V 1643 1900 50  0000 C CNN
F 1 "180" V 1734 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1780 1900 50  0001 C CNN
F 3 "~" H 1850 1900 50  0001 C CNN
F 4 "C22828" V 1850 1900 50  0001 C CNN "LCSC"
	1    1850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1900 2050 1900
$Comp
L power:GND #PWR?
U 1 1 6059A773
P 2000 2150
F 0 "#PWR?" H 2000 1900 50  0001 C CNN
F 1 "GND" H 2005 1977 50  0000 C CNN
F 2 "" H 2000 2150 50  0001 C CNN
F 3 "" H 2000 2150 50  0001 C CNN
	1    2000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2100 2000 2100
Wire Wire Line
	2000 2100 2000 2150
Text GLabel 1700 1900 0    50   Input ~ 0
PWM_OUT
$Comp
L Device:C C?
U 1 1 605A53CA
P 3100 1900
AR Path="/6025D9E2/605A53CA" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/605A53CA" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/605A53CA" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/605A53CA" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/605A53CA" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/605A53CA" Ref="C?"  Part="1" 
AR Path="/60265C89/605A53CA" Ref="C?"  Part="1" 
AR Path="/60265F6D/605A53CA" Ref="C?"  Part="1" 
AR Path="/60265FC9/605A53CA" Ref="C?"  Part="1" 
AR Path="/6026601C/605A53CA" Ref="C?"  Part="1" 
AR Path="/605A53CA" Ref="C?"  Part="1" 
AR Path="/60592617/605A53CA" Ref="C?"  Part="1" 
F 0 "C?" H 3215 1946 50  0000 L CNN
F 1 "100n" H 3215 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 3100 1900 50  0001 C CNN
F 4 "C14663" H 3100 1900 50  0001 C CNN "LCSC"
	1    3100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1750 3100 1700
Wire Wire Line
	3100 1700 2650 1700
Wire Wire Line
	2650 1900 2850 1900
Wire Wire Line
	2850 1900 2850 2300
Wire Wire Line
	2850 2300 3750 2300
Text Notes 2700 1650 0    50   ~ 0
Max 7V\n
$Comp
L Amplifier_Operational:LM2904 U?
U 1 1 605AA82E
P 4050 2400
F 0 "U?" H 4050 2767 50  0000 C CNN
F 1 "LM2904" H 4050 2676 50  0000 C CNN
F 2 "" H 4050 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 4050 2400 50  0001 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM2904 U?
U 2 1 605ADFDF
P 4050 3150
F 0 "U?" H 4050 3517 50  0000 C CNN
F 1 "LM2904" H 4050 3426 50  0000 C CNN
F 2 "" H 4050 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 4050 3150 50  0001 C CNN
	2    4050 3150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM2904 U?
U 3 1 605AFC10
P 3950 1300
F 0 "U?" H 3908 1346 50  0000 L CNN
F 1 "LM2904" H 3908 1255 50  0000 L CNN
F 2 "" H 3950 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 3950 1300 50  0001 C CNN
	3    3950 1300
	1    0    0    -1  
$EndComp
NoConn ~ 3750 3050
NoConn ~ 3750 3250
NoConn ~ 4350 3150
$EndSCHEMATC

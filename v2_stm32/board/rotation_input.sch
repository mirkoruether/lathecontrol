EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3600 1450 2    50   Output ~ 0
DAT
$Comp
L Lathecontrol_STM32:Everlight_Elec_EL357N U5
U 1 1 60817786
P 3300 1550
F 0 "U5" H 3300 1875 50  0000 C CNN
F 1 "Everlight_Elec_EL357N" H 3300 1784 50  0000 C CNN
F 2 "Lathecontrol_STM32:SOP-4_4.1x4.4x2.54P" H 3100 1350 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-EL357N-B-TA-G_C6649.pdf" H 3300 1550 50  0001 L CNN
F 4 "C6649" H 3300 1550 50  0001 C CNN "LCSC"
	1    3300 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR089
U 1 1 6034BC3E
P 3600 1650
F 0 "#PWR089" H 3600 1400 50  0001 C CNN
F 1 "GND" H 3605 1477 50  0000 C CNN
F 2 "" H 3600 1650 50  0001 C CNN
F 3 "" H 3600 1650 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 60328B9E
P 2900 1950
F 0 "Q1" H 3091 1996 50  0000 L CNN
F 1 "MMBT3904" H 3091 1905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 1875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 2900 1950 50  0001 L CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1650 3000 1750
$Comp
L Device:R R23
U 1 1 6032C873
P 2550 1450
F 0 "R23" V 2343 1450 50  0000 C CNN
F 1 "1k2" V 2434 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2480 1450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0805W8F1201T5E_C17379.pdf" H 2550 1450 50  0001 C CNN
F 4 "C17379" V 2550 1450 50  0001 C CNN "LCSC"
	1    2550 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1450 3000 1450
$Comp
L Connector:Conn_01x04_Male J13
U 1 1 6032E605
P 4600 1750
F 0 "J13" H 4700 1450 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4700 1350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 4600 1750 50  0001 C CNN
F 3 "~" H 4600 1750 50  0001 C CNN
	1    4600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2150 3000 2250
Text Label 1850 1950 2    50   ~ 0
ROTIN_DAT
Text Label 1850 2250 2    50   ~ 0
ROTIN_GND
$Comp
L Device:C C?
U 1 1 60340E1E
P 2050 1650
AR Path="/6025D9E2/60340E1E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/60340E1E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/60340E1E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/60340E1E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/60340E1E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/60340E1E" Ref="C?"  Part="1" 
AR Path="/60265C89/60340E1E" Ref="C?"  Part="1" 
AR Path="/60265F6D/60340E1E" Ref="C?"  Part="1" 
AR Path="/60265FC9/60340E1E" Ref="C?"  Part="1" 
AR Path="/6026601C/60340E1E" Ref="C?"  Part="1" 
AR Path="/60340E1E" Ref="C?"  Part="1" 
AR Path="/604E4D29/60340E1E" Ref="C22"  Part="1" 
F 0 "C22" H 2165 1696 50  0000 L CNN
F 1 "100n" H 2165 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2088 1500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 2050 1650 50  0001 C CNN
F 4 "C14663" H 2050 1650 50  0001 C CNN "LCSC"
	1    2050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1450 2050 1450
Wire Wire Line
	2050 1450 2050 1500
Connection ~ 2050 1450
Wire Wire Line
	2050 1450 2400 1450
Wire Wire Line
	2050 1800 2050 2250
Wire Wire Line
	2050 2250 3000 2250
Wire Wire Line
	1850 1950 2400 1950
$Comp
L Device:R R?
U 1 1 6037DC52
P 2550 1950
AR Path="/6025D9E2/6037DC52" Ref="R?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/6037DC52" Ref="R?"  Part="1" 
AR Path="/6025D9E2/60265A76/6037DC52" Ref="R?"  Part="1" 
AR Path="/6025D9E2/60265B58/6037DC52" Ref="R?"  Part="1" 
AR Path="/6025D9E2/60265BB4/6037DC52" Ref="R?"  Part="1" 
AR Path="/6025D9E2/60265C25/6037DC52" Ref="R?"  Part="1" 
AR Path="/60265C89/6037DC52" Ref="R?"  Part="1" 
AR Path="/60265F6D/6037DC52" Ref="R?"  Part="1" 
AR Path="/60265FC9/6037DC52" Ref="R?"  Part="1" 
AR Path="/6026601C/6037DC52" Ref="R?"  Part="1" 
AR Path="/604E4D29/6037DC52" Ref="R24"  Part="1" 
F 0 "R24" V 2750 1950 50  0000 C CNN
F 1 "13k" V 2650 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 1950 50  0001 C CNN
F 3 "~" H 2550 1950 50  0001 C CNN
F 4 "C22797" H 2550 1950 50  0001 C CNN "LCSC"
	1    2550 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 2250 2050 2250
Connection ~ 2050 2250
Text Label 4800 1650 0    50   ~ 0
ROTIN_GND
Text Label 1850 1450 2    50   ~ 0
ROTIN_PWR
Text Label 4800 1950 0    50   ~ 0
ROTIN_PWR
Text Label 4800 1850 0    50   ~ 0
ROTIN_DAT
NoConn ~ 4800 1750
$EndSCHEMATC

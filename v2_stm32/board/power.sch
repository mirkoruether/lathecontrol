EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Device:C C?
U 1 1 6046279B
P 5050 2600
AR Path="/6025D9E2/6046279B" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/6046279B" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/6046279B" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/6046279B" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/6046279B" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/6046279B" Ref="C?"  Part="1" 
AR Path="/60265C89/6046279B" Ref="C?"  Part="1" 
AR Path="/60265F6D/6046279B" Ref="C?"  Part="1" 
AR Path="/60265FC9/6046279B" Ref="C?"  Part="1" 
AR Path="/6026601C/6046279B" Ref="C?"  Part="1" 
AR Path="/6046279B" Ref="C?"  Part="1" 
AR Path="/60278C87/6046279B" Ref="C16"  Part="1" 
F 0 "C16" V 5300 2600 50  0000 C CNN
F 1 "30p" V 5200 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5088 2450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809300925_Samsung-Electro-Mechanics-CL10C300JB8NNNC_C22397.pdf" H 5050 2600 50  0001 C CNN
F 4 "C22397" H 5050 2600 50  0001 C CNN "LCSC"
	1    5050 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 604556A0
P 2700 4750
AR Path="/6025D9E2/604556A0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/604556A0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/604556A0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/604556A0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/604556A0" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/604556A0" Ref="C?"  Part="1" 
AR Path="/60265C89/604556A0" Ref="C?"  Part="1" 
AR Path="/60265F6D/604556A0" Ref="C?"  Part="1" 
AR Path="/60265FC9/604556A0" Ref="C?"  Part="1" 
AR Path="/6026601C/604556A0" Ref="C?"  Part="1" 
AR Path="/604556A0" Ref="C?"  Part="1" 
AR Path="/60278C87/604556A0" Ref="C19"  Part="1" 
F 0 "C19" H 2815 4796 50  0000 L CNN
F 1 "10u" H 2815 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31A106KBHNNNE_C13585.pdf" H 2700 4750 50  0001 C CNN
F 4 "C13585" H 2700 4750 50  0001 C CNN "LCSC"
	1    2700 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604521DB
P 2950 1950
AR Path="/6025D9E2/604521DB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/604521DB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/604521DB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/604521DB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/604521DB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/604521DB" Ref="C?"  Part="1" 
AR Path="/60265C89/604521DB" Ref="C?"  Part="1" 
AR Path="/60265F6D/604521DB" Ref="C?"  Part="1" 
AR Path="/60265FC9/604521DB" Ref="C?"  Part="1" 
AR Path="/6026601C/604521DB" Ref="C?"  Part="1" 
AR Path="/604521DB" Ref="C?"  Part="1" 
AR Path="/60278C87/604521DB" Ref="C14"  Part="1" 
F 0 "C14" H 3065 1996 50  0000 L CNN
F 1 "10u" H 3065 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2988 1800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31A106KBHNNNE_C13585.pdf" H 2950 1950 50  0001 C CNN
F 4 "C13585" H 2950 1950 50  0001 C CNN "LCSC"
	1    2950 1950
	1    0    0    -1  
$EndComp
Connection ~ 6550 1650
Connection ~ 5250 2850
Wire Wire Line
	5250 2600 5250 2850
Wire Wire Line
	4850 2600 4850 2850
Connection ~ 4850 2600
Connection ~ 4850 2850
Wire Wire Line
	4800 2850 4850 2850
Wire Wire Line
	4850 2850 4900 2850
Wire Wire Line
	4850 1850 4850 2600
Wire Wire Line
	4750 1850 4850 1850
Connection ~ 5850 1650
Wire Wire Line
	6550 2850 5250 2850
Wire Wire Line
	6550 1650 6550 2850
Wire Wire Line
	5850 1650 6250 1650
Wire Wire Line
	4450 2850 4450 2950
Wire Wire Line
	4500 2850 4450 2850
$Comp
L Device:R R17
U 1 1 60354B49
P 4650 2850
F 0 "R17" V 4550 2850 50  0000 C CNN
F 1 "24k" V 4450 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 2850 50  0001 C CNN
F 3 "~" H 4650 2850 50  0001 C CNN
F 4 "C23352" V 4650 2850 50  0001 C CNN "LCSC"
	1    4650 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 60291DA0
P 2300 4750
F 0 "R20" H 2370 4796 50  0000 L CNN
F 1 "240" H 2370 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2230 4750 50  0001 C CNN
F 3 "~" H 2300 4750 50  0001 C CNN
F 4 "C23350" H 2300 4750 50  0001 C CNN "LCSC"
	1    2300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1650 5850 1700
Wire Wire Line
	5650 1650 5850 1650
Wire Wire Line
	5200 1650 5350 1650
Wire Wire Line
	5200 1650 5200 1700
Connection ~ 5200 1650
Wire Wire Line
	4750 1650 5200 1650
Wire Wire Line
	5200 1450 5150 1450
Wire Wire Line
	5200 1450 5200 1650
Wire Wire Line
	4750 1450 4850 1450
Wire Wire Line
	2950 1450 2950 1800
Wire Wire Line
	3400 1450 3400 1500
Wire Wire Line
	3550 1450 3400 1450
Connection ~ 3400 1850
Wire Wire Line
	3400 1850 3400 1900
Wire Wire Line
	3400 1850 3400 1800
Wire Wire Line
	3550 1850 3400 1850
Wire Wire Line
	2950 2200 2950 2100
Wire Wire Line
	4150 2200 4150 2050
$Comp
L power:GND #PWR072
U 1 1 60339587
P 4150 2200
F 0 "#PWR072" H 4150 1950 50  0001 C CNN
F 1 "GND" H 4155 2027 50  0000 C CNN
F 2 "" H 4150 2200 50  0001 C CNN
F 3 "" H 4150 2200 50  0001 C CNN
	1    4150 2200
	1    0    0    -1  
$EndComp
$Comp
L Lathecontrol_STM32:MP2451DT-LF-Z U2
U 1 1 6031D365
P 3350 1550
F 0 "U2" H 4150 1939 60  0000 C CNN
F 1 "MP2451DT-LF-Z" H 4150 1833 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4150 1790 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Monolithic-Power-Systems-MPS-MP2451DT-LF-Z_C14123.pdf" H 3350 1550 60  0001 C CNN
F 4 "C14123" H 3350 1550 50  0001 C CNN "LCSC"
	1    3350 1550
	1    0    0    -1  
$EndComp
Text Notes 7000 3350 2    50   ~ 0
DCDC-Converter 9...15V -> 5V
Wire Notes Line
	3050 6150 1050 6150
Wire Notes Line
	1050 6150 1050 3700
$Comp
L Device:R R13
U 1 1 603530B1
P 3400 1650
F 0 "R13" H 3250 1700 50  0000 C CNN
F 1 "24k" H 3250 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 1650 50  0001 C CNN
F 3 "~" H 3400 1650 50  0001 C CNN
F 4 "C23352" V 3400 1650 50  0001 C CNN "LCSC"
	1    3400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR075
U 1 1 6033586F
P 6700 1650
F 0 "#PWR075" H 6700 1500 50  0001 C CNN
F 1 "+5V" H 6715 1823 50  0000 C CNN
F 2 "" H 6700 1650 50  0001 C CNN
F 3 "" H 6700 1650 50  0001 C CNN
	1    6700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 60325786
P 4450 2950
F 0 "#PWR073" H 4450 2700 50  0001 C CNN
F 1 "GND" H 4455 2777 50  0000 C CNN
F 2 "" H 4450 2950 50  0001 C CNN
F 3 "" H 4450 2950 50  0001 C CNN
	1    4450 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR076
U 1 1 60321399
P 5850 2000
F 0 "#PWR076" H 5850 1750 50  0001 C CNN
F 1 "GND" H 5855 1827 50  0000 C CNN
F 2 "" H 5850 2000 50  0001 C CNN
F 3 "" H 5850 2000 50  0001 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 6031D068
P 5500 1650
F 0 "L1" V 5690 1650 50  0000 C CNN
F 1 "4U7" V 5599 1650 50  0000 C CNN
F 2 "Lathecontrol_STM32:L_3012_SMD3.0x3.0x1.2mm" H 5500 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810161822_Sunlord-SWPA3012S4R7MT_C83415.pdf" H 5500 1650 50  0001 C CNN
F 4 "C83415" V 5500 1650 50  0001 C CNN "LCSC"
F 5 "SWPA3012S4R7MT" V 5500 1650 50  0001 C CNN "MFR_Part"
	1    5500 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR074
U 1 1 602EF307
P 5200 2000
F 0 "#PWR074" H 5200 1750 50  0001 C CNN
F 1 "GND" H 5205 1827 50  0000 C CNN
F 2 "" H 5200 2000 50  0001 C CNN
F 3 "" H 5200 2000 50  0001 C CNN
	1    5200 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 602EDE4F
P 5200 1850
F 0 "D3" V 5154 1930 50  0000 L CNN
F 1 "D_Schottky" V 5245 1930 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5200 1850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Changjiang-Electronics-Tech-CJ-B5819W_C8598.pdf" H 5200 1850 50  0001 C CNN
F 4 "C8598" V 5200 1850 50  0001 C CNN "LCSC"
	1    5200 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR071
U 1 1 602D7E86
P 3400 2200
F 0 "#PWR071" H 3400 1950 50  0001 C CNN
F 1 "GND" H 3405 2027 50  0000 C CNN
F 2 "" H 3400 2200 50  0001 C CNN
F 3 "" H 3400 2200 50  0001 C CNN
	1    3400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 602B35C2
P 3400 2050
F 0 "R14" H 3330 2004 50  0000 R CNN
F 1 "10k" H 3330 2095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 2050 50  0001 C CNN
F 3 "~" H 3400 2050 50  0001 C CNN
F 4 "C25804" H 3400 2050 50  0001 C CNN "LCSC"
	1    3400 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR070
U 1 1 602B1FA9
P 2950 2200
F 0 "#PWR070" H 2950 1950 50  0001 C CNN
F 1 "GND" H 2955 2027 50  0000 C CNN
F 2 "" H 2950 2200 50  0001 C CNN
F 3 "" H 2950 2200 50  0001 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602B04B4
P 5000 1450
AR Path="/6025D9E2/602B04B4" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/602B04B4" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/602B04B4" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/602B04B4" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/602B04B4" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/602B04B4" Ref="C?"  Part="1" 
AR Path="/60265C89/602B04B4" Ref="C?"  Part="1" 
AR Path="/60265F6D/602B04B4" Ref="C?"  Part="1" 
AR Path="/60265FC9/602B04B4" Ref="C?"  Part="1" 
AR Path="/6026601C/602B04B4" Ref="C?"  Part="1" 
AR Path="/602B04B4" Ref="C?"  Part="1" 
AR Path="/60278C87/602B04B4" Ref="C15"  Part="1" 
F 0 "C15" V 5250 1400 50  0000 L CNN
F 1 "100n" V 5150 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5038 1300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5000 1450 50  0001 C CNN
F 4 "C14663" H 5000 1450 50  0001 C CNN "LCSC"
	1    5000 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR069
U 1 1 602AF279
P 2950 1400
F 0 "#PWR069" H 2950 1250 50  0001 C CNN
F 1 "VCC" H 3050 1450 50  0000 C CNN
F 2 "" H 2950 1400 50  0001 C CNN
F 3 "" H 2950 1400 50  0001 C CNN
	1    2950 1400
	1    0    0    -1  
$EndComp
Connection ~ 2700 4450
Text Label 1900 5000 0    50   ~ 0
VADJ_1V8
Text Notes 3000 6100 2    50   ~ 0
Measuring stick voltage supply (1.7 V)
Wire Notes Line
	1050 3700 3050 3700
$Comp
L power:+1V8 #PWR081
U 1 1 60291DEE
P 2700 4450
F 0 "#PWR081" H 2700 4300 50  0001 C CNN
F 1 "+1V8" H 2715 4623 50  0000 C CNN
F 2 "" H 2700 4450 50  0001 C CNN
F 3 "" H 2700 4450 50  0001 C CNN
	1    2700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4900 2700 5400
Wire Wire Line
	2700 4450 2700 4600
Wire Wire Line
	2300 4450 2700 4450
$Comp
L power:GND #PWR082
U 1 1 60291DDE
P 2700 5400
F 0 "#PWR082" H 2700 5150 50  0001 C CNN
F 1 "GND" H 2705 5227 50  0000 C CNN
F 2 "" H 2700 5400 50  0001 C CNN
F 3 "" H 2700 5400 50  0001 C CNN
	1    2700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4450 1200 4450
Connection ~ 2300 4450
Wire Wire Line
	2300 4000 2300 4450
Wire Wire Line
	2000 4000 2300 4000
Wire Wire Line
	1400 4450 1550 4450
Connection ~ 1400 4450
Wire Wire Line
	1400 4000 1700 4000
Wire Wire Line
	1400 4450 1400 4000
$Comp
L Device:D D5
U 1 1 60291DD0
P 1850 4000
F 0 "D5" H 1850 4217 50  0000 C CNN
F 1 "D" H 1850 4126 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1850 4000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1903051030_MDD-Jiangsu-Yutai-Elec-SM4007PL_C64898.pdf" H 1850 4000 50  0001 C CNN
F 4 "C64898" H 1850 4000 50  0001 C CNN "LCSC"
	1    1850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5400 1400 4900
$Comp
L power:GND #PWR079
U 1 1 60291DC2
P 1400 5400
F 0 "#PWR079" H 1400 5150 50  0001 C CNN
F 1 "GND" H 1405 5227 50  0000 C CNN
F 2 "" H 1400 5400 50  0001 C CNN
F 3 "" H 1400 5400 50  0001 C CNN
	1    1400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4600 1400 4450
$Comp
L Device:C C?
U 1 1 60291DBB
P 1400 4750
AR Path="/6025D9E2/60291DBB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/60291DBB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/60291DBB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/60291DBB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/60291DBB" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/60291DBB" Ref="C?"  Part="1" 
AR Path="/60265C89/60291DBB" Ref="C?"  Part="1" 
AR Path="/60265F6D/60291DBB" Ref="C?"  Part="1" 
AR Path="/60265FC9/60291DBB" Ref="C?"  Part="1" 
AR Path="/6026601C/60291DBB" Ref="C?"  Part="1" 
AR Path="/60291DBB" Ref="C?"  Part="1" 
AR Path="/60278C87/60291DBB" Ref="C18"  Part="1" 
F 0 "C18" H 1515 4796 50  0000 L CNN
F 1 "100n" H 1515 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1438 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 1400 4750 50  0001 C CNN
F 4 "C14663" H 1400 4750 50  0001 C CNN "LCSC"
	1    1400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR080
U 1 1 60291DB4
P 2300 5400
F 0 "#PWR080" H 2300 5150 50  0001 C CNN
F 1 "GND" H 2305 5227 50  0000 C CNN
F 2 "" H 2300 5400 50  0001 C CNN
F 3 "" H 2300 5400 50  0001 C CNN
	1    2300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4450 2300 4600
Wire Wire Line
	2150 4450 2300 4450
Wire Wire Line
	2300 5000 2300 4900
Connection ~ 2300 5000
Wire Wire Line
	1850 5000 1850 4750
Wire Wire Line
	2300 5000 1850 5000
Wire Wire Line
	2300 5100 2300 5000
$Comp
L Device:R R21
U 1 1 60291DA7
P 2300 5250
F 0 "R21" H 2370 5296 50  0000 L CNN
F 1 "82" H 2370 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2230 5250 50  0001 C CNN
F 3 "~" H 2300 5250 50  0001 C CNN
F 4 "C23255" H 2300 5250 50  0001 C CNN "LCSC"
	1    2300 5250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_TO-252 U?
U 1 1 60291D99
P 1850 4450
AR Path="/60291D99" Ref="U?"  Part="1" 
AR Path="/60278C87/60291D99" Ref="U3"  Part="1" 
F 0 "U3" H 1850 4692 50  0000 C CNN
F 1 "LM317_TO-252" H 1850 4601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1850 4700 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/szlcsc/1810271112_UTC-Unisonic-Tech-LM317AG-TN3-R_C75510.pdf" H 1850 4450 50  0001 C CNN
F 4 "C75510" H 1850 4450 50  0001 C CNN "LCSC"
	1    1850 4450
	1    0    0    -1  
$EndComp
Wire Notes Line
	3050 3700 3050 6150
$Comp
L Regulator_Linear:AMS1117-3.3 U4
U 1 1 60291DFB
P 4150 4450
F 0 "U4" H 4150 4692 50  0000 C CNN
F 1 "AMS1117-3.3" H 4150 4601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4150 4650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811201117_Advanced-Monolithic-Systems-AMS-AMS1117-3-3_C6186.pdf" H 4250 4200 50  0001 C CNN
F 4 "C6186" H 4150 4450 50  0001 C CNN "LCSC"
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60291E02
P 3650 4750
AR Path="/6025D9E2/60291E02" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/60291E02" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/60291E02" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/60291E02" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/60291E02" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/60291E02" Ref="C?"  Part="1" 
AR Path="/60265C89/60291E02" Ref="C?"  Part="1" 
AR Path="/60265F6D/60291E02" Ref="C?"  Part="1" 
AR Path="/60265FC9/60291E02" Ref="C?"  Part="1" 
AR Path="/6026601C/60291E02" Ref="C?"  Part="1" 
AR Path="/60291E02" Ref="C?"  Part="1" 
AR Path="/60278C87/60291E02" Ref="C20"  Part="1" 
F 0 "C20" H 3765 4796 50  0000 L CNN
F 1 "100n" H 3765 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3688 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 3650 4750 50  0001 C CNN
F 4 "C14663" H 3650 4750 50  0001 C CNN "LCSC"
	1    3650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4600 3650 4450
Wire Wire Line
	3650 4450 3850 4450
$Comp
L power:GND #PWR084
U 1 1 60291E0A
P 3650 4900
F 0 "#PWR084" H 3650 4650 50  0001 C CNN
F 1 "GND" H 3655 4727 50  0000 C CNN
F 2 "" H 3650 4900 50  0001 C CNN
F 3 "" H 3650 4900 50  0001 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR085
U 1 1 60291E10
P 4150 4900
F 0 "#PWR085" H 4150 4650 50  0001 C CNN
F 1 "GND" H 4155 4727 50  0000 C CNN
F 2 "" H 4150 4900 50  0001 C CNN
F 3 "" H 4150 4900 50  0001 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR087
U 1 1 60291E16
P 4650 4900
F 0 "#PWR087" H 4650 4650 50  0001 C CNN
F 1 "GND" H 4655 4727 50  0000 C CNN
F 2 "" H 4650 4900 50  0001 C CNN
F 3 "" H 4650 4900 50  0001 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60291E1D
P 4650 4750
AR Path="/6025D9E2/60291E1D" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/60291E1D" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/60291E1D" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/60291E1D" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/60291E1D" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/60291E1D" Ref="C?"  Part="1" 
AR Path="/60265C89/60291E1D" Ref="C?"  Part="1" 
AR Path="/60265F6D/60291E1D" Ref="C?"  Part="1" 
AR Path="/60265FC9/60291E1D" Ref="C?"  Part="1" 
AR Path="/6026601C/60291E1D" Ref="C?"  Part="1" 
AR Path="/60291E1D" Ref="C?"  Part="1" 
AR Path="/60278C87/60291E1D" Ref="C21"  Part="1" 
F 0 "C21" H 4765 4796 50  0000 L CNN
F 1 "22u" H 4765 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4688 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A226MAQNNNE_C45783.pdf" H 4650 4750 50  0001 C CNN
F 4 "C45783" H 4650 4750 50  0001 C CNN "LCSC"
	1    4650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4450 4650 4450
Wire Wire Line
	4650 4450 4650 4600
Wire Wire Line
	4150 4750 4150 4900
Connection ~ 4650 4450
$Comp
L power:+5V #PWR083
U 1 1 602A3322
P 3650 4450
F 0 "#PWR083" H 3650 4300 50  0001 C CNN
F 1 "+5V" H 3665 4623 50  0000 C CNN
F 2 "" H 3650 4450 50  0001 C CNN
F 3 "" H 3650 4450 50  0001 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
Connection ~ 3650 4450
Wire Notes Line
	3350 3700 3350 6150
Text Notes 5450 6100 2    50   ~ 0
5V to 3.3V LDO
$Comp
L power:+5V #PWR078
U 1 1 604F7BCC
P 1200 4450
F 0 "#PWR078" H 1200 4300 50  0001 C CNN
F 1 "+5V" H 1215 4623 50  0000 C CNN
F 2 "" H 1200 4450 50  0001 C CNN
F 3 "" H 1200 4450 50  0001 C CNN
	1    1200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4450 5150 4450
Wire Wire Line
	5150 4450 5150 4600
$Comp
L power:+3.3V #PWR086
U 1 1 60291E2C
P 4650 4450
F 0 "#PWR086" H 4650 4300 50  0001 C CNN
F 1 "+3.3V" H 4665 4623 50  0000 C CNN
F 2 "" H 4650 4450 50  0001 C CNN
F 3 "" H 4650 4450 50  0001 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
Wire Notes Line
	5500 6150 5500 3700
Wire Notes Line
	3350 6150 5500 6150
Wire Notes Line
	3350 3700 5500 3700
$Comp
L Device:R R22
U 1 1 607B7942
P 5150 4750
AR Path="/60278C87/607B7942" Ref="R22"  Part="1" 
AR Path="/607B7942" Ref="R?"  Part="1" 
F 0 "R22" H 5220 4796 50  0000 L CNN
F 1 "240" H 5220 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 4750 50  0001 C CNN
F 3 "~" H 5150 4750 50  0001 C CNN
F 4 "C23350" H 5150 4750 50  0001 C CNN "LCSC"
	1    5150 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 607B7949
P 5150 5050
AR Path="/607B7949" Ref="D?"  Part="1" 
AR Path="/60278C87/607B7949" Ref="D6"  Part="1" 
F 0 "D6" V 5189 4932 50  0000 R CNN
F 1 "RED" V 5098 4932 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5150 5050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Hubei-KENTO-Elec-KT-0603R_C2286.pdf" H 5150 5050 50  0001 C CNN
F 4 "C2286" V 5150 5050 50  0001 C CNN "LCSC"
	1    5150 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR088
U 1 1 607B867B
P 5150 5200
F 0 "#PWR088" H 5150 4950 50  0001 C CNN
F 1 "GND" H 5155 5027 50  0000 C CNN
F 2 "" H 5150 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 607D25CE
P 6700 1900
AR Path="/60278C87/607D25CE" Ref="R19"  Part="1" 
AR Path="/607D25CE" Ref="R?"  Part="1" 
F 0 "R19" H 6770 1946 50  0000 L CNN
F 1 "620" H 6770 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6630 1900 50  0001 C CNN
F 3 "~" H 6700 1900 50  0001 C CNN
F 4 "C23220" H 6700 1900 50  0001 C CNN "LCSC"
	1    6700 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 607D25D5
P 6700 2200
AR Path="/607D25D5" Ref="D?"  Part="1" 
AR Path="/60278C87/607D25D5" Ref="D4"  Part="1" 
F 0 "D4" V 6739 2082 50  0000 R CNN
F 1 "RED" V 6648 2082 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6700 2200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Hubei-KENTO-Elec-KT-0603R_C2286.pdf" H 6700 2200 50  0001 C CNN
F 4 "C2286" V 6700 2200 50  0001 C CNN "LCSC"
	1    6700 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR077
U 1 1 607D25DB
P 6700 2350
F 0 "#PWR077" H 6700 2100 50  0001 C CNN
F 1 "GND" H 6705 2177 50  0000 C CNN
F 2 "" H 6700 2350 50  0001 C CNN
F 3 "" H 6700 2350 50  0001 C CNN
	1    6700 2350
	1    0    0    -1  
$EndComp
Text Label 4800 1650 0    50   ~ 0
5VSW
Text Label 4850 2300 1    50   ~ 0
5VFB
Text Label 3400 1850 2    50   ~ 0
5VEN
$Comp
L Device:R R18
U 1 1 60355196
P 5050 2850
F 0 "R18" V 4950 2850 50  0000 C CNN
F 1 "120k" V 4850 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 2850 50  0001 C CNN
F 3 "~" H 5050 2850 50  0001 C CNN
F 4 "C25808" V 5050 2850 50  0001 C CNN "LCSC"
	1    5050 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 2850 5250 2850
Wire Wire Line
	4900 2600 4850 2600
Wire Wire Line
	5200 2600 5250 2600
Text Label 4850 1450 1    50   ~ 0
5VBST
Connection ~ 2950 1450
$Comp
L power:GND #PWR0101
U 1 1 6046DEB9
P 1850 2200
F 0 "#PWR0101" H 1850 1950 50  0001 C CNN
F 1 "GND" H 1855 2027 50  0000 C CNN
F 2 "" H 1850 2200 50  0001 C CNN
F 3 "" H 1850 2200 50  0001 C CNN
	1    1850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2200 1850 1750
Text GLabel 1450 1450 0    50   Input ~ 0
IN_VCC
$Comp
L Device:C C?
U 1 1 604DC7D9
P 5850 1850
AR Path="/6025D9E2/604DC7D9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/604DC7D9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/604DC7D9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/604DC7D9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/604DC7D9" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/604DC7D9" Ref="C?"  Part="1" 
AR Path="/60265C89/604DC7D9" Ref="C?"  Part="1" 
AR Path="/60265F6D/604DC7D9" Ref="C?"  Part="1" 
AR Path="/60265FC9/604DC7D9" Ref="C?"  Part="1" 
AR Path="/6026601C/604DC7D9" Ref="C?"  Part="1" 
AR Path="/604DC7D9" Ref="C?"  Part="1" 
AR Path="/60278C87/604DC7D9" Ref="C10"  Part="1" 
F 0 "C10" H 5965 1896 50  0000 L CNN
F 1 "10u" H 5965 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5888 1700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31A106KBHNNNE_C13585.pdf" H 5850 1850 50  0001 C CNN
F 4 "C13585" H 5850 1850 50  0001 C CNN "LCSC"
	1    5850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604DDA0E
P 6250 1850
AR Path="/6025D9E2/604DDA0E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/6025E7C0/604DDA0E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265A76/604DDA0E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265B58/604DDA0E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265BB4/604DDA0E" Ref="C?"  Part="1" 
AR Path="/6025D9E2/60265C25/604DDA0E" Ref="C?"  Part="1" 
AR Path="/60265C89/604DDA0E" Ref="C?"  Part="1" 
AR Path="/60265F6D/604DDA0E" Ref="C?"  Part="1" 
AR Path="/60265FC9/604DDA0E" Ref="C?"  Part="1" 
AR Path="/6026601C/604DDA0E" Ref="C?"  Part="1" 
AR Path="/604DDA0E" Ref="C?"  Part="1" 
AR Path="/60278C87/604DDA0E" Ref="C11"  Part="1" 
F 0 "C11" H 6365 1896 50  0000 L CNN
F 1 "10u" H 6365 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6288 1700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL31A106KBHNNNE_C13585.pdf" H 6250 1850 50  0001 C CNN
F 4 "C13585" H 6250 1850 50  0001 C CNN "LCSC"
	1    6250 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 604DDE6E
P 6250 2000
F 0 "#PWR012" H 6250 1750 50  0001 C CNN
F 1 "GND" H 6255 1827 50  0000 C CNN
F 2 "" H 6250 2000 50  0001 C CNN
F 3 "" H 6250 2000 50  0001 C CNN
	1    6250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1700 6250 1650
Connection ~ 6250 1650
Wire Wire Line
	6250 1650 6550 1650
Wire Wire Line
	6550 1650 6700 1650
Wire Wire Line
	6700 1650 6700 1750
Connection ~ 6700 1650
Wire Notes Line
	1050 950  1050 3400
$Comp
L Transistor_FET:AO3401A Q2
U 1 1 6050857F
P 1850 1550
F 0 "Q2" V 2192 1550 50  0000 C CNN
F 1 "AO3401A" V 2101 1550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 1475 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3401A_C15127.pdf" H 1850 1550 50  0001 L CNN
F 4 "C15127" V 1850 1550 50  0001 C CNN "LCSC"
	1    1850 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1450 1650 1450
Text GLabel 1450 2800 0    50   Input ~ 0
IN_+5V
$Comp
L Transistor_FET:AO3401A Q3
U 1 1 6053119C
P 1850 2900
F 0 "Q3" V 2192 2900 50  0000 C CNN
F 1 "AO3401A" V 2101 2900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 2825 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3401A_C15127.pdf" H 1850 2900 50  0001 L CNN
F 4 "C15127" V 1850 2900 50  0001 C CNN "LCSC"
	1    1850 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 60531E0A
P 2450 2750
F 0 "#PWR010" H 2450 2600 50  0001 C CNN
F 1 "+5V" H 2465 2923 50  0000 C CNN
F 2 "" H 2450 2750 50  0001 C CNN
F 3 "" H 2450 2750 50  0001 C CNN
	1    2450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2800 1650 2800
Wire Wire Line
	2450 2800 2450 2750
$Comp
L power:GND #PWR02
U 1 1 6053535D
P 1850 3100
F 0 "#PWR02" H 1850 2850 50  0001 C CNN
F 1 "GND" H 1855 2927 50  0000 C CNN
F 2 "" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 60564E20
P 2650 1450
F 0 "FB1" V 2376 1450 50  0000 C CNN
F 1 "600 @ 600MHz" V 2467 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 2580 1450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Sunlord-GZ2012D601TF_C1017.pdf" H 2650 1450 50  0001 C CNN
F 4 "C1017" V 2650 1450 50  0001 C CNN "LCSC"
	1    2650 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 1450 2950 1450
Wire Notes Line
	7050 950  7050 3400
Wire Notes Line
	1050 950  7050 950 
Wire Notes Line
	1050 3400 7050 3400
$Comp
L Device:D_Schottky D7
U 1 1 60591510
P 2150 1650
F 0 "D7" V 2104 1730 50  0000 L CNN
F 1 "D_Schottky" V 2195 1730 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2150 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Changjiang-Electronics-Tech-CJ-B5819W_C8598.pdf" H 2150 1650 50  0001 C CNN
F 4 "C8598" V 2150 1650 50  0001 C CNN "LCSC"
	1    2150 1650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 60593D1E
P 2150 1800
F 0 "#PWR011" H 2150 1650 50  0001 C CNN
F 1 "+5V" H 2165 1973 50  0000 C CNN
F 2 "" H 2150 1800 50  0001 C CNN
F 3 "" H 2150 1800 50  0001 C CNN
	1    2150 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1450 2150 1450
Wire Wire Line
	2150 1500 2150 1450
Connection ~ 2150 1450
Wire Wire Line
	2150 1450 2500 1450
Text Label 2250 1450 0    50   ~ 0
VCC_MID
Wire Wire Line
	2950 1450 3200 1450
Connection ~ 3400 1450
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60720D3D
P 2200 2750
F 0 "#FLG0102" H 2200 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 3100 50  0000 C CNN
F 2 "" H 2200 2750 50  0001 C CNN
F 3 "~" H 2200 2750 50  0001 C CNN
	1    2200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2800 2200 2800
Wire Wire Line
	2200 2750 2200 2800
Connection ~ 2200 2800
Wire Wire Line
	2200 2800 2450 2800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 606FE1CD
P 3200 1400
F 0 "#FLG0101" H 3200 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 1600 50  0000 C CNN
F 2 "" H 3200 1400 50  0001 C CNN
F 3 "~" H 3200 1400 50  0001 C CNN
	1    3200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1400 3200 1450
Connection ~ 3200 1450
Wire Wire Line
	3200 1450 3400 1450
Wire Wire Line
	2950 1450 2950 1400
$Comp
L power:+3.3V #PWR023
U 1 1 6086654E
P 5950 4000
F 0 "#PWR023" H 5950 3850 50  0001 C CNN
F 1 "+3.3V" H 5965 4173 50  0000 C CNN
F 2 "" H 5950 4000 50  0001 C CNN
F 3 "" H 5950 4000 50  0001 C CNN
	1    5950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 60867F66
P 6150 4050
F 0 "L2" V 6250 4050 50  0000 C BNN
F 1 "39n" V 6050 4050 50  0000 C TNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6150 4050 50  0001 C CNN
F 3 "~" H 6150 4050 50  0001 C CNN
F 4 "C26443" V 6150 4050 50  0001 C CNN "LCSC"
	1    6150 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 4000 5950 4050
Wire Wire Line
	5950 4050 6000 4050
$Comp
L Device:C C8
U 1 1 6086D747
P 6350 4250
F 0 "C8" H 6465 4296 50  0000 L CNN
F 1 "1u" H 6465 4205 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6388 4100 50  0001 C CNN
F 3 "~" H 6350 4250 50  0001 C CNN
F 4 "C52923" H 6350 4250 50  0001 C CNN "LCSC"
	1    6350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6086E020
P 6750 4250
F 0 "C9" H 6865 4296 50  0000 L CNN
F 1 "10n" H 6865 4205 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6788 4100 50  0001 C CNN
F 3 "~" H 6750 4250 50  0001 C CNN
F 4 "C15195" H 6750 4250 50  0001 C CNN "LCSC"
	1    6750 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR036
U 1 1 6086F206
P 6750 4000
F 0 "#PWR036" H 6750 3850 50  0001 C CNN
F 1 "+3.3VA" H 6765 4173 50  0000 C CNN
F 2 "" H 6750 4000 50  0001 C CNN
F 3 "" H 6750 4000 50  0001 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4050 6350 4050
Wire Wire Line
	6750 4050 6750 4100
Wire Wire Line
	6750 4050 6750 4000
Connection ~ 6750 4050
Wire Wire Line
	6350 4050 6350 4100
Connection ~ 6350 4050
Wire Wire Line
	6350 4050 6750 4050
$Comp
L power:GND #PWR035
U 1 1 60875B2D
P 6350 4400
F 0 "#PWR035" H 6350 4150 50  0001 C CNN
F 1 "GND" H 6355 4227 50  0000 C CNN
F 2 "" H 6350 4400 50  0001 C CNN
F 3 "" H 6350 4400 50  0001 C CNN
	1    6350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 608765A4
P 6750 4400
F 0 "#PWR043" H 6750 4150 50  0001 C CNN
F 1 "GND" H 6755 4227 50  0000 C CNN
F 2 "" H 6750 4400 50  0001 C CNN
F 3 "" H 6750 4400 50  0001 C CNN
	1    6750 4400
	1    0    0    -1  
$EndComp
Wire Notes Line
	5800 3700 7050 3700
Wire Notes Line
	7050 3700 7050 4950
Wire Notes Line
	7050 4950 5800 4950
Wire Notes Line
	5800 4950 5800 3700
Text Notes 7000 4900 2    50   ~ 0
Analog Filtering
$EndSCHEMATC

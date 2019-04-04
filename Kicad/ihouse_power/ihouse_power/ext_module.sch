EESchema Schematic File Version 4
LIBS:ihouse_power-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Interface_Expansion:MCP23017_SO U?
U 1 1 5CB2581C
P 5850 3300
AR Path="/5CB2581C" Ref="U?"  Part="1" 
AR Path="/5D6D54C9/5CB2581C" Ref="U?"  Part="1" 
AR Path="/5CA6F474/5CB2581C" Ref="U12"  Part="1" 
F 0 "U12" H 5450 4250 50  0000 C CNN
F 1 "MCP23017_SO" H 6200 4250 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 6050 2300 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 6050 2200 50  0001 L CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3900 5150 3900
Wire Wire Line
	5150 4000 5000 4000
Connection ~ 5000 4000
Wire Wire Line
	5000 4000 5000 3900
Wire Wire Line
	6550 3400 6700 3400
Wire Wire Line
	6550 3500 6700 3500
Wire Wire Line
	6550 3600 6700 3600
Wire Wire Line
	6550 4000 6700 4000
Wire Wire Line
	6550 3900 6700 3900
Wire Wire Line
	6550 3800 6700 3800
Wire Wire Line
	6550 2500 6700 2500
Wire Wire Line
	6550 2600 6700 2600
Wire Wire Line
	6550 2700 6700 2700
Wire Wire Line
	6550 2800 6700 2800
Wire Wire Line
	6550 2900 6700 2900
Wire Wire Line
	6550 3000 6700 3000
Wire Wire Line
	6550 3100 6700 3100
Wire Wire Line
	6550 3700 6700 3700
Text HLabel 6700 2500 2    50   Output ~ 0
GPB0
Text HLabel 6700 2600 2    50   Output ~ 0
GPB1
Text HLabel 6700 2700 2    50   Output ~ 0
GPB2
Text HLabel 6700 2800 2    50   Output ~ 0
GPB3
Text HLabel 6700 2900 2    50   Output ~ 0
GPB4
Text HLabel 6700 3000 2    50   Output ~ 0
GPB5
Text HLabel 6700 3100 2    50   Output ~ 0
GPB6
Text HLabel 6700 3400 2    50   Output ~ 0
GPA0
Text HLabel 6700 3500 2    50   Output ~ 0
GPA1
Text HLabel 6700 3600 2    50   Output ~ 0
GPA2
Text HLabel 6700 3700 2    50   Output ~ 0
GPA3
Text HLabel 6700 3800 2    50   Output ~ 0
GPA4
Text HLabel 6700 3900 2    50   Output ~ 0
GPA5
Text HLabel 6700 4000 2    50   Output ~ 0
GPA6
Text HLabel 3700 3400 0    50   Input ~ 0
~MCPRST
Text HLabel 3700 2900 0    50   Input ~ 0
SCK
Text HLabel 3700 2800 0    50   BiDi ~ 0
SDA
Wire Wire Line
	5000 4400 5850 4400
Connection ~ 5000 4400
Wire Wire Line
	4000 4400 4200 4400
$Comp
L Device:CP C?
U 1 1 5CB25870
P 4000 3700
AR Path="/5D6D54C9/5CB25870" Ref="C?"  Part="1" 
AR Path="/5CA6F474/5CB25870" Ref="C28"  Part="1" 
F 0 "C28" H 3700 3700 50  0000 L CNN
F 1 "CP" H 3700 3600 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 4038 3550 50  0001 C CNN
F 3 "~" H 4000 3700 50  0001 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
Connection ~ 4000 2200
Wire Wire Line
	4000 2200 4200 2200
Wire Wire Line
	3700 2200 4000 2200
Text Label 5450 4400 2    50   ~ 0
COM
Wire Wire Line
	3700 3400 5150 3400
Wire Wire Line
	4000 2200 4000 3550
Text HLabel 3700 4400 0    50   UnSpc ~ 0
COM
$Comp
L Driver_Motor:L293D U?
U 1 1 5CB3DAB0
P 8250 3400
AR Path="/5CB3DAB0" Ref="U?"  Part="1" 
AR Path="/5D5ECDB6/5CB3DAB0" Ref="U?"  Part="1" 
AR Path="/5CA6F474/5CB3DAB0" Ref="U13"  Part="1" 
F 0 "U13" H 7900 4350 50  0000 C CNN
F 1 "L293D" H 8500 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 8500 2650 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 7950 4100 50  0001 C CNN
	1    8250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2800 7650 2800
Wire Wire Line
	7750 3000 7550 3000
Wire Wire Line
	7650 3600 7650 2800
Connection ~ 7650 2800
Wire Wire Line
	3700 1700 7800 1700
Wire Wire Line
	7750 3400 7550 3400
Wire Wire Line
	7650 3600 7750 3600
$Comp
L Device:R R?
U 1 1 5CB3DACD
P 4850 3800
AR Path="/5CB3DACD" Ref="R?"  Part="1" 
AR Path="/5D5ECDB6/5CB3DACD" Ref="R?"  Part="1" 
AR Path="/5CA6F474/5CB3DACD" Ref="R12"  Part="1" 
F 0 "R12" V 4850 3800 50  0000 C CNN
F 1 "4.7k" V 4950 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 3800 50  0001 C CNN
F 3 "~" H 4850 3800 50  0001 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2200 8150 2400
$Comp
L Device:C C?
U 1 1 5CB3DADB
P 4200 4150
AR Path="/5CB3DADB" Ref="C?"  Part="1" 
AR Path="/5D5ECDB6/5CB3DADB" Ref="C?"  Part="1" 
AR Path="/5CA6F474/5CB3DADB" Ref="C29"  Part="1" 
F 0 "C29" H 4315 4196 50  0000 L CNN
F 1 "C" H 4315 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4238 4000 50  0001 C CNN
F 3 "~" H 4200 4150 50  0001 C CNN
	1    4200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3000 7550 3400
Connection ~ 7550 3000
Text HLabel 3700 1950 0    50   Input ~ 0
MA
Text HLabel 3700 2050 0    50   Input ~ 0
MB
Text HLabel 3700 1700 0    50   Input ~ 0
12VDC
Wire Wire Line
	8350 2400 8350 1700
$Comp
L Device:Thermistor_PTC TH?
U 1 1 5CB3DAF8
P 7950 1700
AR Path="/5D5ECDB6/5CB3DAF8" Ref="TH?"  Part="1" 
AR Path="/5CA6F474/5CB3DAF8" Ref="TH3"  Part="1" 
F 0 "TH3" V 7800 1700 50  0000 C CNN
F 1 "Thermistor_PTC" V 7751 1700 50  0001 C CNN
F 2 "Resistor_SMD:R_2816_7142Metric" H 8000 1500 50  0001 L CNN
F 3 "~" H 7950 1700 50  0001 C CNN
	1    7950 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1700 8350 1700
Wire Wire Line
	8450 4400 8450 4200
Wire Wire Line
	8350 4200 8350 4400
Connection ~ 8350 4400
Wire Wire Line
	8350 4400 8450 4400
Wire Wire Line
	8150 4200 8150 4400
Connection ~ 8150 4400
Wire Wire Line
	8150 4400 8350 4400
Wire Wire Line
	8050 4200 8050 4400
Connection ~ 8050 4400
Wire Wire Line
	8050 4400 8150 4400
Wire Wire Line
	5000 4000 5000 4400
Wire Wire Line
	4000 3850 4000 4400
Wire Wire Line
	3700 4400 4000 4400
Connection ~ 4000 4400
Wire Wire Line
	4850 3650 4850 2200
Connection ~ 4850 2200
Wire Wire Line
	4850 2200 5850 2200
Wire Wire Line
	4850 3950 4850 4100
Wire Wire Line
	4850 4100 5150 4100
Text HLabel 3700 2200 0    50   Input ~ 0
5VDC
Text Label 8150 2200 2    50   ~ 0
5VDC
Connection ~ 5850 2200
Connection ~ 5850 4400
Wire Wire Line
	3700 1950 7650 1950
Wire Wire Line
	7650 1950 7650 2800
Wire Wire Line
	3700 2050 7550 2050
Wire Wire Line
	7550 2050 7550 3000
Wire Wire Line
	7650 4100 7650 3800
Wire Wire Line
	6550 4100 7650 4100
Wire Wire Line
	7650 3800 7750 3800
Wire Wire Line
	6550 3200 7750 3200
Wire Wire Line
	5850 4400 8050 4400
Wire Wire Line
	5850 2200 8150 2200
Wire Wire Line
	4200 4300 4200 4400
Connection ~ 4200 4400
Wire Wire Line
	4200 4400 5000 4400
Wire Wire Line
	4200 4000 4200 2200
Connection ~ 4200 2200
Wire Wire Line
	4200 2200 4400 2200
Wire Wire Line
	5150 3100 4400 3100
Wire Wire Line
	5150 3200 4650 3200
Text HLabel 3700 3100 0    50   Output ~ 0
INTA
Text HLabel 3700 3200 0    50   Output ~ 0
INTB
Wire Wire Line
	3700 2900 5050 2900
Wire Wire Line
	5050 2900 5050 2600
Wire Wire Line
	5050 2600 5150 2600
Wire Wire Line
	3700 2800 4950 2800
Wire Wire Line
	4950 2800 4950 2500
Wire Wire Line
	4950 2500 5150 2500
$Comp
L Device:R R?
U 1 1 5CC18FB8
P 4400 2500
AR Path="/5CC18FB8" Ref="R?"  Part="1" 
AR Path="/5D5ECDB6/5CC18FB8" Ref="R?"  Part="1" 
AR Path="/5CA6F474/5CC18FB8" Ref="R13"  Part="1" 
F 0 "R13" V 4400 2500 50  0000 C CNN
F 1 "4.7k" V 4500 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 2500 50  0001 C CNN
F 3 "~" H 4400 2500 50  0001 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CC19703
P 4650 2500
AR Path="/5CC19703" Ref="R?"  Part="1" 
AR Path="/5D5ECDB6/5CC19703" Ref="R?"  Part="1" 
AR Path="/5CA6F474/5CC19703" Ref="R34"  Part="1" 
F 0 "R34" V 4650 2500 50  0000 C CNN
F 1 "4.7k" V 4750 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 2500 50  0001 C CNN
F 3 "~" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2350 4400 2200
Connection ~ 4400 2200
Wire Wire Line
	4400 2200 4650 2200
Wire Wire Line
	4650 2350 4650 2200
Connection ~ 4650 2200
Wire Wire Line
	4650 2200 4850 2200
Wire Wire Line
	4400 2650 4400 3100
Connection ~ 4400 3100
Wire Wire Line
	4400 3100 3700 3100
Wire Wire Line
	4650 2650 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	4650 3200 3700 3200
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J21
U 1 1 5CE640C4
P 9600 3150
F 0 "J21" H 9650 3275 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 9650 3276 50  0001 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 9600 3150 50  0001 C CNN
F 3 "~" H 9600 3150 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3000 9300 3150
Wire Wire Line
	9300 3150 9400 3150
Wire Wire Line
	8750 3000 9300 3000
Wire Wire Line
	10000 2800 10000 3150
Wire Wire Line
	10000 3150 9900 3150
Wire Wire Line
	8750 2800 10000 2800
Wire Wire Line
	9300 3400 9300 3250
Wire Wire Line
	9300 3250 9400 3250
Wire Wire Line
	8750 3400 9300 3400
Wire Wire Line
	10000 3600 10000 3250
Wire Wire Line
	10000 3250 9900 3250
Wire Wire Line
	8750 3600 10000 3600
Text Label 8900 2800 0    50   ~ 0
M3A
Text Label 8900 3000 0    50   ~ 0
M3B
Text Label 8900 3600 0    50   ~ 0
M4A
Text Label 8900 3400 0    50   ~ 0
M4B
$EndSCHEMATC

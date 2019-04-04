EESchema Schematic File Version 4
LIBS:ihouse_power-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
U 1 1 5D6D5544
P 5750 3550
AR Path="/5D6D5544" Ref="U?"  Part="1" 
AR Path="/5D6D54C9/5D6D5544" Ref="U4"  Part="1" 
F 0 "U4" H 5350 4500 50  0000 C CNN
F 1 "MCP23017_SO" H 6100 4500 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 5950 2550 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 5950 2450 50  0001 L CNN
	1    5750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4650 6650 4650
Wire Wire Line
	5750 2450 6650 2450
Wire Wire Line
	5050 4350 4950 4350
Wire Wire Line
	4950 4350 4950 4250
Wire Wire Line
	4950 4150 5050 4150
Wire Wire Line
	5050 4250 4950 4250
Connection ~ 4950 4250
Wire Wire Line
	4950 4250 4950 4150
Connection ~ 4950 4350
Wire Wire Line
	4800 2750 5050 2750
Wire Wire Line
	4800 2850 5050 2850
Wire Wire Line
	6450 3650 6650 3650
Wire Wire Line
	6450 3750 6650 3750
Wire Wire Line
	6450 3850 6650 3850
Wire Wire Line
	6450 4250 6650 4250
Wire Wire Line
	6450 4350 6650 4350
Text Label 6650 4250 2    50   ~ 0
GPA6
Wire Wire Line
	6450 4150 6650 4150
Wire Wire Line
	6450 4050 6650 4050
Text Label 6650 4150 2    50   ~ 0
GPA5
Text Label 6650 4050 2    50   ~ 0
GPA4
Text Label 6650 3650 2    50   ~ 0
GPA0
Text Label 6650 3750 2    50   ~ 0
GPA1
Text Label 6650 3850 2    50   ~ 0
GPA2
Wire Wire Line
	6450 2750 6650 2750
Wire Wire Line
	6450 2850 6650 2850
Wire Wire Line
	6450 2950 6650 2950
Wire Wire Line
	6450 3050 6650 3050
Wire Wire Line
	6450 3150 6650 3150
Wire Wire Line
	6450 3250 6650 3250
Wire Wire Line
	6450 3350 6650 3350
Wire Wire Line
	6450 3450 6650 3450
Wire Wire Line
	6450 3950 6650 3950
Text Label 6650 3950 2    50   ~ 0
GPA3
Text Label 6650 3350 2    50   ~ 0
GPB6
Text Label 6650 3250 2    50   ~ 0
GPB5
Text Label 6650 3150 2    50   ~ 0
GPB4
Text Label 6650 3050 2    50   ~ 0
GPB3
Text Label 6650 2950 2    50   ~ 0
GPB2
Text Label 6650 2850 2    50   ~ 0
GPB1
Text Label 6650 2750 2    50   ~ 0
GPB0
Text HLabel 6650 2750 2    50   Output ~ 0
GPB0
Text HLabel 6650 2850 2    50   Output ~ 0
GPB1
Text HLabel 6650 2950 2    50   Output ~ 0
GPB2
Text HLabel 6650 3050 2    50   Output ~ 0
GPB3
Text HLabel 6650 3150 2    50   Output ~ 0
GPB4
Text HLabel 6650 3250 2    50   Output ~ 0
GPB5
Text HLabel 6650 3350 2    50   Output ~ 0
GPB6
Text HLabel 6650 3650 2    50   Output ~ 0
GPA0
Text HLabel 6650 3750 2    50   Output ~ 0
GPA1
Text HLabel 6650 3850 2    50   Output ~ 0
GPA2
Text HLabel 6650 3950 2    50   Output ~ 0
GPA3
Text HLabel 6650 4050 2    50   Output ~ 0
GPA4
Text HLabel 6650 4150 2    50   Output ~ 0
GPA5
Text HLabel 6650 4250 2    50   Output ~ 0
GPA6
Text HLabel 6650 3450 2    50   Output ~ 0
MB
Text HLabel 6650 4350 2    50   Output ~ 0
MA
Text HLabel 2950 3350 0    50   UnSpc ~ 0
COM1
Text HLabel 4800 3650 0    50   Input ~ 0
~MCPRST
Text HLabel 4800 2850 0    50   Input ~ 0
SCK
Text HLabel 4800 2750 0    50   BiDi ~ 0
SDA
Wire Wire Line
	4950 4350 4950 4650
Wire Wire Line
	4950 4650 5750 4650
Connection ~ 5750 4650
Text HLabel 2950 2450 0    50   Input ~ 0
12VDC
Text HLabel 6650 2200 2    50   Output ~ 0
12VDC1
Wire Wire Line
	3100 2200 6650 2200
Text HLabel 6650 2450 2    50   Output ~ 0
5VDC1
Text HLabel 4850 4900 0    50   Input ~ 0
M1ENA
Text HLabel 6650 4900 2    50   Output ~ 0
M1EN
Text HLabel 6650 5000 2    50   Output ~ 0
M2EN
Text HLabel 4850 5000 0    50   Input ~ 0
M2ENA
Wire Wire Line
	4850 4900 6650 4900
Wire Wire Line
	4850 5000 6650 5000
Connection ~ 4950 4650
Wire Wire Line
	3800 2450 3900 2450
Connection ~ 5750 2450
$Comp
L Regulator_Linear:L7805 U5
U 1 1 5C9795D4
P 3500 2450
F 0 "U5" H 3350 2600 50  0000 C CNN
F 1 "L7805" H 3650 2600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3525 2300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3500 2400 50  0001 C CNN
	1    3500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2450 3100 2450
Wire Wire Line
	3100 2200 3100 2450
Connection ~ 3100 2450
Wire Wire Line
	3100 2450 3200 2450
Wire Wire Line
	2950 3350 3500 3350
Wire Wire Line
	4350 3350 4350 4650
Wire Wire Line
	4350 4650 4950 4650
Wire Wire Line
	3500 2750 3500 3350
Connection ~ 3500 3350
Wire Wire Line
	3500 3350 4050 3350
$Comp
L Device:CP C2
U 1 1 5C97A053
P 4350 3100
F 0 "C2" H 4468 3146 50  0000 L CNN
F 1 "CP" H 4468 3055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 4388 2950 50  0001 C CNN
F 3 "~" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2950 4350 2800
Connection ~ 4350 2450
Wire Wire Line
	4350 2450 5750 2450
Wire Wire Line
	4350 3250 4350 3350
Connection ~ 4350 3350
Wire Wire Line
	4350 2800 4050 2800
Connection ~ 4350 2800
Wire Wire Line
	4350 2800 4350 2450
Text HLabel 2950 2800 0    50   BiDi ~ 0
5VDC
$Comp
L Device:D D2
U 1 1 5C99748B
P 4050 2450
F 0 "D2" H 4050 2326 50  0000 C CNN
F 1 "BAS32" H 4050 2325 50  0001 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 4050 2450 50  0001 C CNN
F 3 "~" H 4050 2450 50  0001 C CNN
	1    4050 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 2450 4350 2450
$Comp
L Device:D D3
U 1 1 5C997522
P 3800 2800
F 0 "D3" H 3800 2676 50  0000 C CNN
F 1 "BAS32" H 3800 2675 50  0001 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 3800 2800 50  0001 C CNN
F 3 "~" H 3800 2800 50  0001 C CNN
	1    3800 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2800 2950 2800
$Comp
L Device:C C22
U 1 1 5CAE4084
P 4050 3100
F 0 "C22" H 3800 3150 50  0000 L CNN
F 1 "C" H 3800 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 2950 50  0001 C CNN
F 3 "~" H 4050 3100 50  0001 C CNN
	1    4050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2950 4050 2800
Connection ~ 4050 2800
Wire Wire Line
	4050 2800 3950 2800
Wire Wire Line
	4050 3250 4050 3350
Connection ~ 4050 3350
Wire Wire Line
	4050 3350 4350 3350
$Comp
L ihouse_power-rescue:tb387_uart_expander-tb387 M2
U 1 1 5CB77400
P 5350 5550
F 0 "M2" H 5300 5850 60  0000 C CNN
F 1 "tb387_uart_expander" H 6100 5400 60  0001 C CNN
F 2 "uart_expander:TB387_UART_expander" H 5900 5100 60  0001 C CNN
F 3 "" H 5400 5100 60  0001 C CNN
	1    5350 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 5750 6650 5750
Wire Wire Line
	5700 5650 6650 5650
Wire Wire Line
	5700 5550 6650 5550
Wire Wire Line
	5700 5450 6000 5450
Wire Wire Line
	5700 5350 6000 5350
Text Label 6000 5450 2    50   ~ 0
5VDC1
Text Label 6000 5350 2    50   ~ 0
COM
Text HLabel 6650 5550 2    50   Output ~ 0
TBTX
Text HLabel 6650 5650 2    50   Input ~ 0
TBRX
Text HLabel 6650 5750 2    50   Input ~ 0
TBCMD
Text HLabel 6650 4650 2    50   UnSpc ~ 0
COM2
Text Label 5400 4650 2    50   ~ 0
COM
Wire Wire Line
	4800 3650 5050 3650
$EndSCHEMATC

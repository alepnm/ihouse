EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L ihouse-rescue:MAX232-Interface U17
U 1 1 5C5DAC77
P 3200 2900
F 0 "U17" H 2750 4000 50  0000 C CNN
F 1 "St232C" H 3500 4000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3250 1850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 3200 3000 50  0001 C CNN
	1    3200 2900
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:MAX232-Interface U18
U 1 1 5C4DAEAB
P 9200 2900
F 0 "U18" H 9600 4000 50  0000 C CNN
F 1 "ST232C" H 8850 4000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 9250 1850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 9200 3000 50  0001 C CNN
	1    9200 2900
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Conn_01x08-Connector_Generic J15
U 1 1 5C5DAC7A
P 5500 2900
F 0 "J15" H 5450 2400 50  0000 L CNN
F 1 "Conn_01x08" H 5580 2801 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x08_Pitch2.54mm" H 5500 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	5300 3200 4950 3200
Wire Wire Line
	4950 3200 4950 2500
Wire Wire Line
	4950 2500 5300 2500
Wire Wire Line
	3200 1700 3200 1600
Wire Wire Line
	3200 1600 4500 1600
Wire Wire Line
	4950 1600 4950 2500
Connection ~ 4950 2500
Wire Wire Line
	5300 2600 5200 2600
Wire Wire Line
	5200 2600 5200 2800
Wire Wire Line
	5200 3100 5300 3100
Wire Wire Line
	5300 3000 5200 3000
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5200 3100
Wire Wire Line
	5300 2800 5200 2800
Connection ~ 5200 2800
Wire Wire Line
	5200 2800 5200 3000
Wire Wire Line
	3200 4100 3200 4200
Wire Wire Line
	3200 4200 4500 4200
Connection ~ 5200 3100
$Comp
L Device:C C5
U 1 1 5C5DAC7B
P 4100 2150
F 0 "C5" H 4215 2196 50  0000 L CNN
F 1 "1u" H 4215 2105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4138 2000 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2000 4100 2000
Wire Wire Line
	4000 2300 4100 2300
$Comp
L Device:C C4
U 1 1 5C5DAC7C
P 2300 2150
F 0 "C4" H 2050 2200 50  0000 L CNN
F 1 "1u" H 2050 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 2000 50  0001 C CNN
F 3 "~" H 2300 2150 50  0001 C CNN
	1    2300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2000 2400 2000
Wire Wire Line
	2300 2300 2400 2300
$Comp
L Device:C C8
U 1 1 5C5DAC7D
P 4250 2500
F 0 "C8" V 4100 2550 50  0000 L CNN
F 1 "1u" V 4100 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4288 2350 50  0001 C CNN
F 3 "~" H 4250 2500 50  0001 C CNN
	1    4250 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 2500 4000 2500
$Comp
L Device:C C10
U 1 1 5C5DAC7F
P 4250 2800
F 0 "C10" V 4100 2850 50  0000 L CNN
F 1 "1u" V 4100 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4288 2650 50  0001 C CNN
F 3 "~" H 4250 2800 50  0001 C CNN
	1    4250 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 2800 4000 2800
Wire Wire Line
	4000 3200 4200 3200
Text Label 4200 3200 2    50   ~ 0
TXN
Wire Wire Line
	5300 2700 4650 2700
Text Label 4650 2700 0    50   ~ 0
TXN
Wire Wire Line
	4000 3600 4200 3600
Text Label 4200 3600 2    50   ~ 0
RXN
Wire Wire Line
	5300 2900 4650 2900
Text Label 4650 2900 0    50   ~ 0
RXN
Wire Wire Line
	2400 3200 2000 3200
Wire Wire Line
	2400 3600 1750 3600
Text Label 1000 3200 0    50   ~ 0
NEX_TX
Text Label 1000 3600 0    50   ~ 0
NEX_RX
Text Label 1950 4200 0    50   ~ 0
COM
Text Label 1500 1600 0    50   ~ 0
5VDC
Wire Wire Line
	6550 2650 6300 2650
Wire Wire Line
	6550 2650 6550 2050
Wire Wire Line
	6550 1550 6750 1550
Wire Wire Line
	9200 1550 9200 1700
Wire Wire Line
	9200 4200 9200 4100
Wire Wire Line
	6300 3100 6750 3100
Wire Wire Line
	8400 3200 8300 3200
Wire Wire Line
	8400 3600 8300 3600
$Comp
L Device:C C6
U 1 1 5DF2F8F2
P 8300 2150
F 0 "C6" H 8050 2300 50  0000 L CNN
F 1 "1u" H 8050 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8338 2000 50  0001 C CNN
F 3 "~" H 8300 2150 50  0001 C CNN
	1    8300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C5DAC99
P 10100 2150
F 0 "C7" H 10215 2196 50  0000 L CNN
F 1 "1u" H 10215 2105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10138 2000 50  0001 C CNN
F 3 "~" H 10100 2150 50  0001 C CNN
	1    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5DF2FB58
P 8150 2500
F 0 "C9" V 8300 2550 50  0000 L CNN
F 1 "1u" V 8300 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8188 2350 50  0001 C CNN
F 3 "~" H 8150 2500 50  0001 C CNN
	1    8150 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C11
U 1 1 5C5DAC9B
P 8150 2800
F 0 "C11" V 8000 2850 50  0000 L CNN
F 1 "1u" V 8000 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8188 2650 50  0001 C CNN
F 3 "~" H 8150 2800 50  0001 C CNN
	1    8150 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2800 8300 2800
Wire Wire Line
	8400 2500 8300 2500
Wire Wire Line
	8400 2000 8300 2000
Wire Wire Line
	8400 2300 8300 2300
Wire Wire Line
	10000 2000 10100 2000
Wire Wire Line
	10000 2300 10100 2300
Wire Wire Line
	3200 1600 2000 1600
Connection ~ 3200 1600
Connection ~ 3200 4200
Wire Wire Line
	9200 1550 10600 1550
Connection ~ 9200 1550
Connection ~ 9200 4200
Wire Wire Line
	10000 3200 10200 3200
Wire Wire Line
	10000 3600 10200 3600
$Comp
L Device:Thermistor_NTC TH2
U 1 1 5C5DACB1
P 6550 1900
F 0 "TH2" H 6250 1950 50  0000 L CNN
F 1 "500mA" H 6150 1850 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 6550 1950 50  0001 C CNN
F 3 "~" H 6550 1950 50  0001 C CNN
	1    6550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1750 6550 1550
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R47
U 1 1 5C5DACB3
P 1750 1850
F 0 "R47" V 1750 1850 50  0000 C CNN
F 1 "1k" V 1850 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1680 1850 50  0001 C CNN
F 3 "~" H 1750 1850 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R48
U 1 1 5C5DACB4
P 2000 1850
F 0 "R48" V 2000 1850 50  0000 C CNN
F 1 "1k" V 2100 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 1850 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D16
U 1 1 5C5DACB5
P 1750 2650
F 0 "D16" V 1850 2850 50  0000 R CNN
F 1 "RX" V 1750 2850 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1750 2650 50  0001 C CNN
F 3 "~" H 1750 2650 50  0001 C CNN
	1    1750 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D17
U 1 1 5C5DACB6
P 2000 2650
F 0 "D17" V 2100 2550 50  0000 R CNN
F 1 "TX" V 2000 2550 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 2000 2650 50  0001 C CNN
F 3 "~" H 2000 2650 50  0001 C CNN
	1    2000 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 2500 1750 2000
Wire Wire Line
	2000 2500 2000 2000
$Comp
L Device:LED D18
U 1 1 5F57F66C
P 6750 2750
F 0 "D18" V 6800 2600 50  0000 R CNN
F 1 "RC" V 6700 2600 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6750 2750 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R49
U 1 1 5C5DACD1
P 6750 2250
F 0 "R49" V 6750 2250 50  0000 C CNN
F 1 "2k" V 6850 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 2250 50  0001 C CNN
F 3 "~" H 6750 2250 50  0001 C CNN
	1    6750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2100 6750 1550
Connection ~ 6750 1550
Wire Wire Line
	6750 1550 7900 1550
Wire Wire Line
	6750 2400 6750 2600
Wire Wire Line
	6750 2900 6750 3100
Connection ~ 6750 3100
Wire Wire Line
	6750 3100 6850 3100
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R54
U 1 1 5C5DACD2
P 10350 3600
F 0 "R54" V 10350 3600 50  0000 C CNN
F 1 "1k" V 10450 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10280 3600 50  0001 C CNN
F 3 "~" H 10350 3600 50  0001 C CNN
	1    10350 3600
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R52
U 1 1 5C5DACD3
P 10350 3200
F 0 "R52" V 10350 3200 50  0000 C CNN
F 1 "1k" V 10450 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10280 3200 50  0001 C CNN
F 3 "~" H 10350 3200 50  0001 C CNN
	1    10350 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2500 4500 2500
Wire Wire Line
	4500 2500 4500 1600
Connection ~ 4500 1600
Wire Wire Line
	4500 1600 4950 1600
Wire Wire Line
	4400 2800 4500 2800
Wire Wire Line
	4500 2800 4500 4200
Connection ~ 4500 4200
Wire Wire Line
	4500 4200 5200 4200
Wire Wire Line
	9200 4200 10600 4200
Wire Wire Line
	5200 3100 5200 4200
Wire Wire Line
	1450 4200 3200 4200
Wire Wire Line
	8000 2500 7900 2500
Wire Wire Line
	7900 2500 7900 1550
Connection ~ 7900 1550
Wire Wire Line
	7900 1550 9200 1550
Wire Wire Line
	8000 2800 7900 2800
Wire Wire Line
	7900 2800 7900 4200
Connection ~ 7900 4200
Wire Wire Line
	7900 4200 9200 4200
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R50
U 1 1 61315A6A
P 7000 3100
F 0 "R50" V 7000 3100 50  0000 C CNN
F 1 "1k" V 7100 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 3100 50  0001 C CNN
F 3 "~" H 7000 3100 50  0001 C CNN
	1    7000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3100 7250 3100
Text HLabel 10600 1550 2    50   Input ~ 0
5VDC
Wire Wire Line
	10500 3600 10600 3600
Wire Wire Line
	10500 3200 10600 3200
Text HLabel 10600 3200 2    50   Input ~ 0
UART_TX
Text HLabel 10600 3600 2    50   Output ~ 0
UART_RX
Text HLabel 10600 4200 2    50   UnSpc ~ 0
COM
Wire Wire Line
	1750 1600 1750 1700
Connection ~ 1750 1600
Wire Wire Line
	1750 1600 1450 1600
Wire Wire Line
	2000 1600 2000 1700
Connection ~ 2000 1600
Wire Wire Line
	2000 1600 1750 1600
Wire Wire Line
	1750 2800 1750 3600
Connection ~ 1750 3600
Wire Wire Line
	1750 3600 1650 3600
Wire Wire Line
	2000 2800 2000 3200
Connection ~ 2000 3200
Wire Wire Line
	2000 3200 1650 3200
Text HLabel 8300 3600 0    50   Input ~ 0
RSRX
Text HLabel 8300 3200 0    50   Output ~ 0
RSTX
Text HLabel 6300 2650 0    50   Output ~ 0
RS5VDC
Text HLabel 6300 4200 0    50   Output ~ 0
RSCOM
Text HLabel 6300 3100 0    50   Input ~ 0
RSCNTRL
Text HLabel 7250 3100 2    50   Output ~ 0
RC_CONTROL
Wire Wire Line
	6300 4200 7900 4200
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R51
U 1 1 5CBB7BA6
P 1500 3200
F 0 "R51" V 1500 3200 50  0000 C CNN
F 1 "1k" V 1600 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 3200 50  0001 C CNN
F 3 "~" H 1500 3200 50  0001 C CNN
	1    1500 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 3200 1000 3200
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R53
U 1 1 5CBB7E78
P 1500 3600
F 0 "R53" V 1500 3600 50  0000 C CNN
F 1 "1k" V 1600 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 3600 50  0001 C CNN
F 3 "~" H 1500 3600 50  0001 C CNN
	1    1500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 3600 1000 3600
$Comp
L conn:Conn_01x01 J14
U 1 1 5CC03287
P 1250 1600
F 0 "J14" H 1400 1600 50  0000 C CNN
F 1 "Conn_01x01" H 1170 1466 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 1250 1600 50  0001 C CNN
F 3 "~" H 1250 1600 50  0001 C CNN
	1    1250 1600
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J16
U 1 1 5CC057E0
P 800 3200
F 0 "J16" H 950 3200 50  0000 C CNN
F 1 "Conn_01x01" H 720 3066 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 800 3200 50  0001 C CNN
F 3 "~" H 800 3200 50  0001 C CNN
	1    800  3200
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J17
U 1 1 5CC05858
P 800 3600
F 0 "J17" H 950 3600 50  0000 C CNN
F 1 "Conn_01x01" H 720 3466 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 800 3600 50  0001 C CNN
F 3 "~" H 800 3600 50  0001 C CNN
	1    800  3600
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J18
U 1 1 5CC05AE4
P 1250 4200
F 0 "J18" H 1400 4200 50  0000 C CNN
F 1 "Conn_01x01" H 1170 4066 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 1250 4200 50  0001 C CNN
F 3 "~" H 1250 4200 50  0001 C CNN
	1    1250 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 5CC72503
P 5200 2050
F 0 "C12" H 4950 2000 50  0000 L CNN
F 1 "1u" H 4950 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 1900 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2200 5200 2600
Connection ~ 5200 2600
Wire Wire Line
	4950 1600 5200 1600
Wire Wire Line
	5200 1600 5200 1900
Connection ~ 4950 1600
$EndSCHEMATC

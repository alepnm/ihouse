EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
P 3600 5800
F 0 "U17" H 3150 6900 50  0000 C CNN
F 1 "St232C" H 3900 6900 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3650 4750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 3600 5900 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:MAX232-Interface U18
U 1 1 5C4DAEAB
P 6250 2250
F 0 "U18" H 6650 3350 50  0000 C CNN
F 1 "ST232C" H 5900 3350 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 6300 1200 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 6250 2350 50  0001 C CNN
	1    6250 2250
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Conn_01x08-Connector_Generic J15
U 1 1 5C5DAC7A
P 5900 5800
F 0 "J15" H 5850 5300 50  0000 L CNN
F 1 "Conn_01x08" H 5980 5701 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x08_Pitch2.54mm" H 5900 5800 50  0001 C CNN
F 3 "~" H 5900 5800 50  0001 C CNN
	1    5900 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	5700 6100 5350 6100
Wire Wire Line
	5350 6100 5350 5400
Wire Wire Line
	5350 5400 5700 5400
Wire Wire Line
	3600 4600 3600 4500
Wire Wire Line
	3600 4500 4900 4500
Wire Wire Line
	5350 4500 5350 5400
Connection ~ 5350 5400
Wire Wire Line
	5700 5500 5600 5500
Wire Wire Line
	5600 5500 5600 5700
Wire Wire Line
	5600 6000 5700 6000
Wire Wire Line
	5700 5900 5600 5900
Connection ~ 5600 5900
Wire Wire Line
	5600 5900 5600 6000
Wire Wire Line
	5700 5700 5600 5700
Connection ~ 5600 5700
Wire Wire Line
	5600 5700 5600 5900
Wire Wire Line
	3600 7000 3600 7100
Wire Wire Line
	3600 7100 4900 7100
Connection ~ 5600 6000
$Comp
L ihouse-rescue:C-Device C5
U 1 1 5C5DAC7B
P 4500 5050
F 0 "C5" H 4615 5096 50  0000 L CNN
F 1 "1u" H 4615 5005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4538 4900 50  0001 C CNN
F 3 "~" H 4500 5050 50  0001 C CNN
	1    4500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4900 4500 4900
Wire Wire Line
	4400 5200 4500 5200
$Comp
L ihouse-rescue:C-Device C4
U 1 1 5C5DAC7C
P 2700 5050
F 0 "C4" H 2450 5100 50  0000 L CNN
F 1 "1u" H 2450 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2738 4900 50  0001 C CNN
F 3 "~" H 2700 5050 50  0001 C CNN
	1    2700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4900 2800 4900
Wire Wire Line
	2700 5200 2800 5200
$Comp
L ihouse-rescue:C-Device C8
U 1 1 5C5DAC7D
P 4650 5400
F 0 "C8" V 4500 5450 50  0000 L CNN
F 1 "1u" V 4500 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4688 5250 50  0001 C CNN
F 3 "~" H 4650 5400 50  0001 C CNN
	1    4650 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5400 4400 5400
$Comp
L ihouse-rescue:C-Device C10
U 1 1 5C5DAC7F
P 4650 5700
F 0 "C10" V 4500 5750 50  0000 L CNN
F 1 "1u" V 4500 5600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4688 5550 50  0001 C CNN
F 3 "~" H 4650 5700 50  0001 C CNN
	1    4650 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5700 4400 5700
Wire Wire Line
	4400 6100 4600 6100
Text Label 4600 6100 2    50   ~ 0
TXN
Wire Wire Line
	5700 5600 5050 5600
Text Label 5050 5600 0    50   ~ 0
TXN
Wire Wire Line
	4400 6500 4600 6500
Text Label 4600 6500 2    50   ~ 0
RXN
Wire Wire Line
	5700 5800 5050 5800
Text Label 5050 5800 0    50   ~ 0
RXN
Wire Wire Line
	2800 6100 2400 6100
Wire Wire Line
	2800 6500 2150 6500
Text Label 1400 6100 0    50   ~ 0
NEX_TX
Text Label 1400 6500 0    50   ~ 0
NEX_RX
Text Label 1500 7100 0    50   ~ 0
NEX_COM
Text Label 1500 4500 0    50   ~ 0
NEX_5VDC
Wire Wire Line
	3600 2000 3350 2000
Wire Wire Line
	3600 2000 3600 1400
Wire Wire Line
	3600 900  3800 900 
Wire Wire Line
	6250 900  6250 1050
Wire Wire Line
	6250 3550 6250 3450
Wire Wire Line
	3350 2450 3800 2450
Wire Wire Line
	5450 2550 5350 2550
Wire Wire Line
	5450 2950 5350 2950
$Comp
L ihouse-rescue:C-Device C6
U 1 1 5DF2F8F2
P 5350 1500
F 0 "C6" H 5100 1650 50  0000 L CNN
F 1 "1u" H 5100 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5388 1350 50  0001 C CNN
F 3 "~" H 5350 1500 50  0001 C CNN
	1    5350 1500
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:C-Device C7
U 1 1 5C5DAC99
P 7150 1500
F 0 "C7" H 7265 1546 50  0000 L CNN
F 1 "1u" H 7265 1455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7188 1350 50  0001 C CNN
F 3 "~" H 7150 1500 50  0001 C CNN
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:C-Device C9
U 1 1 5DF2FB58
P 5200 1850
F 0 "C9" V 5350 1900 50  0000 L CNN
F 1 "1u" V 5350 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 1700 50  0001 C CNN
F 3 "~" H 5200 1850 50  0001 C CNN
	1    5200 1850
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:C-Device C11
U 1 1 5C5DAC9B
P 5200 2150
F 0 "C11" V 5050 2200 50  0000 L CNN
F 1 "1u" V 5050 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 2000 50  0001 C CNN
F 3 "~" H 5200 2150 50  0001 C CNN
	1    5200 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 2150 5350 2150
Wire Wire Line
	5450 1850 5350 1850
Wire Wire Line
	5450 1350 5350 1350
Wire Wire Line
	5450 1650 5350 1650
Wire Wire Line
	7050 1350 7150 1350
Wire Wire Line
	7050 1650 7150 1650
Wire Wire Line
	3600 4500 2400 4500
Connection ~ 3600 4500
Connection ~ 3600 7100
Wire Wire Line
	6250 900  7650 900 
Connection ~ 6250 900 
Connection ~ 6250 3550
Wire Wire Line
	7050 2550 7250 2550
Wire Wire Line
	7050 2950 7250 2950
$Comp
L ihouse-rescue:Thermistor_NTC-Device TH2
U 1 1 5C5DACB1
P 3600 1250
F 0 "TH2" H 3300 1300 50  0000 L CNN
F 1 "1210L005WR" H 3000 1200 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 3600 1300 50  0001 C CNN
F 3 "~" H 3600 1300 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1100 3600 900 
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R47
U 1 1 5C5DACB3
P 2150 4750
F 0 "R47" V 2150 4750 50  0000 C CNN
F 1 "1k" V 2250 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 4750 50  0001 C CNN
F 3 "~" H 2150 4750 50  0001 C CNN
	1    2150 4750
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R48
U 1 1 5C5DACB4
P 2400 4750
F 0 "R48" V 2400 4750 50  0000 C CNN
F 1 "1k" V 2500 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2330 4750 50  0001 C CNN
F 3 "~" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:LED-Device D16
U 1 1 5C5DACB5
P 2150 5550
F 0 "D16" V 2250 5750 50  0000 R CNN
F 1 "RX" V 2150 5750 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 2150 5550 50  0001 C CNN
F 3 "~" H 2150 5550 50  0001 C CNN
	1    2150 5550
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:LED-Device D17
U 1 1 5C5DACB6
P 2400 5550
F 0 "D17" V 2500 5450 50  0000 R CNN
F 1 "TX" V 2400 5450 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 2400 5550 50  0001 C CNN
F 3 "~" H 2400 5550 50  0001 C CNN
	1    2400 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 5400 2150 4900
Wire Wire Line
	2400 5400 2400 4900
$Comp
L ihouse-rescue:LED-Device D18
U 1 1 5F57F66C
P 3800 2100
F 0 "D18" V 3850 1950 50  0000 R CNN
F 1 "RC" V 3750 1950 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3800 2100 50  0001 C CNN
F 3 "~" H 3800 2100 50  0001 C CNN
	1    3800 2100
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R49
U 1 1 5C5DACD1
P 3800 1600
F 0 "R49" V 3800 1600 50  0000 C CNN
F 1 "2k" V 3900 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3730 1600 50  0001 C CNN
F 3 "~" H 3800 1600 50  0001 C CNN
	1    3800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1450 3800 900 
Connection ~ 3800 900 
Wire Wire Line
	3800 900  4950 900 
Wire Wire Line
	3800 1750 3800 1950
Wire Wire Line
	3800 2250 3800 2450
Connection ~ 3800 2450
Wire Wire Line
	3800 2450 3900 2450
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R54
U 1 1 5C5DACD2
P 7400 2950
F 0 "R54" V 7400 2950 50  0000 C CNN
F 1 "1k" V 7500 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7330 2950 50  0001 C CNN
F 3 "~" H 7400 2950 50  0001 C CNN
	1    7400 2950
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R52
U 1 1 5C5DACD3
P 7400 2550
F 0 "R52" V 7400 2550 50  0000 C CNN
F 1 "1k" V 7500 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7330 2550 50  0001 C CNN
F 3 "~" H 7400 2550 50  0001 C CNN
	1    7400 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5400 4900 5400
Wire Wire Line
	4900 5400 4900 4500
Connection ~ 4900 4500
Wire Wire Line
	4900 4500 5350 4500
Wire Wire Line
	4800 5700 4900 5700
Wire Wire Line
	4900 5700 4900 7100
Connection ~ 4900 7100
Wire Wire Line
	4900 7100 5600 7100
Wire Wire Line
	6250 3550 7650 3550
Wire Wire Line
	5600 6000 5600 7100
Wire Wire Line
	1400 7100 3600 7100
Wire Wire Line
	5050 1850 4950 1850
Wire Wire Line
	4950 1850 4950 900 
Connection ~ 4950 900 
Wire Wire Line
	4950 900  6250 900 
Wire Wire Line
	5050 2150 4950 2150
Wire Wire Line
	4950 2150 4950 3550
Connection ~ 4950 3550
Wire Wire Line
	4950 3550 6250 3550
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R50
U 1 1 61315A6A
P 4050 2450
F 0 "R50" V 4050 2450 50  0000 C CNN
F 1 "1k" V 4150 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 2450 50  0001 C CNN
F 3 "~" H 4050 2450 50  0001 C CNN
	1    4050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2450 4300 2450
Text HLabel 7650 900  2    50   Input ~ 0
5VDC
Wire Wire Line
	7550 2950 7650 2950
Wire Wire Line
	7550 2550 7650 2550
Text HLabel 7650 2550 2    50   Input ~ 0
UART_TX
Text HLabel 7650 2950 2    50   Output ~ 0
UART_RX
Text HLabel 7650 3550 2    50   UnSpc ~ 0
COM
Wire Wire Line
	2150 4500 2150 4600
Connection ~ 2150 4500
Wire Wire Line
	2150 4500 1400 4500
Wire Wire Line
	2400 4500 2400 4600
Connection ~ 2400 4500
Wire Wire Line
	2400 4500 2150 4500
Wire Wire Line
	2150 5700 2150 6500
Connection ~ 2150 6500
Wire Wire Line
	2150 6500 2050 6500
Wire Wire Line
	2400 5700 2400 6100
Connection ~ 2400 6100
Wire Wire Line
	2400 6100 2050 6100
Text HLabel 5350 2950 0    50   Input ~ 0
RSRX
Text HLabel 5350 2550 0    50   Output ~ 0
RSTX
Text HLabel 3350 2000 0    50   Output ~ 0
RS5VDC
Text HLabel 3350 3550 0    50   Output ~ 0
RSCOM
Text HLabel 3350 2450 0    50   Input ~ 0
RSCNTRL
Text HLabel 4300 2450 2    50   Output ~ 0
RC_CONTROL
Wire Wire Line
	3350 3550 4950 3550
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R51
U 1 1 5CBB7BA6
P 1900 6100
F 0 "R51" V 1900 6100 50  0000 C CNN
F 1 "1k" V 2000 6100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 6100 50  0001 C CNN
F 3 "~" H 1900 6100 50  0001 C CNN
	1    1900 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6100 1400 6100
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R53
U 1 1 5CBB7E78
P 1900 6500
F 0 "R53" V 1900 6500 50  0000 C CNN
F 1 "1k" V 2000 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 6500 50  0001 C CNN
F 3 "~" H 1900 6500 50  0001 C CNN
	1    1900 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6500 1400 6500
$Comp
L ihouse-rescue:Conn_01x01-conn J14
U 1 1 5CC03287
P 1200 4500
F 0 "J14" H 1350 4500 50  0000 C CNN
F 1 "Conn_01x01" H 1120 4366 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 1200 4500 50  0001 C CNN
F 3 "~" H 1200 4500 50  0001 C CNN
	1    1200 4500
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Conn_01x01-conn J16
U 1 1 5CC057E0
P 1200 6100
F 0 "J16" H 1350 6100 50  0000 C CNN
F 1 "Conn_01x01" H 1120 5966 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 1200 6100 50  0001 C CNN
F 3 "~" H 1200 6100 50  0001 C CNN
	1    1200 6100
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Conn_01x01-conn J17
U 1 1 5CC05858
P 1200 6500
F 0 "J17" H 1350 6500 50  0000 C CNN
F 1 "Conn_01x01" H 1120 6366 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 1200 6500 50  0001 C CNN
F 3 "~" H 1200 6500 50  0001 C CNN
	1    1200 6500
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Conn_01x01-conn J18
U 1 1 5CC05AE4
P 1200 7100
F 0 "J18" H 1350 7100 50  0000 C CNN
F 1 "Conn_01x01" H 1120 6966 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_SMD_5x10mm" H 1200 7100 50  0001 C CNN
F 3 "~" H 1200 7100 50  0001 C CNN
	1    1200 7100
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:C-Device C12
U 1 1 5CC72503
P 5600 4950
F 0 "C12" H 5350 4900 50  0000 L CNN
F 1 "1u" H 5350 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5638 4800 50  0001 C CNN
F 3 "~" H 5600 4950 50  0001 C CNN
	1    5600 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 5100 5600 5500
Connection ~ 5600 5500
Wire Wire Line
	5350 4500 5600 4500
Wire Wire Line
	5600 4500 5600 4800
Connection ~ 5350 4500
Text Notes 3000 2150 0    50   ~ 0
150mA MAX
$EndSCHEMATC

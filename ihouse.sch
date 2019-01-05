EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 14000 14850 0    50   ~ 0
230VAC_L
Text Label 14000 14950 0    50   ~ 0
230VAC_N
Text Label 14000 15050 0    50   ~ 0
PE
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J?
U 1 1 5BC9AA2A
P 14700 14000
F 0 "J?" H 14780 13996 50  0000 L CNN
F 1 "Conn_01x01" H 14780 13951 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14000 50  0001 C CNN
F 3 "~" H 14700 14000 50  0001 C CNN
	1    14700 14000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J?
U 1 1 5BC9AB40
P 14700 14150
F 0 "J?" H 14780 14146 50  0000 L CNN
F 1 "Conn_01x01" H 14780 14101 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14150 50  0001 C CNN
F 3 "~" H 14700 14150 50  0001 C CNN
	1    14700 14150
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J?
U 1 1 5BC9AB58
P 14700 14300
F 0 "J?" H 14780 14296 50  0000 L CNN
F 1 "Conn_01x01" H 14780 14251 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14300 50  0001 C CNN
F 3 "~" H 14700 14300 50  0001 C CNN
	1    14700 14300
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J?
U 1 1 5BC9AB72
P 14700 14450
F 0 "J?" H 14780 14446 50  0000 L CNN
F 1 "Conn_01x01" H 14780 14401 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14450 50  0001 C CNN
F 3 "~" H 14700 14450 50  0001 C CNN
	1    14700 14450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 14000 14400 14000
Wire Wire Line
	14400 14000 14400 14150
Wire Wire Line
	14000 14450 14400 14450
Wire Wire Line
	14400 14300 14500 14300
Connection ~ 14400 14300
Wire Wire Line
	14400 14150 14500 14150
Connection ~ 14400 14150
Connection ~ 14400 14450
Text Label 14000 14450 0    50   ~ 0
PE
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x03-ihouse-rescue J?
U 1 1 5BC74B70
P 14700 14950
F 0 "J?" H 14780 14946 50  0000 L CNN
F 1 "Conn_01x03" H 14780 14901 50  0001 L CNN
F 2 "Connectors_Phoenix:PhoenixContact_MSTBA-G_03x5.00mm_Angled" H 14700 14950 50  0001 C CNN
F 3 "~" H 14700 14950 50  0001 C CNN
	1    14700 14950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 14850 14000 14850
Wire Wire Line
	14500 14950 14000 14950
Wire Wire Line
	14500 15050 14000 15050
Text Label 16950 5350 0    50   ~ 0
OUTAC1
Text Label 16950 5450 0    50   ~ 0
OUTAC2
Text Label 16950 5550 0    50   ~ 0
OUTAC3
Text Label 16950 5650 0    50   ~ 0
OUTAC4
Text Label 16950 5750 0    50   ~ 0
OUTAC5
Text Label 18300 5350 2    50   ~ 0
ACN
Text Label 16950 5850 0    50   ~ 0
OUTAC6
Text Label 16950 5950 0    50   ~ 0
OUTAC7
$Comp
L ihouse-rescue:Connector_Generic_Conn_02x12_Counter_Clockwise-ihouse-rescue J?
U 1 1 5C039156
P 17550 5850
F 0 "J?" H 17600 6450 50  0000 C CNN
F 1 "AC OUTS" H 17600 5150 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A_2x12_P4.20mm_Vertical" H 17550 5850 50  0001 C CNN
F 3 "~" H 17550 5850 50  0001 C CNN
	1    17550 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	17350 5350 16950 5350
Wire Wire Line
	17350 5450 16950 5450
Wire Wire Line
	17350 5550 16950 5550
Wire Wire Line
	17350 5650 16950 5650
Wire Wire Line
	17350 5750 16950 5750
Wire Wire Line
	17850 5350 17950 5350
Wire Wire Line
	17950 5350 17950 5450
Wire Wire Line
	17950 5750 17850 5750
Wire Wire Line
	17950 5650 17850 5650
Connection ~ 17950 5650
Wire Wire Line
	17950 5550 17850 5550
Connection ~ 17950 5550
Wire Wire Line
	17950 5450 17850 5450
Connection ~ 17950 5450
Connection ~ 17950 5350
Wire Wire Line
	17350 6450 16950 6450
Wire Wire Line
	17850 6450 18300 6450
Wire Wire Line
	17350 5850 16950 5850
Wire Wire Line
	17350 5950 16950 5950
Wire Wire Line
	17950 5950 17850 5950
Connection ~ 17950 5750
Wire Wire Line
	17850 5850 17950 5850
Connection ~ 17950 5850
Wire Wire Line
	17350 4200 17050 4200
Wire Wire Line
	17850 4200 18150 4200
Wire Wire Line
	17350 4300 17050 4300
Wire Wire Line
	17850 4300 18150 4300
$Comp
L ihouse-rescue:Connector_Generic_Conn_02x02_Counter_Clockwise-ihouse-rescue J?
U 1 1 5C03917E
P 17550 4200
F 0 "J?" H 17600 4300 50  0000 C CNN
F 1 "AC INPUTS" H 17600 4000 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 17550 4200 50  0001 C CNN
F 3 "~" H 17550 4200 50  0001 C CNN
	1    17550 4200
	1    0    0    -1  
$EndComp
Text Label 17050 4200 0    50   ~ 0
INACL1
Text Label 18150 4200 2    50   ~ 0
INACN1
Text Label 17050 4300 0    50   ~ 0
INACL2
Text Label 18150 4300 2    50   ~ 0
INACN2
Wire Wire Line
	17950 6050 17850 6050
Connection ~ 17950 5950
Wire Wire Line
	17350 6050 16950 6050
Text Label 16950 6050 0    50   ~ 0
OUTAC8
Text Notes 16950 7700 0    50   ~ 0
OUTAC1  -> lempa 1\nOUTAC2  -> lempa 2\nOUTAC3  -> lempa 3\nOUTAC4  -> lempa 4\nOUTAC5  -> lempa 5\nOUTAC6  -> koridoriaus apsvietimas\nOUTAC7  -> \nOUTAC8  -> \nOUTAC9  -> ventiliatorius WC\nOUTAC10 -> protinga rozete\nOUTAC11 -> garu surinktuvas\nOUTAC12 -> duso kabina
Text Label 16950 6450 0    50   ~ 0
OUTAC12
Text Label 18300 6450 2    50   ~ 0
OUTAC12N
Wire Wire Line
	17350 6150 16950 6150
Text Label 16950 6150 0    50   ~ 0
OUTAC9
Wire Wire Line
	17950 6150 17850 6150
Wire Wire Line
	17350 6350 16950 6350
Wire Wire Line
	17850 6350 18300 6350
Text Label 16950 6350 0    50   ~ 0
OUTAC11
Text Label 18300 6350 2    50   ~ 0
OUTAC11N
Wire Wire Line
	17350 6250 16950 6250
Wire Wire Line
	17850 6250 18300 6250
Text Label 16950 6250 0    50   ~ 0
OUTAC10
Text Label 18300 6250 2    50   ~ 0
OUTAC10N
Connection ~ 17950 6050
Text Notes 17050 4850 0    50   ~ 0
INACL1 -> WC apsvietimas L\nINACN1 -> WC apsvietimas N\nINACL2 -> vonios apsvietimas L\nINACN2 -> vonios apsvietimas N
Wire Wire Line
	14400 14300 14400 14450
Wire Wire Line
	14400 14150 14400 14300
Wire Wire Line
	14400 14450 14500 14450
Wire Wire Line
	17950 5650 17950 5750
Wire Wire Line
	17950 5550 17950 5650
Wire Wire Line
	17950 5450 17950 5550
Wire Wire Line
	17950 5350 18300 5350
Wire Wire Line
	17950 5750 17950 5850
Wire Wire Line
	17950 5850 17950 5950
Wire Wire Line
	17950 5950 17950 6050
Wire Wire Line
	17950 6050 17950 6150
$Comp
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U?
U 1 1 5BC77E06
P 2300 8800
F 0 "U?" H 2300 9125 50  0000 C CNN
F 1 "LTV-817" H 2300 9034 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2100 8600 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 2300 8700 50  0001 L CNN
	1    2300 8800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 8900 1450 8900
Text Label 1450 8900 0    50   ~ 0
COM
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D?
U 1 1 5BC77E07
P 2900 8800
F 0 "D?" V 2854 8879 50  0000 L CNN
F 1 "LL4148" V 2945 8879 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 2900 8625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 2900 8800 50  0001 C CNN
	1    2900 8800
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 8700 2700 8700
Wire Wire Line
	2700 8700 2700 8550
Wire Wire Line
	2700 8550 2900 8550
Wire Wire Line
	2900 8550 2900 8650
Wire Wire Line
	2600 8900 2700 8900
Wire Wire Line
	2700 8900 2700 9050
Wire Wire Line
	2700 9050 2900 9050
Wire Wire Line
	2900 9050 2900 8950
Wire Wire Line
	2900 8550 3150 8550
Connection ~ 2900 8550
Wire Wire Line
	2900 9050 3150 9050
Connection ~ 2900 9050
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44B3
P 3300 8550
F 0 "R?" V 3200 8450 50  0000 C CNN
F 1 "33k" V 3200 8650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3230 8550 50  0001 C CNN
F 3 "~" H 3300 8550 50  0001 C CNN
	1    3300 8550
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44BA
P 3300 9050
F 0 "R?" V 3200 8950 50  0000 C CNN
F 1 "33k" V 3200 9150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3230 9050 50  0001 C CNN
F 3 "~" H 3300 9050 50  0001 C CNN
	1    3300 9050
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44B4
P 3700 8550
F 0 "R?" V 3600 8450 50  0000 C CNN
F 1 "33k" V 3600 8650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3630 8550 50  0001 C CNN
F 3 "~" H 3700 8550 50  0001 C CNN
	1    3700 8550
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44BB
P 3700 9050
F 0 "R?" V 3600 8950 50  0000 C CNN
F 1 "33k" V 3600 9150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3630 9050 50  0001 C CNN
F 3 "~" H 3700 9050 50  0001 C CNN
	1    3700 9050
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 8550 3550 8550
Wire Wire Line
	3450 9050 3550 9050
Wire Wire Line
	1450 8700 2000 8700
Text Label 1450 8700 0    50   ~ 0
LPULSE
Wire Wire Line
	3150 9400 3050 9400
Wire Wire Line
	2750 9400 2650 9400
Wire Wire Line
	2650 9400 2650 9450
Wire Wire Line
	3150 9800 2650 9800
Wire Wire Line
	2650 9800 2650 9750
Wire Wire Line
	2650 9800 2150 9800
Wire Wire Line
	2150 9800 2150 9850
Connection ~ 2650 9800
Wire Wire Line
	2050 9800 2150 9800
Connection ~ 2150 9800
Wire Wire Line
	2650 9400 1450 9400
Connection ~ 2650 9400
Wire Wire Line
	1750 9800 1450 9800
Text Label 1450 9400 0    50   ~ 0
VLINE
Text Label 1450 9800 0    50   ~ 0
3VDC
$Comp
L ihouse-rescue:capacitors_CP_100uFx16V-ihouse-rescue C?
U 1 1 5C3B44AF
P 2650 10000
F 0 "C?" H 2350 10050 50  0000 L CNN
F 1 "100uFx16V" H 2100 9950 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 3500 10250 50  0001 C CNN
F 3 "" H 2675 10100 50  0001 C CNN
F 4 "-" H 2700 9750 60  0001 C CNN "ventcode"
F 5 "0.06" H 3400 10050 60  0001 C CNN "Kaina"
F 6 "Kondensatorius elektrolitinis" H 3500 10350 60  0001 C CNN "Pavadinimas"
F 7 "100uFx16V" H 2768 9954 60  0001 L CNN "Nominalas"
F 8 "DIP" H 3600 10150 60  0001 C CNN "Korpuso tipas"
	1    2650 10000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 9850 2650 9800
Wire Wire Line
	3950 9400 4150 9400
Wire Wire Line
	3950 9800 4000 9800
Text Label 4800 9400 2    50   ~ 0
230L
Text Label 4800 9800 2    50   ~ 0
230N
$Comp
L ihouse-rescue:disc_Transformer_TEZ_22x24_6V-ihouse-rescue T?
U 1 1 5BCA7928
P 3550 9600
F 0 "T?" H 3550 9887 50  0000 C CNN
F 1 "Transformer_TEZ_22x24_6V" H 3550 9887 50  0001 C CNN
F 2 "Transformer_THT:Transformer_Breve_TEZ-22x24" H 4950 9700 50  0001 C CNN
F 3 "" H 3550 9850 50  0001 C CNN
	1    3550 9600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 9050 4000 9800
Wire Wire Line
	3850 9050 4000 9050
Connection ~ 4000 9800
Wire Wire Line
	4000 9800 4800 9800
Wire Wire Line
	4150 8550 4150 9400
Wire Wire Line
	3850 8550 4150 8550
Connection ~ 4150 9400
Wire Wire Line
	4150 9400 4250 9400
$Comp
L ihouse-rescue:Device_Thermistor_PTC-ihouse-rescue TH?
U 1 1 5C3B44B5
P 4400 9400
F 0 "TH?" V 4250 9350 50  0000 C CNN
F 1 "230V/150mA" V 4550 9400 50  0000 C CNN
F 2 "" H 4450 9200 50  0001 L CNN
F 3 "~" H 4400 9400 50  0001 C CNN
	1    4400 9400
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 9400 4800 9400
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC77E14
P 2900 9400
F 0 "R?" V 2800 9300 50  0000 C CNN
F 1 "1k" V 2800 9500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 9400 50  0001 C CNN
F 3 "~" H 2900 9400 50  0001 C CNN
	1    2900 9400
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC77E15
P 2650 9600
F 0 "R?" H 2800 9650 50  0000 C CNN
F 1 "120" H 2800 9550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 9600 50  0001 C CNN
F 3 "~" H 2650 9600 50  0001 C CNN
	1    2650 9600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC77E16
P 2150 10000
F 0 "R?" H 2300 10050 50  0000 C CNN
F 1 "Rx" H 2300 9950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 10000 50  0001 C CNN
F 3 "~" H 2150 10000 50  0001 C CNN
	1    2150 10000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44B9
P 1900 9800
F 0 "R?" V 2000 9900 50  0000 C CNN
F 1 "Rx" V 2000 9750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1830 9800 50  0001 C CNN
F 3 "~" H 1900 9800 50  0001 C CNN
	1    1900 9800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 10250 2650 10250
Wire Wire Line
	2150 10150 2150 10250
Wire Wire Line
	2650 10150 2650 10250
Wire Wire Line
	2150 10250 1800 10250
Connection ~ 2150 10250
Text Label 1800 10250 0    50   ~ 0
COM
$Comp
L ihouse-rescue:unicon_v1-unicon M?
U 1 1 5C94CB7C
P 3200 3250
F 0 "M?" H 3200 4715 50  0000 C CNN
F 1 "unicon_v1" H 3200 4624 50  0000 C CNN
F 2 "unicon:unicon_v1" H 3200 6350 50  0001 C CNN
F 3 "" H 3200 6350 50  0001 C CNN
	1    3200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2200 1900 2200
Text Label 1900 2200 0    50   ~ 0
5VDC
Wire Wire Line
	2250 2100 1900 2100
Text Label 1900 2100 0    50   ~ 0
12VDC
Wire Wire Line
	2250 2400 2150 2400
Wire Wire Line
	2150 2400 2150 2500
Wire Wire Line
	2150 2600 2250 2600
Wire Wire Line
	2250 2500 2150 2500
Connection ~ 2150 2500
Wire Wire Line
	2150 2500 2150 2600
Wire Wire Line
	2150 2600 1900 2600
Connection ~ 2150 2600
Text Label 1900 2600 0    50   ~ 0
COM
Wire Wire Line
	4150 2700 4400 2700
Text Label 4400 2700 2    50   ~ 0
COM
Wire Wire Line
	10150 7000 10250 7000
Wire Wire Line
	10150 7400 10250 7400
Text HLabel 10250 7000 2    50   Output ~ 0
OUTAC10
Text HLabel 10250 7400 2    50   Output ~ 0
OUTAC10N
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5BC643F3
P 7650 -7400
F 0 "U?" H 7650 -7087 50  0000 C CNN
F 1 "MOC3060S" H 9300 -7250 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 8500 -7350 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 8500 -7450 50  0001 L CNN
F 4 "-" H 7650 -7800 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 8850 -7250 60  0001 C CNN "Pavadinimas"
F 6 "0" H 9300 -7550 60  0001 C CNN "Kaina"
F 7 "SMD" H 8950 -7550 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 7650 -7176 47  0000 C CNN "Gamintojo kodas"
	1    7650 -7400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC6465A
P 8300 -7500
F 0 "R?" V 8200 -7600 50  0000 C CNN
F 1 "R" V 8200 -7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 -7500 50  0001 C CNN
F 3 "~" H 8300 -7500 50  0001 C CNN
	1    8300 -7500
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 -7500 7950 -7500
Wire Wire Line
	8450 -7500 8700 -7500
Wire Wire Line
	8700 -7500 8700 -7400
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E406542
P 8300 -7150
F 0 "R?" V 8200 -7250 50  0000 C CNN
F 1 "R" V 8200 -7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 -7150 50  0001 C CNN
F 3 "~" H 8300 -7150 50  0001 C CNN
	1    8300 -7150
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 -7150 8550 -7150
Wire Wire Line
	8150 -7150 8050 -7150
Wire Wire Line
	8050 -7300 8050 -7150
Wire Wire Line
	8050 -7300 7950 -7300
Connection ~ 8050 -7150
Text HLabel 8250 -6250 2    50   Output ~ 0
OUTAC9
Connection ~ 8700 -7500
Text Label 10300 -7500 2    50   ~ 0
ACL
Wire Wire Line
	7350 -7500 7250 -7500
Wire Wire Line
	7350 -7300 6850 -7300
Wire Wire Line
	9950 -5700 9950 -5600
Wire Wire Line
	9950 -5600 10200 -5600
Text HLabel 10250 -6400 2    50   Output ~ 0
INACL1
Text HLabel 10200 -5600 2    50   Output ~ 0
INACN1
Wire Wire Line
	10150 5950 10400 5950
Text Label 10400 5450 2    50   ~ 0
ACL
Wire Wire Line
	9250 6350 9550 6350
Wire Wire Line
	10150 6350 10400 6350
Wire Wire Line
	9250 7800 9550 7800
Wire Wire Line
	10150 7800 10400 7800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5AE
P 7100 -7500
F 0 "R?" V 7000 -7600 50  0000 C CNN
F 1 "R" V 7000 -7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 -7500 50  0001 C CNN
F 3 "~" H 7100 -7500 50  0001 C CNN
	1    7100 -7500
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 -7500 6850 -7500
Wire Wire Line
	8750 5850 8900 5850
Wire Wire Line
	8750 5450 9000 5450
$Comp
L ihouse-rescue:Device_Fuse-ihouse-rescue F?
U 1 1 5E406546
P 9550 5450
F 0 "F?" V 9450 5350 50  0000 C CNN
F 1 "3A" V 9450 5550 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 9480 5450 50  0001 C CNN
F 3 "~" H 9550 5450 50  0001 C CNN
	1    9550 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 5450 10400 5450
Wire Wire Line
	9550 -6500 9550 -6650
Wire Wire Line
	8700 -6500 8700 -7100
Wire Wire Line
	9950 -6650 9950 -6550
Wire Wire Line
	9950 -6550 10250 -6550
Wire Wire Line
	9950 -7250 9950 -7350
Wire Wire Line
	9950 -7350 10250 -7350
Text HLabel 10250 -7350 2    50   Output ~ 0
INACL2
Text HLabel 10250 -6550 2    50   Output ~ 0
INACN2
Wire Wire Line
	8050 -6500 8700 -6500
Connection ~ 8050 -6500
Connection ~ 8700 -6500
Wire Wire Line
	9450 -7500 9450 -7250
Connection ~ 9450 -7500
Wire Wire Line
	9950 -6400 10250 -6400
Wire Wire Line
	9950 -6400 9950 -6300
Wire Wire Line
	7600 -6250 8050 -6250
Wire Wire Line
	9550 -5700 9550 -5600
Wire Wire Line
	9550 -5600 9300 -5600
Wire Wire Line
	9300 -5600 9300 -7500
Connection ~ 9300 -7500
Wire Wire Line
	9000 5450 9000 6900
Wire Wire Line
	9000 6900 9550 6900
Connection ~ 9000 5450
Wire Wire Line
	8900 7300 8900 5850
Wire Wire Line
	8900 7300 9550 7300
Connection ~ 8900 5850
$Comp
L ihouse-rescue:Relay_G5Q-1A-ihouse-rescue K?
U 1 1 5E406565
P 9750 -4900
F 0 "K?" H 9320 -4900 50  0000 R CNN
F 1 "G5Q-1A" H 9320 -4855 50  0001 R CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 10100 -4950 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 10850 -5200 50  0001 C CNN
	1    9750 -4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 -5200 9550 -5300
Wire Wire Line
	9550 -5300 9350 -5300
Wire Wire Line
	9550 -4600 9550 -4500
Wire Wire Line
	9550 -4500 9350 -4500
Wire Wire Line
	9950 -5200 9950 -5300
Wire Wire Line
	9950 -5300 10250 -5300
Wire Wire Line
	9950 -4600 9950 -4500
Wire Wire Line
	9950 -4500 10100 -4500
Text Label 10250 -5300 2    50   ~ 0
ACL
Text HLabel 10100 -4500 2    50   Output ~ 0
OUTAC6
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E406566
P 8700 -7250
F 0 "D?" H 8829 -7204 50  0000 L CNN
F 1 "Z0103MN" H 8829 -7295 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9450 -7400 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 8850 -6950 50  0001 C CNN
	1    8700 -7250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB53
P 7100 -6650
F 0 "R?" V 7000 -6750 50  0000 C CNN
F 1 "33k" V 7000 -6550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 -6650 50  0001 C CNN
F 3 "~" H 7100 -6650 50  0001 C CNN
	1    7100 -6650
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB1E
P 7450 -6650
F 0 "R?" V 7350 -6750 50  0000 C CNN
F 1 "33k" V 7350 -6550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7380 -6650 50  0001 C CNN
F 3 "~" H 7450 -6650 50  0001 C CNN
	1    7450 -6650
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5AD
P 7100 -6250
F 0 "R?" V 7000 -6350 50  0000 C CNN
F 1 "33k" V 7000 -6150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 -6250 50  0001 C CNN
F 3 "~" H 7100 -6250 50  0001 C CNN
	1    7100 -6250
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5DB
P 7450 -6250
F 0 "R?" V 7350 -6350 50  0000 C CNN
F 1 "33k" V 7350 -6150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7380 -6250 50  0001 C CNN
F 3 "~" H 7450 -6250 50  0001 C CNN
	1    7450 -6250
	0    1    1    0   
$EndComp
Connection ~ 8050 -6250
Wire Wire Line
	7300 -6650 7250 -6650
Wire Wire Line
	7300 -6250 7250 -6250
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D?
U 1 1 5CB6E5DC
P 6550 -6450
F 0 "D?" V 6504 -6371 50  0000 L CNN
F 1 "LL4148" V 6595 -6371 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 6550 -6625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 6550 -6450 50  0001 C CNN
	1    6550 -6450
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 -6550 6400 -6550
Wire Wire Line
	6400 -6550 6400 -6650
Wire Wire Line
	6400 -6650 6550 -6650
Wire Wire Line
	6350 -6350 6400 -6350
Wire Wire Line
	6400 -6350 6400 -6250
Wire Wire Line
	6400 -6250 6550 -6250
Wire Wire Line
	6550 -6650 6550 -6600
Connection ~ 6550 -6650
Wire Wire Line
	6550 -6250 6550 -6300
Connection ~ 6550 -6250
$Comp
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U?
U 1 1 5E4BCB54
P 6050 -6450
F 0 "U?" H 6050 -6125 50  0000 C CNN
F 1 "LTV-817" H 6050 -6216 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 5850 -6650 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 6050 -6550 50  0001 L CNN
	1    6050 -6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 -6350 5650 -6350
Wire Wire Line
	5750 -6550 5650 -6550
$Comp
L ihouse-rescue:Relay_RT42xxxx-ihouse-rescue K2
U 1 1 5E406543
P 9850 7400
F 0 "K2" V 10500 7400 50  0000 C CNN
F 1 "RT42xxxx" V 10526 7400 50  0001 C CNN
F 2 "Relay_THT:Relay_DPDT_Schrack-RT2-FormC_RM5mm" H 9850 7400 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FRT2%7F1014%7Fpdf%7FEnglish%7FENG_DS_RT2_1014.pdf%7F6-1393243-3" H 10500 7550 50  0001 C CNN
	1    9850 7400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 -6500 9450 -6300
Connection ~ 9450 -6500
$Comp
L ihouse-rescue:Relay_FINDER-32.21-x300-ihouse-rescue K?
U 1 1 5E406544
P 9750 -6950
F 0 "K?" H 9320 -6950 50  0000 R CNN
F 1 "FINDER-32.21-x300" H 9320 -6995 50  0001 R CNN
F 2 "Relay_THT:Relay_SPST_Schrack-RT1-FormA_RM5mm" H 11020 -6980 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 9750 -6950 50  0001 C CNN
	1    9750 -6950
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-32.21-x300-ihouse-rescue K?
U 1 1 5BC77E0E
P 9750 -6000
F 0 "K?" H 9320 -6000 50  0000 R CNN
F 1 "FINDER-32.21-x300" H 9320 -6045 50  0001 R CNN
F 2 "Relay_THT:Relay_SPST_Schrack-RT1-FormA_RM5mm" H 11020 -6030 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 9750 -6000 50  0001 C CNN
	1    9750 -6000
	-1   0    0    -1  
$EndComp
Text HLabel 8750 5450 0    50   Input ~ 0
230L
Text HLabel 8750 5850 0    50   Input ~ 0
230N
Text HLabel 6850 -7500 0    50   Input ~ 0
12VDC
Text HLabel 6850 -7300 0    50   Input ~ 0
OC1
Text HLabel 5650 -6550 0    50   Input ~ 0
LIGHTON
Text HLabel 5650 -6350 0    50   Input ~ 0
COM
Text HLabel 9350 -5300 0    50   Input ~ 0
12VDC
Text HLabel 9350 -4500 0    50   Input ~ 0
K3
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5DD
P 13400 1850
F 0 "U?" H 13400 2163 50  0000 C CNN
F 1 "MOC3060S" H 15050 2000 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 1900 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 1800 50  0001 L CNN
F 4 "-" H 13400 1450 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 2000 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 1700 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 1700 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 2074 47  0000 C CNN "Gamintojo kodas"
	1    13400 1850
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C7
P 14050 1750
F 0 "R?" V 13950 1650 50  0000 C CNN
F 1 "R" V 13950 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 1750 50  0001 C CNN
F 3 "~" H 14050 1750 50  0001 C CNN
	1    14050 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 1750 13700 1750
Wire Wire Line
	14200 1750 14450 1750
Wire Wire Line
	14450 1750 14450 1850
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB47
P 14050 2100
F 0 "R?" V 13950 2000 50  0000 C CNN
F 1 "R" V 13950 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 2100 50  0001 C CNN
F 3 "~" H 14050 2100 50  0001 C CNN
	1    14050 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 2100 14300 2100
Wire Wire Line
	13900 2100 13800 2100
Wire Wire Line
	13800 1950 13800 2100
Wire Wire Line
	13800 1950 13700 1950
Wire Wire Line
	13800 2300 14450 2300
Wire Wire Line
	14450 2300 14450 2150
Connection ~ 13800 2100
Connection ~ 14450 2300
Connection ~ 14450 1750
Text Label 14850 1750 2    50   ~ 0
ACL
Text HLabel 14600 2300 2    50   Output ~ 0
OUTAC1
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5BD538B7
P 14450 2000
F 0 "D?" H 14579 2046 50  0000 L CNN
F 1 "Z0103MN" H 14579 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 1850 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 2300 50  0001 C CNN
	1    14450 2000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5BD586E6
P 13400 2650
F 0 "U?" H 13400 2963 50  0000 C CNN
F 1 "MOC3060S" H 15050 2800 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 2700 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 2600 50  0001 L CNN
F 4 "-" H 13400 2250 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 2800 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 2500 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 2500 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 2874 47  0000 C CNN "Gamintojo kodas"
	1    13400 2650
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB48
P 14050 2550
F 0 "R?" V 13950 2450 50  0000 C CNN
F 1 "R" V 13950 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 2550 50  0001 C CNN
F 3 "~" H 14050 2550 50  0001 C CNN
	1    14050 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 2550 13700 2550
Wire Wire Line
	14200 2550 14450 2550
Wire Wire Line
	14450 2550 14450 2650
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C8
P 14050 2900
F 0 "R?" V 13950 2800 50  0000 C CNN
F 1 "R" V 13950 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 2900 50  0001 C CNN
F 3 "~" H 14050 2900 50  0001 C CNN
	1    14050 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 2900 14300 2900
Wire Wire Line
	13900 2900 13800 2900
Wire Wire Line
	13800 2750 13800 2900
Wire Wire Line
	13800 2750 13700 2750
Wire Wire Line
	13800 3100 14450 3100
Wire Wire Line
	14450 3100 14450 2950
Connection ~ 13800 2900
Connection ~ 14450 3100
Connection ~ 14450 2550
Text Label 14850 2550 2    50   ~ 0
ACL
Text HLabel 14600 3100 2    50   Output ~ 0
OUTAC2
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E406555
P 14450 2800
F 0 "D?" H 14579 2846 50  0000 L CNN
F 1 "Z0103MN" H 14579 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 2650 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 3100 50  0001 C CNN
	1    14450 2800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5E406556
P 13400 3450
F 0 "U?" H 13400 3763 50  0000 C CNN
F 1 "MOC3060S" H 15050 3600 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 3500 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 3400 50  0001 L CNN
F 4 "-" H 13400 3050 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 3600 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 3300 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 3300 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 3674 47  0000 C CNN "Gamintojo kodas"
	1    13400 3450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5B2
P 14050 3350
F 0 "R?" V 13950 3250 50  0000 C CNN
F 1 "R" V 13950 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 3350 50  0001 C CNN
F 3 "~" H 14050 3350 50  0001 C CNN
	1    14050 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 3350 13700 3350
Wire Wire Line
	14200 3350 14450 3350
Wire Wire Line
	14450 3350 14450 3450
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5B3
P 14050 3700
F 0 "R?" V 13950 3600 50  0000 C CNN
F 1 "R" V 13950 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 3700 50  0001 C CNN
F 3 "~" H 14050 3700 50  0001 C CNN
	1    14050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 3700 14300 3700
Wire Wire Line
	13900 3700 13800 3700
Wire Wire Line
	13800 3550 13800 3700
Wire Wire Line
	13800 3550 13700 3550
Wire Wire Line
	13800 3900 14450 3900
Wire Wire Line
	14450 3900 14450 3750
Connection ~ 13800 3700
Connection ~ 14450 3900
Connection ~ 14450 3350
Text Label 14850 3350 2    50   ~ 0
ACL
Text HLabel 14600 3900 2    50   Output ~ 0
OUTAC3
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5CB6E5B4
P 14450 3600
F 0 "D?" H 14579 3646 50  0000 L CNN
F 1 "Z0103MN" H 14579 3555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 3450 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 3900 50  0001 C CNN
	1    14450 3600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5B5
P 13400 4250
F 0 "U?" H 13400 4563 50  0000 C CNN
F 1 "MOC3060S" H 15050 4400 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 4300 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 4200 50  0001 L CNN
F 4 "-" H 13400 3850 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 4400 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 4100 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 4100 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 4474 47  0000 C CNN "Gamintojo kodas"
	1    13400 4250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BD844FF
P 14050 4150
F 0 "R?" V 13950 4050 50  0000 C CNN
F 1 "R" V 13950 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 4150 50  0001 C CNN
F 3 "~" H 14050 4150 50  0001 C CNN
	1    14050 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 4150 13700 4150
Wire Wire Line
	14200 4150 14450 4150
Wire Wire Line
	14450 4150 14450 4250
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E40655D
P 14050 4500
F 0 "R?" V 13950 4400 50  0000 C CNN
F 1 "R" V 13950 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 4500 50  0001 C CNN
F 3 "~" H 14050 4500 50  0001 C CNN
	1    14050 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 4500 14300 4500
Wire Wire Line
	13900 4500 13800 4500
Wire Wire Line
	13800 4350 13800 4500
Wire Wire Line
	13800 4350 13700 4350
Wire Wire Line
	13800 4700 14450 4700
Wire Wire Line
	14450 4700 14450 4550
Connection ~ 13800 4500
Connection ~ 14450 4700
Connection ~ 14450 4150
Text Label 14850 4150 2    50   ~ 0
ACL
Text HLabel 14600 4700 2    50   Output ~ 0
OUTAC4
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5CB6E5E1
P 14450 4400
F 0 "D?" H 14579 4446 50  0000 L CNN
F 1 "Z0103MN" H 14579 4355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 4250 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 4700 50  0001 C CNN
	1    14450 4400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5CD
P 13400 5050
F 0 "U?" H 13400 5363 50  0000 C CNN
F 1 "MOC3060S" H 15050 5200 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 5100 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 5000 50  0001 L CNN
F 4 "-" H 13400 4650 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 5200 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 4900 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 4900 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 5274 47  0000 C CNN "Gamintojo kodas"
	1    13400 5050
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BD8C557
P 14050 4950
F 0 "R?" V 13950 4850 50  0000 C CNN
F 1 "R" V 13950 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 4950 50  0001 C CNN
F 3 "~" H 14050 4950 50  0001 C CNN
	1    14050 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 4950 13700 4950
Wire Wire Line
	14200 4950 14450 4950
Wire Wire Line
	14450 4950 14450 5050
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BD8C560
P 14050 5300
F 0 "R?" V 13950 5200 50  0000 C CNN
F 1 "R" V 13950 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 5300 50  0001 C CNN
F 3 "~" H 14050 5300 50  0001 C CNN
	1    14050 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 5300 14300 5300
Wire Wire Line
	13900 5300 13800 5300
Wire Wire Line
	13800 5150 13800 5300
Wire Wire Line
	13800 5150 13700 5150
Wire Wire Line
	13800 5500 14450 5500
Wire Wire Line
	14450 5500 14450 5350
Connection ~ 13800 5300
Connection ~ 14450 5500
Connection ~ 14450 4950
Text Label 14850 4950 2    50   ~ 0
ACL
Text HLabel 14600 5500 2    50   Output ~ 0
OUTAC5
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E4BCB2D
P 14450 5200
F 0 "D?" H 14579 5246 50  0000 L CNN
F 1 "Z0103MN" H 14579 5155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 5050 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 5500 50  0001 C CNN
	1    14450 5200
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K1
U 1 1 5CB6E5D0
P 9850 6150
F 0 "K1" V 10325 6150 50  0000 C CNN
F 1 "FINDER-34.51" V 10326 6150 50  0001 C CNN
F 2 "" H 10990 6110 50  0001 C CNN
F 3 "" H 9850 6150 50  0001 C CNN
	1    9850 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 -6650 7900 -6650
Text Label 7900 -6650 2    50   ~ 0
ACL
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5D1
P 13400 5850
F 0 "U?" H 13400 6163 50  0000 C CNN
F 1 "MOC3060S" H 15050 6000 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 5900 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 5800 50  0001 L CNN
F 4 "-" H 13400 5450 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 6000 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 5700 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 5700 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 6074 47  0000 C CNN "Gamintojo kodas"
	1    13400 5850
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB57
P 14050 5750
F 0 "R?" V 13950 5650 50  0000 C CNN
F 1 "R" V 13950 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 5750 50  0001 C CNN
F 3 "~" H 14050 5750 50  0001 C CNN
	1    14050 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 5750 13700 5750
Wire Wire Line
	14200 5750 14450 5750
Wire Wire Line
	14450 5750 14450 5850
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C19D268
P 14050 6100
F 0 "R?" V 13950 6000 50  0000 C CNN
F 1 "R" V 13950 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 6100 50  0001 C CNN
F 3 "~" H 14050 6100 50  0001 C CNN
	1    14050 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 6100 14300 6100
Wire Wire Line
	13900 6100 13800 6100
Wire Wire Line
	13800 5950 13800 6100
Wire Wire Line
	13800 5950 13700 5950
Wire Wire Line
	13800 6300 14450 6300
Wire Wire Line
	14450 6300 14450 6150
Connection ~ 13800 6100
Connection ~ 14450 6300
Connection ~ 14450 5750
Text Label 14850 5750 2    50   ~ 0
ACL
Text HLabel 14600 6300 2    50   Output ~ 0
OUTAC6
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5CB6E5BA
P 14450 6000
F 0 "D?" H 14579 6046 50  0000 L CNN
F 1 "Z0103MN" H 14579 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 5850 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 6300 50  0001 C CNN
	1    14450 6000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5C1AD12C
P 13400 6650
F 0 "U?" H 13400 6963 50  0000 C CNN
F 1 "MOC3060S" H 15050 6800 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 6700 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 6600 50  0001 L CNN
F 4 "-" H 13400 6250 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 6800 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 6500 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 6500 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 6874 47  0000 C CNN "Gamintojo kodas"
	1    13400 6650
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C1AD132
P 14050 6550
F 0 "R?" V 13950 6450 50  0000 C CNN
F 1 "R" V 13950 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 6550 50  0001 C CNN
F 3 "~" H 14050 6550 50  0001 C CNN
	1    14050 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 6550 13700 6550
Wire Wire Line
	14200 6550 14450 6550
Wire Wire Line
	14450 6550 14450 6650
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C1AD13B
P 14050 6900
F 0 "R?" V 13950 6800 50  0000 C CNN
F 1 "R" V 13950 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 6900 50  0001 C CNN
F 3 "~" H 14050 6900 50  0001 C CNN
	1    14050 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 6900 14300 6900
Wire Wire Line
	13900 6900 13800 6900
Wire Wire Line
	13800 6750 13800 6900
Wire Wire Line
	13800 6750 13700 6750
Wire Wire Line
	13800 7100 14450 7100
Wire Wire Line
	14450 7100 14450 6950
Connection ~ 13800 6900
Connection ~ 14450 7100
Connection ~ 14450 6550
Text Label 14850 6550 2    50   ~ 0
ACL
Text HLabel 14600 7100 2    50   Output ~ 0
OUTAC7
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E4BCB59
P 14450 6800
F 0 "D?" H 14579 6846 50  0000 L CNN
F 1 "Z0103MN" H 14579 6755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 6650 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 7100 50  0001 C CNN
	1    14450 6800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5E4BCB34
P 13400 7450
F 0 "U?" H 13400 7763 50  0000 C CNN
F 1 "MOC3060S" H 15050 7600 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 7500 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 7400 50  0001 L CNN
F 4 "-" H 13400 7050 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 7600 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 7300 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 7300 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 7674 47  0000 C CNN "Gamintojo kodas"
	1    13400 7450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5D2
P 14050 7350
F 0 "R?" V 13950 7250 50  0000 C CNN
F 1 "R" V 13950 7450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 7350 50  0001 C CNN
F 3 "~" H 14050 7350 50  0001 C CNN
	1    14050 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 7350 13700 7350
Wire Wire Line
	14200 7350 14450 7350
Wire Wire Line
	14450 7350 14450 7450
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB35
P 14050 7700
F 0 "R?" V 13950 7600 50  0000 C CNN
F 1 "R" V 13950 7800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 7700 50  0001 C CNN
F 3 "~" H 14050 7700 50  0001 C CNN
	1    14050 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 7700 14300 7700
Wire Wire Line
	13900 7700 13800 7700
Wire Wire Line
	13800 7550 13800 7700
Wire Wire Line
	13800 7550 13700 7550
Wire Wire Line
	13800 7900 14450 7900
Wire Wire Line
	14450 7900 14450 7750
Connection ~ 13800 7700
Connection ~ 14450 7900
Connection ~ 14450 7350
Text Label 14850 7350 2    50   ~ 0
ACL
Text HLabel 14600 7900 2    50   Output ~ 0
OUTAC8
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E406578
P 14450 7600
F 0 "D?" H 14579 7646 50  0000 L CNN
F 1 "Z0103MN" H 14579 7555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 7450 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 7900 50  0001 C CNN
	1    14450 7600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5C1C2219
P 13400 8250
F 0 "U?" H 13400 8563 50  0000 C CNN
F 1 "MOC3060S" H 15050 8400 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 14250 8300 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 14250 8200 50  0001 L CNN
F 4 "-" H 13400 7850 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14600 8400 60  0001 C CNN "Pavadinimas"
F 6 "0" H 15050 8100 60  0001 C CNN "Kaina"
F 7 "SMD" H 14700 8100 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13400 8474 47  0000 C CNN "Gamintojo kodas"
	1    13400 8250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C0
P 14050 8150
F 0 "R?" V 13950 8050 50  0000 C CNN
F 1 "R" V 13950 8250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 8150 50  0001 C CNN
F 3 "~" H 14050 8150 50  0001 C CNN
	1    14050 8150
	0    1    1    0   
$EndComp
Wire Wire Line
	13900 8150 13700 8150
Wire Wire Line
	14200 8150 14450 8150
Wire Wire Line
	14450 8150 14450 8250
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C1
P 14050 8500
F 0 "R?" V 13950 8400 50  0000 C CNN
F 1 "R" V 13950 8600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 8500 50  0001 C CNN
F 3 "~" H 14050 8500 50  0001 C CNN
	1    14050 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 8500 14300 8500
Wire Wire Line
	13900 8500 13800 8500
Wire Wire Line
	13800 8350 13800 8500
Wire Wire Line
	13800 8350 13700 8350
Wire Wire Line
	13800 8700 14450 8700
Wire Wire Line
	14450 8700 14450 8550
Connection ~ 13800 8500
Connection ~ 14450 8700
Connection ~ 14450 8150
Text Label 14850 8150 2    50   ~ 0
ACL
Text HLabel 14600 8700 2    50   Output ~ 0
OUTAC9
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E4BCB5C
P 14450 8400
F 0 "D?" H 14579 8446 50  0000 L CNN
F 1 "Z0103MN" H 14579 8355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 15200 8250 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14600 8700 50  0001 C CNN
	1    14450 8400
	1    0    0    -1  
$EndComp
Text Label 10400 5950 2    50   ~ 0
ACN
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K3
U 1 1 5CB6E5E8
P 7900 9200
F 0 "K3" V 8375 9200 50  0000 C CNN
F 1 "FINDER-34.51" V 8376 9200 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 9040 9160 50  0001 C CNN
F 3 "" H 7900 9200 50  0001 C CNN
	1    7900 9200
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Transistor_Array_ULN2803A-ihouse-rescue U?
U 1 1 5CB6E5E9
P 9850 3900
F 0 "U?" H 9850 4467 50  0000 C CNN
F 1 "ULN2803A" H 9850 4376 50  0000 C CNN
F 2 "" H 9900 3250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 9950 3700 50  0001 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K4
U 1 1 60512CF2
P 9350 9200
F 0 "K4" V 9825 9200 50  0000 C CNN
F 1 "FINDER-34.51" V 9826 9200 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 10490 9160 50  0001 C CNN
F 3 "" H 9350 9200 50  0001 C CNN
	1    9350 9200
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K5
U 1 1 60512CF9
P 7900 10300
F 0 "K5" V 8375 10300 50  0000 C CNN
F 1 "FINDER-34.51" V 8376 10300 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 9040 10260 50  0001 C CNN
F 3 "" H 7900 10300 50  0001 C CNN
	1    7900 10300
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K6
U 1 1 60512D00
P 9350 10300
F 0 "K6" V 9825 10300 50  0000 C CNN
F 1 "FINDER-34.51" V 9826 10300 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 10490 10260 50  0001 C CNN
F 3 "" H 9350 10300 50  0001 C CNN
	1    9350 10300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 3700 10600 3700
Wire Wire Line
	10250 3800 10600 3800
Wire Wire Line
	10250 3900 10600 3900
Wire Wire Line
	10250 4000 10600 4000
Wire Wire Line
	7600 8900 7250 8900
Wire Wire Line
	7600 9100 7250 9100
Wire Wire Line
	8200 9000 8550 9000
Wire Wire Line
	9050 8900 8700 8900
Wire Wire Line
	9050 9100 8700 9100
Wire Wire Line
	9650 9000 10000 9000
Wire Wire Line
	7150 10000 7600 10000
Wire Wire Line
	7600 10200 7150 10200
Wire Wire Line
	8200 10100 8500 10100
Wire Wire Line
	9050 10000 8700 10000
Wire Wire Line
	9050 10200 8700 10200
Wire Wire Line
	9650 10100 10100 10100
Text Label 7250 8900 0    50   ~ 0
EXT1_14
Text Label 7250 9100 0    50   ~ 0
EXT1_12
Text Label 8550 9000 2    50   ~ 0
EXT1_11
Text Label 7150 10000 0    50   ~ 0
EXT2_14
Text Label 7150 10200 0    50   ~ 0
EXT2_12
Text Label 8500 10100 2    50   ~ 0
EXT2_11
Text Label 10000 9000 2    50   ~ 0
EXT3_11
Text Label 8700 8900 0    50   ~ 0
EXT3_14
Text Label 8700 9100 0    50   ~ 0
EXT3_12
Text Label 8700 10000 0    50   ~ 0
EXT4_14
Text Label 8700 10200 0    50   ~ 0
EXT4_12
Text Label 10100 10100 2    50   ~ 0
EXT4_11
Wire Wire Line
	9850 4600 9850 4700
Wire Wire Line
	9850 4700 9500 4700
Text Label 9500 4700 0    50   ~ 0
COM
Wire Wire Line
	9450 3700 9100 3700
Wire Wire Line
	9450 3800 9350 3800
Wire Wire Line
	9450 3900 9100 3900
Wire Wire Line
	9450 4000 9100 4000
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 60512D48
P 11000 9250
F 0 "J?" H 11080 9292 50  0000 L CNN
F 1 "EXT1" H 11080 9201 50  0000 L CNN
F 2 "" H 11000 9250 50  0001 C CNN
F 3 "~" H 11000 9250 50  0001 C CNN
	1    11000 9250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 5CB6E5EE
P 11000 9600
F 0 "J?" H 11080 9642 50  0000 L CNN
F 1 "EXT2" H 11080 9551 50  0000 L CNN
F 2 "" H 11000 9600 50  0001 C CNN
F 3 "~" H 11000 9600 50  0001 C CNN
	1    11000 9600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 5CB6E5EF
P 11000 9950
F 0 "J?" H 11080 9992 50  0000 L CNN
F 1 "EXT3" H 11080 9901 50  0000 L CNN
F 2 "" H 11000 9950 50  0001 C CNN
F 3 "~" H 11000 9950 50  0001 C CNN
	1    11000 9950
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 5CB6E5F0
P 11000 10300
F 0 "J?" H 11080 10342 50  0000 L CNN
F 1 "EXT4" H 11080 10251 50  0000 L CNN
F 2 "" H 11000 10300 50  0001 C CNN
F 3 "~" H 11000 10300 50  0001 C CNN
	1    11000 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 9150 10500 9150
Wire Wire Line
	10800 9250 10500 9250
Wire Wire Line
	10800 9350 10500 9350
Wire Wire Line
	10800 9500 10500 9500
Wire Wire Line
	10800 9600 10500 9600
Wire Wire Line
	10800 9700 10500 9700
Wire Wire Line
	10800 9850 10500 9850
Wire Wire Line
	10800 9950 10500 9950
Wire Wire Line
	10800 10050 10500 10050
Wire Wire Line
	10800 10200 10500 10200
Wire Wire Line
	10800 10300 10500 10300
Wire Wire Line
	10800 10400 10500 10400
Text Label 10500 9250 0    50   ~ 0
EXT1_11
Text Label 10500 9350 0    50   ~ 0
EXT1_12
Text Label 10500 9150 0    50   ~ 0
EXT1_14
Text Label 10500 9600 0    50   ~ 0
EXT2_11
Text Label 10500 9700 0    50   ~ 0
EXT2_12
Text Label 10500 9500 0    50   ~ 0
EXT2_14
Text Label 10500 9950 0    50   ~ 0
EXT3_11
Text Label 10500 10050 0    50   ~ 0
EXT3_12
Text Label 10500 9850 0    50   ~ 0
EXT3_14
Text Label 10500 10300 0    50   ~ 0
EXT4_11
Text Label 10500 10400 0    50   ~ 0
EXT4_12
Text Label 10500 10200 0    50   ~ 0
EXT4_14
Text Label 9100 3900 0    50   ~ 0
EXT1
Text Label 9100 4000 0    50   ~ 0
EXT2
Text Label 9100 4100 0    50   ~ 0
EXT3
Text Label 9100 4200 0    50   ~ 0
EXT4
Wire Wire Line
	8050 -7150 8050 -6500
Wire Wire Line
	8700 -7500 9300 -7500
Wire Wire Line
	8050 -6500 8050 -6250
Wire Wire Line
	8700 -6500 9450 -6500
Wire Wire Line
	9450 -7500 10300 -7500
Wire Wire Line
	9300 -7500 9450 -7500
Wire Wire Line
	9000 5450 9400 5450
Wire Wire Line
	8900 5850 9550 5850
Wire Wire Line
	8050 -6250 8250 -6250
Wire Wire Line
	6550 -6650 6950 -6650
Wire Wire Line
	6550 -6250 6950 -6250
Wire Wire Line
	9450 -6500 9550 -6500
Wire Wire Line
	13800 2100 13800 2300
Wire Wire Line
	14450 2300 14600 2300
Wire Wire Line
	14450 1750 14850 1750
Wire Wire Line
	13800 2900 13800 3100
Wire Wire Line
	14450 3100 14600 3100
Wire Wire Line
	14450 2550 14850 2550
Wire Wire Line
	13800 3700 13800 3900
Wire Wire Line
	14450 3900 14600 3900
Wire Wire Line
	14450 3350 14850 3350
Wire Wire Line
	13800 4500 13800 4700
Wire Wire Line
	14450 4700 14600 4700
Wire Wire Line
	14450 4150 14850 4150
Wire Wire Line
	13800 5300 13800 5500
Wire Wire Line
	14450 5500 14600 5500
Wire Wire Line
	14450 4950 14850 4950
Wire Wire Line
	13800 6100 13800 6300
Wire Wire Line
	14450 6300 14600 6300
Wire Wire Line
	14450 5750 14850 5750
Wire Wire Line
	13800 6900 13800 7100
Wire Wire Line
	14450 7100 14600 7100
Wire Wire Line
	14450 6550 14850 6550
Wire Wire Line
	13800 7700 13800 7900
Wire Wire Line
	14450 7900 14600 7900
Wire Wire Line
	14450 7350 14850 7350
Wire Wire Line
	13800 8500 13800 8700
Wire Wire Line
	14450 8700 14600 8700
Wire Wire Line
	14450 8150 14850 8150
Wire Wire Line
	13000 1750 13100 1750
Wire Wire Line
	13000 2550 13100 2550
Wire Wire Line
	13000 3350 13100 3350
Wire Wire Line
	13000 4150 13100 4150
Wire Wire Line
	13000 4950 13100 4950
Wire Wire Line
	13000 5750 13100 5750
Wire Wire Line
	13000 6550 13100 6550
Wire Wire Line
	13000 7350 13100 7350
Wire Wire Line
	13000 8150 13100 8150
$Sheet
S 9200 1650 1350 1350
U 5F287616
F0 "MCP23017 extended port" 50
F1 "mcp_port.sch" 50
F2 "EO0" O R 10550 1950 50 
F3 "EO1" O R 10550 2050 50 
F4 "EO2" O R 10550 2150 50 
F5 "EO3" O R 10550 2250 50 
F6 "EO4" O R 10550 2350 50 
F7 "EO5" O R 10550 2450 50 
F8 "EO6" O R 10550 2550 50 
F9 "EO7" O R 10550 2650 50 
F10 "EO8" O R 10550 2750 50 
F11 "EO9" O R 10550 2850 50 
F12 "~MCPRST" I L 9200 2100 50 
F13 "COM" I L 9200 1850 50 
F14 "SDA" B L 9200 2400 50 
F15 "5VDC" I L 9200 1750 50 
F16 "OC5V" O R 10550 1750 50 
F17 "SCL" I L 9200 2500 50 
$EndSheet
Wire Wire Line
	10550 1950 13100 1950
Wire Wire Line
	10550 2050 12900 2050
Wire Wire Line
	12900 2050 12900 2750
Wire Wire Line
	12900 2750 13100 2750
Wire Wire Line
	10550 2150 12800 2150
Wire Wire Line
	12800 2150 12800 3550
Wire Wire Line
	12800 3550 13100 3550
Wire Wire Line
	10550 2250 12700 2250
Wire Wire Line
	12700 2250 12700 4350
Wire Wire Line
	12700 4350 13100 4350
Wire Wire Line
	10550 2350 12600 2350
Wire Wire Line
	12600 2350 12600 5150
Wire Wire Line
	12600 5150 13100 5150
Wire Wire Line
	10550 2450 12500 2450
Wire Wire Line
	12500 2450 12500 5950
Wire Wire Line
	12500 5950 13100 5950
Wire Wire Line
	10550 2550 12400 2550
Wire Wire Line
	12400 2550 12400 6750
Wire Wire Line
	12400 6750 13100 6750
Wire Wire Line
	10550 2650 12300 2650
Wire Wire Line
	12300 2650 12300 7550
Wire Wire Line
	12300 7550 13100 7550
Wire Wire Line
	10550 2750 12200 2750
Wire Wire Line
	12200 2750 12200 8350
Wire Wire Line
	12200 8350 13100 8350
Wire Wire Line
	13000 1750 13000 2550
Wire Wire Line
	13000 2550 13000 3350
Connection ~ 13000 2550
Wire Wire Line
	13000 3350 13000 4150
Connection ~ 13000 3350
Wire Wire Line
	13000 4150 13000 4950
Connection ~ 13000 4150
Wire Wire Line
	13000 4950 13000 5750
Connection ~ 13000 4950
Wire Wire Line
	13000 5750 13000 6550
Connection ~ 13000 5750
Wire Wire Line
	13000 6550 13000 7350
Connection ~ 13000 6550
Wire Wire Line
	13000 7350 13000 8150
Connection ~ 13000 7350
Wire Wire Line
	10550 1750 13000 1750
Connection ~ 13000 1750
Wire Wire Line
	10550 2850 10650 2850
Wire Wire Line
	9450 4100 9100 4100
Wire Wire Line
	10250 4100 10600 4100
Wire Wire Line
	10250 4200 10600 4200
Wire Wire Line
	9450 4200 9100 4200
Text Label 10600 3800 2    50   ~ 0
K2
Text Label 10600 3700 2    50   ~ 0
K1
Text Label 10400 6350 2    50   ~ 0
K1
Text Label 10400 7800 2    50   ~ 0
K2
Text Label 9250 6350 0    50   ~ 0
12VDC
Text Label 9250 7800 0    50   ~ 0
12VDC
Text Label 10600 3900 2    50   ~ 0
K3
Text Label 10600 4000 2    50   ~ 0
K4
Text Label 10600 4100 2    50   ~ 0
K5
Text Label 10600 4200 2    50   ~ 0
K6
Wire Wire Line
	9050 9400 8800 9400
Wire Wire Line
	7600 9400 7350 9400
Wire Wire Line
	7600 10500 7350 10500
Wire Wire Line
	9050 10500 8800 10500
Wire Wire Line
	8200 9400 8400 9400
Wire Wire Line
	8200 10500 8400 10500
Wire Wire Line
	9650 9400 9850 9400
Wire Wire Line
	9650 10500 9850 10500
Text Label 7350 9400 0    50   ~ 0
12VDC
Text Label 7350 10500 0    50   ~ 0
12VDC
Text Label 8800 10500 0    50   ~ 0
12VDC
Text Label 8800 9400 0    50   ~ 0
12VDC
Text Label 8400 9400 2    50   ~ 0
K3
Text Label 9850 9400 2    50   ~ 0
K4
Text Label 8400 10500 2    50   ~ 0
K5
Text Label 9850 10500 2    50   ~ 0
K6
Wire Wire Line
	9350 3800 9350 3200
Wire Wire Line
	9350 3200 10650 3200
Wire Wire Line
	10650 3200 10650 2850
Wire Wire Line
	9200 1750 8900 1750
Wire Wire Line
	9200 1850 8900 1850
Wire Wire Line
	9200 2100 8900 2100
Wire Wire Line
	9200 2400 8900 2400
Wire Wire Line
	9200 2500 8900 2500
Wire Wire Line
	10250 3600 10600 3600
Text Label 10600 3600 2    50   ~ 0
12VDC
Text Label 8900 1850 0    50   ~ 0
COM
Text Label 8900 1750 0    50   ~ 0
5VDC
Text Label 8900 2100 0    50   ~ 0
~MCPRST
Text Label 8900 2400 0    50   ~ 0
SDA
Text Label 8900 2500 0    50   ~ 0
SCL
Text Label 9100 3700 0    50   ~ 0
EXT0
Wire Wire Line
	2250 2900 1900 2900
Wire Wire Line
	2250 3000 1900 3000
Text Label 1900 3000 0    50   ~ 0
SDA
Text Label 1900 2900 0    50   ~ 0
SCL
Wire Wire Line
	4150 3800 4500 3800
Wire Wire Line
	4150 3900 4500 3900
Text Label 4500 3800 2    50   ~ 0
UART_TX
Text Label 4500 3900 2    50   ~ 0
UART_RX
Wire Wire Line
	4150 3700 4500 3700
Text Label 4500 3700 2    50   ~ 0
UART_DE
Text Label 1900 3600 0    50   ~ 0
BUZZ
Wire Wire Line
	4150 3400 4500 3400
Text Label 4500 3400 2    50   ~ 0
LPULSE
Wire Wire Line
	2250 3800 1900 3800
Text Label 1900 3800 0    50   ~ 0
VLINE
Wire Wire Line
	1900 2300 2250 2300
Text Label 1900 2300 0    50   ~ 0
3VDC
Text Label 1900 3400 0    50   ~ 0
OPTIC
Wire Wire Line
	2250 3400 1900 3400
Wire Wire Line
	2250 3600 1900 3600
Wire Wire Line
	4150 4300 4500 4300
Wire Wire Line
	4150 4000 4500 4000
Text Label 4500 4300 2    50   ~ 0
PWM1
Text Label 4500 4000 2    50   ~ 0
PWM2
$EndSCHEMATC

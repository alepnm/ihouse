EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
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
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J8
U 1 1 5C5DAC5F
P 14700 14000
F 0 "J8" H 14780 13996 50  0000 L CNN
F 1 "Conn_01x01" H 14780 13951 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14000 50  0001 C CNN
F 3 "~" H 14700 14000 50  0001 C CNN
	1    14700 14000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J9
U 1 1 5C5DAC60
P 14700 14150
F 0 "J9" H 14780 14146 50  0000 L CNN
F 1 "Conn_01x01" H 14780 14101 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14150 50  0001 C CNN
F 3 "~" H 14700 14150 50  0001 C CNN
	1    14700 14150
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J10
U 1 1 5C5DAC61
P 14700 14300
F 0 "J10" H 14780 14296 50  0000 L CNN
F 1 "Conn_01x01" H 14780 14251 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 14700 14300 50  0001 C CNN
F 3 "~" H 14700 14300 50  0001 C CNN
	1    14700 14300
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J11
U 1 1 5BC9AB72
P 14700 14450
F 0 "J11" H 14780 14446 50  0000 L CNN
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
L ihouse-rescue:Connector_Generic_Conn_01x03-ihouse-rescue J12
U 1 1 5BC74B70
P 14700 14950
F 0 "J12" H 14780 14946 50  0000 L CNN
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
L ihouse-rescue:Connector_Generic_Conn_02x12_Counter_Clockwise-ihouse-rescue J3
U 1 1 5C5DAC69
P 17550 5850
F 0 "J3" H 17600 6450 50  0000 C CNN
F 1 "AC OUTS" H 17600 5150 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-24A_2x12x4.20mm_Straight" H 17550 5850 50  0001 C CNN
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
L ihouse-rescue:Connector_Generic_Conn_02x02_Counter_Clockwise-ihouse-rescue J2
U 1 1 5C5DAC6A
P 17550 4200
F 0 "J2" H 17600 4300 50  0000 C CNN
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
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U13
U 1 1 5BC77E06
P 1900 8650
F 0 "U13" H 1900 8975 50  0000 C CNN
F 1 "LTV-817" H 1900 8884 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 1700 8450 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 1900 8550 50  0001 L CNN
	1    1900 8650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 8750 1050 8750
Text Label 1050 8750 0    50   ~ 0
COM
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D12
U 1 1 5BC77E07
P 2500 8650
F 0 "D12" V 2454 8729 50  0000 L CNN
F 1 "LL4148" V 2545 8729 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 2500 8475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 2500 8650 50  0001 C CNN
	1    2500 8650
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 8550 2300 8550
Wire Wire Line
	2300 8550 2300 8400
Wire Wire Line
	2300 8400 2500 8400
Wire Wire Line
	2500 8400 2500 8500
Wire Wire Line
	2200 8750 2300 8750
Wire Wire Line
	2300 8750 2300 8900
Wire Wire Line
	2300 8900 2500 8900
Wire Wire Line
	2500 8900 2500 8800
Wire Wire Line
	2500 8400 2750 8400
Connection ~ 2500 8400
Wire Wire Line
	2500 8900 2750 8900
Connection ~ 2500 8900
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R26
U 1 1 5C3B44B3
P 2900 8400
F 0 "R26" V 2800 8300 50  0000 C CNN
F 1 "33k" V 2800 8500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2830 8400 50  0001 C CNN
F 3 "~" H 2900 8400 50  0001 C CNN
	1    2900 8400
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R28
U 1 1 5C5DAC75
P 2900 8900
F 0 "R28" V 2800 8800 50  0000 C CNN
F 1 "33k" V 2800 9000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2830 8900 50  0001 C CNN
F 3 "~" H 2900 8900 50  0001 C CNN
	1    2900 8900
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R27
U 1 1 5C5DAC72
P 3300 8400
F 0 "R27" V 3200 8300 50  0000 C CNN
F 1 "33k" V 3200 8500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3230 8400 50  0001 C CNN
F 3 "~" H 3300 8400 50  0001 C CNN
	1    3300 8400
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R29
U 1 1 5C5DAC76
P 3300 8900
F 0 "R29" V 3200 8800 50  0000 C CNN
F 1 "33k" V 3200 9000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3230 8900 50  0001 C CNN
F 3 "~" H 3300 8900 50  0001 C CNN
	1    3300 8900
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 8400 3150 8400
Wire Wire Line
	3050 8900 3150 8900
Wire Wire Line
	1050 8550 1600 8550
Text Label 1050 8550 0    50   ~ 0
LPULSE
Wire Wire Line
	2750 9250 2650 9250
Wire Wire Line
	2350 9250 2250 9250
Wire Wire Line
	2250 9250 2250 9300
Wire Wire Line
	2750 9650 2250 9650
Wire Wire Line
	2250 9650 2250 9600
Wire Wire Line
	2250 9650 1750 9650
Wire Wire Line
	1750 9650 1750 9700
Connection ~ 2250 9650
Wire Wire Line
	1650 9650 1750 9650
Connection ~ 1750 9650
Wire Wire Line
	2250 9250 1050 9250
Connection ~ 2250 9250
Wire Wire Line
	1350 9650 1050 9650
Text Label 1050 9250 0    50   ~ 0
VLINE
Text Label 1050 9650 0    50   ~ 0
3VDC
$Comp
L ihouse-rescue:capacitors_CP_100uFx16V-ihouse-rescue C1
U 1 1 5C5DAC70
P 2250 9850
F 0 "C1" H 1950 9900 50  0000 L CNN
F 1 "100uFx16V" H 1700 9800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 3100 10100 50  0001 C CNN
F 3 "" H 2275 9950 50  0001 C CNN
F 4 "-" H 2300 9600 60  0001 C CNN "ventcode"
F 5 "0.06" H 3000 9900 60  0001 C CNN "Kaina"
F 6 "Kondensatorius elektrolitinis" H 3100 10200 60  0001 C CNN "Pavadinimas"
F 7 "100uFx16V" H 2368 9804 60  0001 L CNN "Nominalas"
F 8 "DIP" H 3200 10000 60  0001 C CNN "Korpuso tipas"
	1    2250 9850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2250 9700 2250 9650
Wire Wire Line
	3550 9250 3750 9250
Wire Wire Line
	3550 9650 3600 9650
Text Label 4400 9250 2    50   ~ 0
230L
Text Label 4400 9650 2    50   ~ 0
230N
$Comp
L ihouse-rescue:disc_Transformer_TEZ_22x24_6V-ihouse-rescue T1
U 1 1 5C5DAC63
P 3150 9450
F 0 "T1" H 3150 9737 50  0000 C CNN
F 1 "Transformer_TEZ_22x24_6V" H 3150 9737 50  0001 C CNN
F 2 "Transformer_THT:Transformer_Breve_TEZ-22x24" H 4550 9550 50  0001 C CNN
F 3 "" H 3150 9700 50  0001 C CNN
	1    3150 9450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 8900 3600 9650
Wire Wire Line
	3450 8900 3600 8900
Connection ~ 3600 9650
Wire Wire Line
	3600 9650 4400 9650
Wire Wire Line
	3750 8400 3750 9250
Wire Wire Line
	3450 8400 3750 8400
Connection ~ 3750 9250
Wire Wire Line
	3750 9250 3850 9250
$Comp
L ihouse-rescue:Device_Thermistor_PTC-ihouse-rescue TH1
U 1 1 5C3B44B5
P 4000 9250
F 0 "TH1" V 3850 9200 50  0000 C CNN
F 1 "230V/150mA" V 4150 9250 50  0000 C CNN
F 2 "" H 4050 9050 50  0001 L CNN
F 3 "~" H 4000 9250 50  0001 C CNN
	1    4000 9250
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 9250 4400 9250
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R30
U 1 1 5BC77E14
P 2500 9250
F 0 "R30" V 2400 9150 50  0000 C CNN
F 1 "1k" V 2400 9350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2430 9250 50  0001 C CNN
F 3 "~" H 2500 9250 50  0001 C CNN
	1    2500 9250
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R31
U 1 1 5BC77E15
P 2250 9450
F 0 "R31" H 2400 9500 50  0000 C CNN
F 1 "120" H 2400 9400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 9450 50  0001 C CNN
F 3 "~" H 2250 9450 50  0001 C CNN
	1    2250 9450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R33
U 1 1 5BC77E16
P 1750 9850
F 0 "R33" H 1900 9900 50  0000 C CNN
F 1 "Rx" H 1900 9800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 9850 50  0001 C CNN
F 3 "~" H 1750 9850 50  0001 C CNN
	1    1750 9850
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R32
U 1 1 5C5DAC74
P 1500 9650
F 0 "R32" V 1600 9750 50  0000 C CNN
F 1 "Rx" V 1600 9600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 9650 50  0001 C CNN
F 3 "~" H 1500 9650 50  0001 C CNN
	1    1500 9650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 10100 2250 10100
Wire Wire Line
	1750 10000 1750 10100
Wire Wire Line
	2250 10000 2250 10100
Wire Wire Line
	1750 10100 1400 10100
Connection ~ 1750 10100
Text Label 1400 10100 0    50   ~ 0
COM
$Comp
L ihouse-rescue:unicon_v1-unicon M1
U 1 1 5C94CB7C
P 6250 2850
F 0 "M1" H 6250 4315 50  0000 C CNN
F 1 "unicon_v1" H 6250 4224 50  0000 C CNN
F 2 "unicon:unicon_v1" H 6250 5950 50  0001 C CNN
F 3 "" H 6250 5950 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1800 4950 1800
Text Label 4950 1800 0    50   ~ 0
5VDC
Wire Wire Line
	5300 1700 4950 1700
Text Label 4950 1700 0    50   ~ 0
12VDC
Wire Wire Line
	5300 2000 5200 2000
Wire Wire Line
	5200 2000 5200 2100
Wire Wire Line
	5200 2200 5300 2200
Wire Wire Line
	5300 2100 5200 2100
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5200 2200
Wire Wire Line
	5200 2200 4950 2200
Connection ~ 5200 2200
Text Label 4950 2200 0    50   ~ 0
COM
Wire Wire Line
	7200 2300 7450 2300
Text Label 7450 2300 2    50   ~ 0
COM
Wire Wire Line
	9750 6850 9850 6850
Wire Wire Line
	9750 7250 9850 7250
Text HLabel 9850 6850 2    50   Output ~ 0
OUTAC10
Text HLabel 9850 7250 2    50   Output ~ 0
OUTAC10N
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U1
U 1 1 5C5DAC56
P 7650 -7400
F 0 "U1" H 7650 -7087 50  0000 C CNN
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
L ihouse-rescue:Device_R-ihouse-rescue R2
U 1 1 5C5DAC57
P 8300 -7500
F 0 "R2" V 8200 -7600 50  0000 C CNN
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
L ihouse-rescue:Device_R-ihouse-rescue R3
U 1 1 5E406542
P 8300 -7150
F 0 "R3" V 8200 -7250 50  0000 C CNN
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
	9750 5800 10000 5800
Text Label 10000 5300 2    50   ~ 0
ACL
Wire Wire Line
	8850 6200 9150 6200
Wire Wire Line
	9750 6200 10000 6200
Wire Wire Line
	8850 7650 9150 7650
Wire Wire Line
	9750 7650 10000 7650
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R1
U 1 1 5C5DAC81
P 7100 -7500
F 0 "R1" V 7000 -7600 50  0000 C CNN
F 1 "R" V 7000 -7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 -7500 50  0001 C CNN
F 3 "~" H 7100 -7500 50  0001 C CNN
	1    7100 -7500
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 -7500 6850 -7500
Wire Wire Line
	8350 5700 8500 5700
Wire Wire Line
	8350 5300 8600 5300
$Comp
L ihouse-rescue:Device_Fuse-ihouse-rescue F1
U 1 1 5C5DAC9F
P 9150 5300
F 0 "F1" V 9050 5200 50  0000 C CNN
F 1 "3A" V 9050 5400 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 9080 5300 50  0001 C CNN
F 3 "~" H 9150 5300 50  0001 C CNN
	1    9150 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 5300 10000 5300
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
	8600 5300 8600 6750
Wire Wire Line
	8600 6750 9150 6750
Connection ~ 8600 5300
Wire Wire Line
	8500 7150 8500 5700
Wire Wire Line
	8500 7150 9150 7150
Connection ~ 8500 5700
$Comp
L ihouse-rescue:Relay_G5Q-1A-ihouse-rescue K9
U 1 1 5C5DACA3
P 9750 -4900
F 0 "K9" H 9320 -4900 50  0000 R CNN
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
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D1
U 1 1 5C5DACA4
P 8700 -7250
F 0 "D1" H 8829 -7204 50  0000 L CNN
F 1 "Z0103MN" H 8829 -7295 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9450 -7400 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 8850 -6950 50  0001 C CNN
	1    8700 -7250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R4
U 1 1 5E4BCB53
P 7100 -6650
F 0 "R4" V 7000 -6750 50  0000 C CNN
F 1 "33k" V 7000 -6550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 -6650 50  0001 C CNN
F 3 "~" H 7100 -6650 50  0001 C CNN
	1    7100 -6650
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R5
U 1 1 5E4BCB1E
P 7450 -6650
F 0 "R5" V 7350 -6750 50  0000 C CNN
F 1 "33k" V 7350 -6550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7380 -6650 50  0001 C CNN
F 3 "~" H 7450 -6650 50  0001 C CNN
	1    7450 -6650
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R6
U 1 1 5C5DAC80
P 7100 -6250
F 0 "R6" V 7000 -6350 50  0000 C CNN
F 1 "33k" V 7000 -6150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 -6250 50  0001 C CNN
F 3 "~" H 7100 -6250 50  0001 C CNN
	1    7100 -6250
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R7
U 1 1 5CB6E5DB
P 7450 -6250
F 0 "R7" V 7350 -6350 50  0000 C CNN
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
L ihouse-rescue:Diode_LL4148-ihouse-rescue D2
U 1 1 5CB6E5DC
P 6550 -6450
F 0 "D2" V 6504 -6371 50  0000 L CNN
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
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U2
U 1 1 5C5DACAD
P 6050 -6450
F 0 "U2" H 6050 -6125 50  0000 C CNN
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
P 9450 7250
F 0 "K2" V 10100 7250 50  0000 C CNN
F 1 "RT42xxxx" V 10126 7250 50  0001 C CNN
F 2 "Relays_THT:Relay_DPDT_Finder_40.52" H 9450 7250 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FRT2%7F1014%7Fpdf%7FEnglish%7FENG_DS_RT2_1014.pdf%7F6-1393243-3" H 10100 7400 50  0001 C CNN
	1    9450 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 -6500 9450 -6300
Connection ~ 9450 -6500
$Comp
L ihouse-rescue:Relay_FINDER-32.21-x300-ihouse-rescue K7
U 1 1 5C5DAC9E
P 9750 -6950
F 0 "K7" H 9320 -6950 50  0000 R CNN
F 1 "FINDER-32.21-x300" H 9320 -6995 50  0001 R CNN
F 2 "Relay_THT:Relay_SPST_Schrack-RT1-FormA_RM5mm" H 11020 -6980 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 9750 -6950 50  0001 C CNN
	1    9750 -6950
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-32.21-x300-ihouse-rescue K8
U 1 1 5C5DAC5B
P 9750 -6000
F 0 "K8" H 9320 -6000 50  0000 R CNN
F 1 "FINDER-32.21-x300" H 9320 -6045 50  0001 R CNN
F 2 "Relay_THT:Relay_SPST_Schrack-RT1-FormA_RM5mm" H 11020 -6030 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 9750 -6000 50  0001 C CNN
	1    9750 -6000
	-1   0    0    -1  
$EndComp
Text HLabel 8350 5300 0    50   Input ~ 0
230L
Text HLabel 8350 5700 0    50   Input ~ 0
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
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U3
U 1 1 5C5DAC91
P 13000 1700
F 0 "U3" H 13000 2013 50  0000 C CNN
F 1 "MOC3060S" H 14650 1850 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 1750 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 1650 50  0001 L CNN
F 4 "-" H 13000 1300 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 1850 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 1550 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 1550 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 1924 47  0000 C CNN "Gamintojo kodas"
	1    13000 1700
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R8
U 1 1 5C5DAC89
P 13650 1600
F 0 "R8" V 13550 1500 50  0000 C CNN
F 1 "R" V 13550 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 1600 50  0001 C CNN
F 3 "~" H 13650 1600 50  0001 C CNN
	1    13650 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 1600 13300 1600
Wire Wire Line
	13800 1600 14050 1600
Wire Wire Line
	14050 1600 14050 1700
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R9
U 1 1 5E4BCB47
P 13650 1950
F 0 "R9" V 13550 1850 50  0000 C CNN
F 1 "R" V 13550 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 1950 50  0001 C CNN
F 3 "~" H 13650 1950 50  0001 C CNN
	1    13650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 1950 13900 1950
Wire Wire Line
	13500 1950 13400 1950
Wire Wire Line
	13400 1800 13400 1950
Wire Wire Line
	13400 1800 13300 1800
Wire Wire Line
	13400 2150 14050 2150
Wire Wire Line
	14050 2150 14050 2000
Connection ~ 13400 1950
Connection ~ 14050 2150
Connection ~ 14050 1600
Text Label 14450 1600 2    50   ~ 0
ACL
Text HLabel 14200 2150 2    50   Output ~ 0
OUTAC1
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D3
U 1 1 5BD538B7
P 14050 1850
F 0 "D3" H 14179 1896 50  0000 L CNN
F 1 "Z0103MN" H 14179 1805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 1700 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 2150 50  0001 C CNN
	1    14050 1850
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U4
U 1 1 5BD586E6
P 13000 2500
F 0 "U4" H 13000 2813 50  0000 C CNN
F 1 "MOC3060S" H 14650 2650 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 2550 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 2450 50  0001 L CNN
F 4 "-" H 13000 2100 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 2650 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 2350 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 2350 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 2724 47  0000 C CNN "Gamintojo kodas"
	1    13000 2500
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R10
U 1 1 5E4BCB48
P 13650 2400
F 0 "R10" V 13550 2300 50  0000 C CNN
F 1 "R" V 13550 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 2400 50  0001 C CNN
F 3 "~" H 13650 2400 50  0001 C CNN
	1    13650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 2400 13300 2400
Wire Wire Line
	13800 2400 14050 2400
Wire Wire Line
	14050 2400 14050 2500
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R11
U 1 1 5C5DAC8A
P 13650 2750
F 0 "R11" V 13550 2650 50  0000 C CNN
F 1 "R" V 13550 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 2750 50  0001 C CNN
F 3 "~" H 13650 2750 50  0001 C CNN
	1    13650 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 2750 13900 2750
Wire Wire Line
	13500 2750 13400 2750
Wire Wire Line
	13400 2600 13400 2750
Wire Wire Line
	13400 2600 13300 2600
Wire Wire Line
	13400 2950 14050 2950
Wire Wire Line
	14050 2950 14050 2800
Connection ~ 13400 2750
Connection ~ 14050 2950
Connection ~ 14050 2400
Text Label 14450 2400 2    50   ~ 0
ACL
Text HLabel 14200 2950 2    50   Output ~ 0
OUTAC2
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D4
U 1 1 5E406555
P 14050 2650
F 0 "D4" H 14179 2696 50  0000 L CNN
F 1 "Z0103MN" H 14179 2605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 2500 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 2950 50  0001 C CNN
	1    14050 2650
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U5
U 1 1 5E406556
P 13000 3300
F 0 "U5" H 13000 3613 50  0000 C CNN
F 1 "MOC3060S" H 14650 3450 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 3350 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 3250 50  0001 L CNN
F 4 "-" H 13000 2900 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 3450 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 3150 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 3150 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 3524 47  0000 C CNN "Gamintojo kodas"
	1    13000 3300
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R12
U 1 1 5C5DAC82
P 13650 3200
F 0 "R12" V 13550 3100 50  0000 C CNN
F 1 "R" V 13550 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 3200 50  0001 C CNN
F 3 "~" H 13650 3200 50  0001 C CNN
	1    13650 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 3200 13300 3200
Wire Wire Line
	13800 3200 14050 3200
Wire Wire Line
	14050 3200 14050 3300
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R13
U 1 1 5C5DAC83
P 13650 3550
F 0 "R13" V 13550 3450 50  0000 C CNN
F 1 "R" V 13550 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 3550 50  0001 C CNN
F 3 "~" H 13650 3550 50  0001 C CNN
	1    13650 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 3550 13900 3550
Wire Wire Line
	13500 3550 13400 3550
Wire Wire Line
	13400 3400 13400 3550
Wire Wire Line
	13400 3400 13300 3400
Wire Wire Line
	13400 3750 14050 3750
Wire Wire Line
	14050 3750 14050 3600
Connection ~ 13400 3550
Connection ~ 14050 3750
Connection ~ 14050 3200
Text Label 14450 3200 2    50   ~ 0
ACL
Text HLabel 14200 3750 2    50   Output ~ 0
OUTAC3
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D5
U 1 1 5C5DAC84
P 14050 3450
F 0 "D5" H 14179 3496 50  0000 L CNN
F 1 "Z0103MN" H 14179 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 3300 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 3750 50  0001 C CNN
	1    14050 3450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U7
U 1 1 5CB6E5B5
P 13000 4100
F 0 "U7" H 13000 4413 50  0000 C CNN
F 1 "MOC3060S" H 14650 4250 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 4150 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 4050 50  0001 L CNN
F 4 "-" H 13000 3700 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 4250 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 3950 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 3950 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 4324 47  0000 C CNN "Gamintojo kodas"
	1    13000 4100
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R14
U 1 1 5BD844FF
P 13650 4000
F 0 "R14" V 13550 3900 50  0000 C CNN
F 1 "R" V 13550 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 4000 50  0001 C CNN
F 3 "~" H 13650 4000 50  0001 C CNN
	1    13650 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 4000 13300 4000
Wire Wire Line
	13800 4000 14050 4000
Wire Wire Line
	14050 4000 14050 4100
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R15
U 1 1 5C5DACA2
P 13650 4350
F 0 "R15" V 13550 4250 50  0000 C CNN
F 1 "R" V 13550 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 4350 50  0001 C CNN
F 3 "~" H 13650 4350 50  0001 C CNN
	1    13650 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 4350 13900 4350
Wire Wire Line
	13500 4350 13400 4350
Wire Wire Line
	13400 4200 13400 4350
Wire Wire Line
	13400 4200 13300 4200
Wire Wire Line
	13400 4550 14050 4550
Wire Wire Line
	14050 4550 14050 4400
Connection ~ 13400 4350
Connection ~ 14050 4550
Connection ~ 14050 4000
Text Label 14450 4000 2    50   ~ 0
ACL
Text HLabel 14200 4550 2    50   Output ~ 0
OUTAC4
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D6
U 1 1 5CB6E5E1
P 14050 4250
F 0 "D6" H 14179 4296 50  0000 L CNN
F 1 "Z0103MN" H 14179 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 4100 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 4550 50  0001 C CNN
	1    14050 4250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U8
U 1 1 5C5DAC8B
P 13000 4900
F 0 "U8" H 13000 5213 50  0000 C CNN
F 1 "MOC3060S" H 14650 5050 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 4950 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 4850 50  0001 L CNN
F 4 "-" H 13000 4500 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 5050 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 4750 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 4750 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 5124 47  0000 C CNN "Gamintojo kodas"
	1    13000 4900
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R16
U 1 1 5C5DAC67
P 13650 4800
F 0 "R16" V 13550 4700 50  0000 C CNN
F 1 "R" V 13550 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 4800 50  0001 C CNN
F 3 "~" H 13650 4800 50  0001 C CNN
	1    13650 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 4800 13300 4800
Wire Wire Line
	13800 4800 14050 4800
Wire Wire Line
	14050 4800 14050 4900
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R17
U 1 1 5C5DAC68
P 13650 5150
F 0 "R17" V 13550 5050 50  0000 C CNN
F 1 "R" V 13550 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 5150 50  0001 C CNN
F 3 "~" H 13650 5150 50  0001 C CNN
	1    13650 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 5150 13900 5150
Wire Wire Line
	13500 5150 13400 5150
Wire Wire Line
	13400 5000 13400 5150
Wire Wire Line
	13400 5000 13300 5000
Wire Wire Line
	13400 5350 14050 5350
Wire Wire Line
	14050 5350 14050 5200
Connection ~ 13400 5150
Connection ~ 14050 5350
Connection ~ 14050 4800
Text Label 14450 4800 2    50   ~ 0
ACL
Text HLabel 14200 5350 2    50   Output ~ 0
OUTAC5
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D7
U 1 1 5E4BCB2D
P 14050 5050
F 0 "D7" H 14179 5096 50  0000 L CNN
F 1 "Z0103MN" H 14179 5005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 4900 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 5350 50  0001 C CNN
	1    14050 5050
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K1
U 1 1 5CB6E5D0
P 9450 6000
F 0 "K1" V 9925 6000 50  0000 C CNN
F 1 "FINDER-34.51" V 9926 6000 50  0001 C CNN
F 2 "Relays_THT:Relay_DPST_Schrack-RT2-FormA_RM5mm" H 10590 5960 50  0001 C CNN
F 3 "" H 9450 6000 50  0001 C CNN
	1    9450 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 -6650 7900 -6650
Text Label 7900 -6650 2    50   ~ 0
ACL
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U9
U 1 1 5CB6E5D1
P 13000 5700
F 0 "U9" H 13000 6013 50  0000 C CNN
F 1 "MOC3060S" H 14650 5850 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 5750 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 5650 50  0001 L CNN
F 4 "-" H 13000 5300 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 5850 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 5550 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 5550 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 5924 47  0000 C CNN "Gamintojo kodas"
	1    13000 5700
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R18
U 1 1 5C5DACAE
P 13650 5600
F 0 "R18" V 13550 5500 50  0000 C CNN
F 1 "R" V 13550 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 5600 50  0001 C CNN
F 3 "~" H 13650 5600 50  0001 C CNN
	1    13650 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 5600 13300 5600
Wire Wire Line
	13800 5600 14050 5600
Wire Wire Line
	14050 5600 14050 5700
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R19
U 1 1 5C19D268
P 13650 5950
F 0 "R19" V 13550 5850 50  0000 C CNN
F 1 "R" V 13550 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 5950 50  0001 C CNN
F 3 "~" H 13650 5950 50  0001 C CNN
	1    13650 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 5950 13900 5950
Wire Wire Line
	13500 5950 13400 5950
Wire Wire Line
	13400 5800 13400 5950
Wire Wire Line
	13400 5800 13300 5800
Wire Wire Line
	13400 6150 14050 6150
Wire Wire Line
	14050 6150 14050 6000
Connection ~ 13400 5950
Connection ~ 14050 6150
Connection ~ 14050 5600
Text Label 14450 5600 2    50   ~ 0
ACL
Text HLabel 14200 6150 2    50   Output ~ 0
OUTAC6
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D8
U 1 1 5CB6E5BA
P 14050 5850
F 0 "D8" H 14179 5896 50  0000 L CNN
F 1 "Z0103MN" H 14179 5805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 5700 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 6150 50  0001 C CNN
	1    14050 5850
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U10
U 1 1 5C5DAC6C
P 13000 6500
F 0 "U10" H 13000 6813 50  0000 C CNN
F 1 "MOC3060S" H 14650 6650 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 6550 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 6450 50  0001 L CNN
F 4 "-" H 13000 6100 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 6650 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 6350 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 6350 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 6724 47  0000 C CNN "Gamintojo kodas"
	1    13000 6500
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R20
U 1 1 5C5DAC6D
P 13650 6400
F 0 "R20" V 13550 6300 50  0000 C CNN
F 1 "R" V 13550 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 6400 50  0001 C CNN
F 3 "~" H 13650 6400 50  0001 C CNN
	1    13650 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 6400 13300 6400
Wire Wire Line
	13800 6400 14050 6400
Wire Wire Line
	14050 6400 14050 6500
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R21
U 1 1 5C5DAC6E
P 13650 6750
F 0 "R21" V 13550 6650 50  0000 C CNN
F 1 "R" V 13550 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 6750 50  0001 C CNN
F 3 "~" H 13650 6750 50  0001 C CNN
	1    13650 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 6750 13900 6750
Wire Wire Line
	13500 6750 13400 6750
Wire Wire Line
	13400 6600 13400 6750
Wire Wire Line
	13400 6600 13300 6600
Wire Wire Line
	13400 6950 14050 6950
Wire Wire Line
	14050 6950 14050 6800
Connection ~ 13400 6750
Connection ~ 14050 6950
Connection ~ 14050 6400
Text Label 14450 6400 2    50   ~ 0
ACL
Text HLabel 14200 6950 2    50   Output ~ 0
OUTAC7
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D9
U 1 1 5C5DACAF
P 14050 6650
F 0 "D9" H 14179 6696 50  0000 L CNN
F 1 "Z0103MN" H 14179 6605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 6500 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 6950 50  0001 C CNN
	1    14050 6650
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U11
U 1 1 5C5DACA8
P 13000 7300
F 0 "U11" H 13000 7613 50  0000 C CNN
F 1 "MOC3060S" H 14650 7450 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 7350 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 7250 50  0001 L CNN
F 4 "-" H 13000 6900 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 7450 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 7150 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 7150 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 7524 47  0000 C CNN "Gamintojo kodas"
	1    13000 7300
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R22
U 1 1 5CB6E5D2
P 13650 7200
F 0 "R22" V 13550 7100 50  0000 C CNN
F 1 "R" V 13550 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 7200 50  0001 C CNN
F 3 "~" H 13650 7200 50  0001 C CNN
	1    13650 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 7200 13300 7200
Wire Wire Line
	13800 7200 14050 7200
Wire Wire Line
	14050 7200 14050 7300
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R23
U 1 1 5E4BCB35
P 13650 7550
F 0 "R23" V 13550 7450 50  0000 C CNN
F 1 "R" V 13550 7650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 7550 50  0001 C CNN
F 3 "~" H 13650 7550 50  0001 C CNN
	1    13650 7550
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 7550 13900 7550
Wire Wire Line
	13500 7550 13400 7550
Wire Wire Line
	13400 7400 13400 7550
Wire Wire Line
	13400 7400 13300 7400
Wire Wire Line
	13400 7750 14050 7750
Wire Wire Line
	14050 7750 14050 7600
Connection ~ 13400 7550
Connection ~ 14050 7750
Connection ~ 14050 7200
Text Label 14450 7200 2    50   ~ 0
ACL
Text HLabel 14200 7750 2    50   Output ~ 0
OUTAC8
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D10
U 1 1 5E406578
P 14050 7450
F 0 "D10" H 14179 7496 50  0000 L CNN
F 1 "Z0103MN" H 14179 7405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 7300 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 7750 50  0001 C CNN
	1    14050 7450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U12
U 1 1 5C5DAC6F
P 13000 8100
F 0 "U12" H 13000 8413 50  0000 C CNN
F 1 "MOC3060S" H 14650 8250 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 13850 8150 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 13850 8050 50  0001 L CNN
F 4 "-" H 13000 7700 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 14200 8250 60  0001 C CNN "Pavadinimas"
F 6 "0" H 14650 7950 60  0001 C CNN "Kaina"
F 7 "SMD" H 14300 7950 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 13000 8324 47  0000 C CNN "Gamintojo kodas"
	1    13000 8100
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R24
U 1 1 5CB6E5C0
P 13650 8000
F 0 "R24" V 13550 7900 50  0000 C CNN
F 1 "R" V 13550 8100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 8000 50  0001 C CNN
F 3 "~" H 13650 8000 50  0001 C CNN
	1    13650 8000
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 8000 13300 8000
Wire Wire Line
	13800 8000 14050 8000
Wire Wire Line
	14050 8000 14050 8100
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R25
U 1 1 5CB6E5C1
P 13650 8350
F 0 "R25" V 13550 8250 50  0000 C CNN
F 1 "R" V 13550 8450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13580 8350 50  0001 C CNN
F 3 "~" H 13650 8350 50  0001 C CNN
	1    13650 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 8350 13900 8350
Wire Wire Line
	13500 8350 13400 8350
Wire Wire Line
	13400 8200 13400 8350
Wire Wire Line
	13400 8200 13300 8200
Wire Wire Line
	13400 8550 14050 8550
Wire Wire Line
	14050 8550 14050 8400
Connection ~ 13400 8350
Connection ~ 14050 8550
Connection ~ 14050 8000
Text Label 14450 8000 2    50   ~ 0
ACL
Text HLabel 14200 8550 2    50   Output ~ 0
OUTAC9
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D11
U 1 1 5E4BCB5C
P 14050 8250
F 0 "D11" H 14179 8296 50  0000 L CNN
F 1 "Z0103MN" H 14179 8205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 14800 8100 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 14200 8550 50  0001 C CNN
	1    14050 8250
	1    0    0    -1  
$EndComp
Text Label 10000 5800 2    50   ~ 0
ACN
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K3
U 1 1 5C5DAC93
P 7500 9050
F 0 "K3" V 7975 9050 50  0000 C CNN
F 1 "FINDER-34.51" V 7976 9050 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 8640 9010 50  0001 C CNN
F 3 "" H 7500 9050 50  0001 C CNN
	1    7500 9050
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Transistor_Array_ULN2803A-ihouse-rescue U6
U 1 1 5C5DAC94
P 9450 3750
F 0 "U6" H 9450 4317 50  0000 C CNN
F 1 "ULN2803A" H 9450 4226 50  0000 C CNN
F 2 "" H 9500 3100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 9550 3550 50  0001 C CNN
	1    9450 3750
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K4
U 1 1 60512CF2
P 8950 9050
F 0 "K4" V 9425 9050 50  0000 C CNN
F 1 "FINDER-34.51" V 9426 9050 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 10090 9010 50  0001 C CNN
F 3 "" H 8950 9050 50  0001 C CNN
	1    8950 9050
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K5
U 1 1 60512CF9
P 7500 10150
F 0 "K5" V 7975 10150 50  0000 C CNN
F 1 "FINDER-34.51" V 7976 10150 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 8640 10110 50  0001 C CNN
F 3 "" H 7500 10150 50  0001 C CNN
	1    7500 10150
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K6
U 1 1 60512D00
P 8950 10150
F 0 "K6" V 9425 10150 50  0000 C CNN
F 1 "FINDER-34.51" V 9426 10150 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 10090 10110 50  0001 C CNN
F 3 "" H 8950 10150 50  0001 C CNN
	1    8950 10150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9850 3550 10200 3550
Wire Wire Line
	9850 3650 10200 3650
Wire Wire Line
	9850 3750 10200 3750
Wire Wire Line
	9850 3850 10200 3850
Wire Wire Line
	7200 8750 6850 8750
Wire Wire Line
	7200 8950 6850 8950
Wire Wire Line
	7800 8850 8150 8850
Wire Wire Line
	8650 8750 8300 8750
Wire Wire Line
	8650 8950 8300 8950
Wire Wire Line
	9250 8850 9600 8850
Wire Wire Line
	6750 9850 7200 9850
Wire Wire Line
	7200 10050 6750 10050
Wire Wire Line
	7800 9950 8100 9950
Wire Wire Line
	8650 9850 8300 9850
Wire Wire Line
	8650 10050 8300 10050
Wire Wire Line
	9250 9950 9700 9950
Text Label 6850 8750 0    50   ~ 0
EXT1_14
Text Label 6850 8950 0    50   ~ 0
EXT1_12
Text Label 8150 8850 2    50   ~ 0
EXT1_11
Text Label 6750 9850 0    50   ~ 0
EXT2_14
Text Label 6750 10050 0    50   ~ 0
EXT2_12
Text Label 8100 9950 2    50   ~ 0
EXT2_11
Text Label 9600 8850 2    50   ~ 0
EXT3_11
Text Label 8300 8750 0    50   ~ 0
EXT3_14
Text Label 8300 8950 0    50   ~ 0
EXT3_12
Text Label 8300 9850 0    50   ~ 0
EXT4_14
Text Label 8300 10050 0    50   ~ 0
EXT4_12
Text Label 9700 9950 2    50   ~ 0
EXT4_11
Wire Wire Line
	9450 4450 9450 4550
Wire Wire Line
	9450 4550 9100 4550
Text Label 9100 4550 0    50   ~ 0
COM
Wire Wire Line
	9050 3550 8700 3550
Wire Wire Line
	9050 3650 8950 3650
Wire Wire Line
	9050 3750 8700 3750
Wire Wire Line
	9050 3850 8700 3850
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J4
U 1 1 60512D48
P 10600 9100
F 0 "J4" H 10680 9142 50  0000 L CNN
F 1 "EXT1" H 10680 9051 50  0000 L CNN
F 2 "" H 10600 9100 50  0001 C CNN
F 3 "~" H 10600 9100 50  0001 C CNN
	1    10600 9100
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J5
U 1 1 5C5DAC95
P 10600 9450
F 0 "J5" H 10680 9492 50  0000 L CNN
F 1 "EXT2" H 10680 9401 50  0000 L CNN
F 2 "" H 10600 9450 50  0001 C CNN
F 3 "~" H 10600 9450 50  0001 C CNN
	1    10600 9450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J6
U 1 1 5C5DAC96
P 10600 9800
F 0 "J6" H 10680 9842 50  0000 L CNN
F 1 "EXT3" H 10680 9751 50  0000 L CNN
F 2 "" H 10600 9800 50  0001 C CNN
F 3 "~" H 10600 9800 50  0001 C CNN
	1    10600 9800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J7
U 1 1 5C5DAC97
P 10600 10150
F 0 "J7" H 10680 10192 50  0000 L CNN
F 1 "EXT4" H 10680 10101 50  0000 L CNN
F 2 "" H 10600 10150 50  0001 C CNN
F 3 "~" H 10600 10150 50  0001 C CNN
	1    10600 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 9000 10100 9000
Wire Wire Line
	10400 9100 10100 9100
Wire Wire Line
	10400 9200 10100 9200
Wire Wire Line
	10400 9350 10100 9350
Wire Wire Line
	10400 9450 10100 9450
Wire Wire Line
	10400 9550 10100 9550
Wire Wire Line
	10400 9700 10100 9700
Wire Wire Line
	10400 9800 10100 9800
Wire Wire Line
	10400 9900 10100 9900
Wire Wire Line
	10400 10050 10100 10050
Wire Wire Line
	10400 10150 10100 10150
Wire Wire Line
	10400 10250 10100 10250
Text Label 10100 9100 0    50   ~ 0
EXT1_11
Text Label 10100 9200 0    50   ~ 0
EXT1_12
Text Label 10100 9000 0    50   ~ 0
EXT1_14
Text Label 10100 9450 0    50   ~ 0
EXT2_11
Text Label 10100 9550 0    50   ~ 0
EXT2_12
Text Label 10100 9350 0    50   ~ 0
EXT2_14
Text Label 10100 9800 0    50   ~ 0
EXT3_11
Text Label 10100 9900 0    50   ~ 0
EXT3_12
Text Label 10100 9700 0    50   ~ 0
EXT3_14
Text Label 10100 10150 0    50   ~ 0
EXT4_11
Text Label 10100 10250 0    50   ~ 0
EXT4_12
Text Label 10100 10050 0    50   ~ 0
EXT4_14
Text Label 8700 3750 0    50   ~ 0
EXT1
Text Label 8700 3850 0    50   ~ 0
EXT2
Text Label 8700 3950 0    50   ~ 0
EXT3
Text Label 8700 4050 0    50   ~ 0
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
	8600 5300 9000 5300
Wire Wire Line
	8500 5700 9150 5700
Wire Wire Line
	8050 -6250 8250 -6250
Wire Wire Line
	6550 -6650 6950 -6650
Wire Wire Line
	6550 -6250 6950 -6250
Wire Wire Line
	9450 -6500 9550 -6500
Wire Wire Line
	13400 1950 13400 2150
Wire Wire Line
	14050 2150 14200 2150
Wire Wire Line
	14050 1600 14450 1600
Wire Wire Line
	13400 2750 13400 2950
Wire Wire Line
	14050 2950 14200 2950
Wire Wire Line
	14050 2400 14450 2400
Wire Wire Line
	13400 3550 13400 3750
Wire Wire Line
	14050 3750 14200 3750
Wire Wire Line
	14050 3200 14450 3200
Wire Wire Line
	13400 4350 13400 4550
Wire Wire Line
	14050 4550 14200 4550
Wire Wire Line
	14050 4000 14450 4000
Wire Wire Line
	13400 5150 13400 5350
Wire Wire Line
	14050 5350 14200 5350
Wire Wire Line
	14050 4800 14450 4800
Wire Wire Line
	13400 5950 13400 6150
Wire Wire Line
	14050 6150 14200 6150
Wire Wire Line
	14050 5600 14450 5600
Wire Wire Line
	13400 6750 13400 6950
Wire Wire Line
	14050 6950 14200 6950
Wire Wire Line
	14050 6400 14450 6400
Wire Wire Line
	13400 7550 13400 7750
Wire Wire Line
	14050 7750 14200 7750
Wire Wire Line
	14050 7200 14450 7200
Wire Wire Line
	13400 8350 13400 8550
Wire Wire Line
	14050 8550 14200 8550
Wire Wire Line
	14050 8000 14450 8000
Wire Wire Line
	12600 1600 12700 1600
Wire Wire Line
	12600 2400 12700 2400
Wire Wire Line
	12600 3200 12700 3200
Wire Wire Line
	12600 4000 12700 4000
Wire Wire Line
	12600 4800 12700 4800
Wire Wire Line
	12600 5600 12700 5600
Wire Wire Line
	12600 6400 12700 6400
Wire Wire Line
	12600 7200 12700 7200
Wire Wire Line
	12600 8000 12700 8000
$Sheet
S 8800 1500 1350 1350
U 5C5DACB2
F0 "MCP23017 extended port" 50
F1 "mcp_port.sch" 50
F2 "EO0" O R 10150 1800 50 
F3 "EO1" O R 10150 1900 50 
F4 "EO2" O R 10150 2000 50 
F5 "EO3" O R 10150 2100 50 
F6 "EO4" O R 10150 2200 50 
F7 "EO5" O R 10150 2300 50 
F8 "EO6" O R 10150 2400 50 
F9 "EO7" O R 10150 2500 50 
F10 "EO8" O R 10150 2600 50 
F11 "EO9" O R 10150 2700 50 
F12 "~MCPRST" I L 8800 1950 50 
F13 "COM" I L 8800 1700 50 
F14 "SDA" B L 8800 2250 50 
F15 "5VDC" I L 8800 1600 50 
F16 "OC5V" O R 10150 1600 50 
F17 "SCL" I L 8800 2350 50 
$EndSheet
Wire Wire Line
	10150 1800 12700 1800
Wire Wire Line
	10150 1900 12500 1900
Wire Wire Line
	12500 1900 12500 2600
Wire Wire Line
	12500 2600 12700 2600
Wire Wire Line
	10150 2000 12400 2000
Wire Wire Line
	12400 2000 12400 3400
Wire Wire Line
	12400 3400 12700 3400
Wire Wire Line
	10150 2100 12300 2100
Wire Wire Line
	12300 2100 12300 4200
Wire Wire Line
	12300 4200 12700 4200
Wire Wire Line
	10150 2200 12200 2200
Wire Wire Line
	12200 2200 12200 5000
Wire Wire Line
	12200 5000 12700 5000
Wire Wire Line
	10150 2300 12100 2300
Wire Wire Line
	12100 2300 12100 5800
Wire Wire Line
	12100 5800 12700 5800
Wire Wire Line
	10150 2400 12000 2400
Wire Wire Line
	12000 2400 12000 6600
Wire Wire Line
	12000 6600 12700 6600
Wire Wire Line
	10150 2500 11900 2500
Wire Wire Line
	11900 2500 11900 7400
Wire Wire Line
	11900 7400 12700 7400
Wire Wire Line
	10150 2600 11800 2600
Wire Wire Line
	11800 2600 11800 8200
Wire Wire Line
	11800 8200 12700 8200
Wire Wire Line
	12600 1600 12600 2400
Wire Wire Line
	12600 2400 12600 3200
Connection ~ 12600 2400
Wire Wire Line
	12600 3200 12600 4000
Connection ~ 12600 3200
Wire Wire Line
	12600 4000 12600 4800
Connection ~ 12600 4000
Wire Wire Line
	12600 4800 12600 5600
Connection ~ 12600 4800
Wire Wire Line
	12600 5600 12600 6400
Connection ~ 12600 5600
Wire Wire Line
	12600 6400 12600 7200
Connection ~ 12600 6400
Wire Wire Line
	12600 7200 12600 8000
Connection ~ 12600 7200
Wire Wire Line
	10150 1600 12600 1600
Connection ~ 12600 1600
Wire Wire Line
	10150 2700 10250 2700
Wire Wire Line
	9050 3950 8700 3950
Wire Wire Line
	9850 3950 10200 3950
Wire Wire Line
	9850 4050 10200 4050
Wire Wire Line
	9050 4050 8700 4050
Text Label 10200 3650 2    50   ~ 0
K2
Text Label 10200 3550 2    50   ~ 0
K1
Text Label 10000 6200 2    50   ~ 0
K1
Text Label 10000 7650 2    50   ~ 0
K2
Text Label 8850 6200 0    50   ~ 0
12VDC
Text Label 8850 7650 0    50   ~ 0
12VDC
Text Label 10200 3750 2    50   ~ 0
K3
Text Label 10200 3850 2    50   ~ 0
K4
Text Label 10200 3950 2    50   ~ 0
K5
Text Label 10200 4050 2    50   ~ 0
K6
Wire Wire Line
	8650 9250 8400 9250
Wire Wire Line
	7200 9250 6950 9250
Wire Wire Line
	7200 10350 6950 10350
Wire Wire Line
	8650 10350 8400 10350
Wire Wire Line
	7800 9250 8000 9250
Wire Wire Line
	7800 10350 8000 10350
Wire Wire Line
	9250 9250 9450 9250
Wire Wire Line
	9250 10350 9450 10350
Text Label 6950 9250 0    50   ~ 0
12VDC
Text Label 6950 10350 0    50   ~ 0
12VDC
Text Label 8400 10350 0    50   ~ 0
12VDC
Text Label 8400 9250 0    50   ~ 0
12VDC
Text Label 8000 9250 2    50   ~ 0
K3
Text Label 9450 9250 2    50   ~ 0
K4
Text Label 8000 10350 2    50   ~ 0
K5
Text Label 9450 10350 2    50   ~ 0
K6
Wire Wire Line
	8950 3650 8950 3050
Wire Wire Line
	8950 3050 10250 3050
Wire Wire Line
	10250 3050 10250 2700
Wire Wire Line
	8800 1600 8500 1600
Wire Wire Line
	8800 1700 8500 1700
Wire Wire Line
	8800 1950 8500 1950
Wire Wire Line
	8800 2250 8500 2250
Wire Wire Line
	8800 2350 8500 2350
Wire Wire Line
	9850 3450 10200 3450
Text Label 10200 3450 2    50   ~ 0
12VDC
Text Label 8500 1700 0    50   ~ 0
COM
Text Label 8500 1600 0    50   ~ 0
5VDC
Text Label 8500 1950 0    50   ~ 0
~MCPRST
Text Label 8500 2250 0    50   ~ 0
SDA
Text Label 8500 2350 0    50   ~ 0
SCL
Text Label 8700 3550 0    50   ~ 0
EXT0
Wire Wire Line
	5300 2500 4950 2500
Wire Wire Line
	5300 2600 4950 2600
Text Label 4950 2600 0    50   ~ 0
SDA
Text Label 4950 2500 0    50   ~ 0
SCL
Wire Wire Line
	7200 3400 7550 3400
Wire Wire Line
	7200 3500 7550 3500
Text Label 7550 3400 2    50   ~ 0
UART_TX
Text Label 7550 3500 2    50   ~ 0
UART_RX
Wire Wire Line
	7200 3300 7550 3300
Text Label 7550 3300 2    50   ~ 0
UART_DE
Text Label 4950 3200 0    50   ~ 0
BUZZ
Text Label 7550 4000 2    50   ~ 0
LPULSE
Wire Wire Line
	5300 3400 4950 3400
Text Label 4950 3400 0    50   ~ 0
VLINE
Wire Wire Line
	4950 1900 5300 1900
Text Label 4950 1900 0    50   ~ 0
3VDC
Text Label 4950 3000 0    50   ~ 0
OPTIC
Wire Wire Line
	5300 3000 4950 3000
Wire Wire Line
	5300 3200 4950 3200
Wire Wire Line
	7200 3900 7550 3900
Wire Wire Line
	7200 3600 7550 3600
Text Label 7550 3900 2    50   ~ 0
PWM1
Text Label 7550 3600 2    50   ~ 0
PWM2
Wire Wire Line
	5300 3600 4950 3600
Text Label 4950 3600 0    50   ~ 0
UART2_TX
Wire Wire Line
	5300 3700 4950 3700
Text Label 4950 3700 0    50   ~ 0
UART2_RX
Wire Wire Line
	5300 3500 4950 3500
Text Label 4950 3500 0    50   ~ 0
UART2_DE
Wire Wire Line
	7200 4000 7550 4000
$Sheet
S 2650 1600 1350 900 
U 5C58A674
F0 "RS232 interfeisas" 50
F1 "rs232.sch" 50
F2 "5VDC" I R 4000 1750 50 
F3 "UART_TX" I R 4000 1900 50 
F4 "UART_RX" O R 4000 2050 50 
F5 "COM" U R 4000 2350 50 
F6 "RSRX" I L 2650 1900 50 
F7 "RSTX" O L 2650 2100 50 
F8 "RS5VDC" O L 2650 1700 50 
F9 "RSCOM" O L 2650 2200 50 
F10 "RSCNTRL" I L 2650 2300 50 
F11 "RC_CONTROL" O R 4000 2200 50 
$EndSheet
$Comp
L ihouse-rescue:8P8C-Connector J?
U 1 1 5C729FEA
P 1700 2100
AR Path="/5C58A674/5C729FEA" Ref="J?"  Part="1" 
AR Path="/5C729FEA" Ref="J1"  Part="1" 
F 0 "J1" H 1755 2767 50  0000 C CNN
F 1 "UART2" H 1755 2676 50  0000 C CNN
F 2 "Connectors:RJ45_8" V 1700 2125 50  0001 C CNN
F 3 "~" V 1700 2125 50  0001 C CNN
	1    1700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1700 2300 1700
Wire Wire Line
	2300 1700 2300 2400
Wire Wire Line
	2300 2400 2100 2400
Wire Wire Line
	2300 1700 2650 1700
Connection ~ 2300 1700
Wire Wire Line
	2100 2200 2150 2200
Wire Wire Line
	2150 2200 2150 2000
Wire Wire Line
	2150 2000 2100 2000
Wire Wire Line
	2100 1800 2150 1800
Wire Wire Line
	2150 1800 2150 2000
Connection ~ 2150 2000
Wire Wire Line
	2100 2300 2650 2300
Wire Wire Line
	2650 2200 2150 2200
Connection ~ 2150 2200
Wire Wire Line
	2650 2100 2100 2100
Wire Wire Line
	2650 1900 2100 1900
Wire Wire Line
	4000 1750 4450 1750
Wire Wire Line
	4000 1900 4450 1900
Wire Wire Line
	4000 2050 4450 2050
Wire Wire Line
	4000 2200 4450 2200
Wire Wire Line
	4000 2350 4450 2350
Text Label 2100 3050 2    50   ~ 0
UART_RX
Text Label 2100 3150 2    50   ~ 0
UART_TX
Text Label 4450 2350 2    50   ~ 0
COM
Text Label 4450 1750 2    50   ~ 0
5VDC
$Comp
L Connector_Generic:Conn_01x05 J13
U 1 1 5C4E60DB
P 1500 3150
F 0 "J13" H 1500 3550 50  0000 C CNN
F 1 "UART1" H 1500 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1500 3150 50  0001 C CNN
F 3 "~" H 1500 3150 50  0001 C CNN
	1    1500 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 3350 2100 3350
Wire Wire Line
	1700 3250 2100 3250
Wire Wire Line
	1700 3150 2100 3150
Wire Wire Line
	1700 3050 2100 3050
Wire Wire Line
	1700 2950 2100 2950
Text Label 2100 3250 2    50   ~ 0
COM
Text Label 2100 3350 2    50   ~ 0
5VDC
Text Label 4450 1900 2    50   ~ 0
UART2_TX
Text Label 4450 2050 2    50   ~ 0
UART2_RX
Text Notes 1400 3050 3    50   ~ 0
TB387\nRS485
Text Label 2100 2950 2    50   ~ 0
UART_DE
$Comp
L Connector_Generic:Conn_01x07 J19
U 1 1 5C690D32
P 1500 4000
F 0 "J19" H 1500 4400 50  0000 C CNN
F 1 "EV1527" V 1600 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 1500 4000 50  0001 C CNN
F 3 "~" H 1500 4000 50  0001 C CNN
	1    1500 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 4200 2100 4200
Wire Wire Line
	1700 4100 2100 4100
Wire Wire Line
	1700 4000 2100 4000
Wire Wire Line
	1700 3900 2100 3900
Wire Wire Line
	1700 3800 2100 3800
Wire Wire Line
	1700 3700 2100 3700
Text Label 2100 3700 2    50   ~ 0
COM
Text Label 2100 3800 2    50   ~ 0
5VDC
Text Label 2100 3900 2    50   ~ 0
EV1
Text Label 2100 4000 2    50   ~ 0
EV2
Text Label 2100 4100 2    50   ~ 0
EV3
Text Label 2100 4200 2    50   ~ 0
EV4
Text Label 4450 2200 2    50   ~ 0
RCCTRL
NoConn ~ 7200 3000
NoConn ~ 7200 3100
Wire Wire Line
	10350 13200 10100 13200
Wire Wire Line
	10850 13200 11100 13200
Wire Wire Line
	10350 13300 10100 13300
Wire Wire Line
	10850 13300 11100 13300
Wire Wire Line
	10350 13400 10100 13400
Wire Wire Line
	10850 13400 11100 13400
Wire Wire Line
	10350 13500 10100 13500
Wire Wire Line
	10850 13500 11100 13500
Text Label 10100 13200 0    50   ~ 0
V1A1
Text Label 10100 13300 0    50   ~ 0
V2A1
Text Label 10100 13400 0    50   ~ 0
V3A1
Text Label 10100 13500 0    50   ~ 0
V4A1
Text Label 11100 13200 2    50   ~ 0
V1A2
Text Label 11100 13300 2    50   ~ 0
V2A2
Text Label 11100 13400 2    50   ~ 0
V3A2
Text Label 11100 13500 2    50   ~ 0
V4A2
$Comp
L ihouse-rescue:Connector_Generic_Conn_02x05_Counter_Clockwise-ihouse-rescue J20
U 1 1 5CC9C0CC
P 10550 13400
AR Path="/5CC9C0CC" Ref="J20"  Part="1" 
AR Path="/5F287616/5CC9C0CC" Ref="J?"  Part="1" 
AR Path="/5C5DACB2/5CC9C0CC" Ref="J?"  Part="1" 
F 0 "J20" H 10600 13817 50  0000 C CNN
F 1 "Valves" H 10600 13726 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-10A_2x05x4.20mm_Straight" H 10550 13400 50  0001 C CNN
F 3 "~" H 10550 13400 50  0001 C CNN
	1    10550 13400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:L293-Driver_Motor U15
U 1 1 5CC9C0D3
P 5700 13600
AR Path="/5CC9C0D3" Ref="U15"  Part="1" 
AR Path="/5C3058F0/5CC9C0D3" Ref="U?"  Part="1" 
AR Path="/5F287616/5CC9C0D3" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5CC9C0D3" Ref="U?"  Part="1" 
F 0 "U15" H 5400 14700 50  0000 C CNN
F 1 "L293D" H 5400 14600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5950 12850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 5400 14300 50  0001 C CNN
	1    5700 13600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:L293-Driver_Motor U16
U 1 1 5CC9C0DA
P 8550 13600
AR Path="/5CC9C0DA" Ref="U16"  Part="1" 
AR Path="/5C3058F0/5CC9C0DA" Ref="U?"  Part="1" 
AR Path="/5F287616/5CC9C0DA" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5CC9C0DA" Ref="U?"  Part="1" 
F 0 "U16" H 8250 14700 50  0000 C CNN
F 1 "L293D" H 8250 14600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8800 12850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 8250 14300 50  0001 C CNN
	1    8550 13600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 13000 5100 13000
Wire Wire Line
	5100 13000 5100 13600
Wire Wire Line
	5100 13600 5200 13600
Wire Wire Line
	5200 13800 5000 13800
Wire Wire Line
	5000 13800 5000 13200
Wire Wire Line
	5000 13200 5200 13200
Wire Wire Line
	8050 13000 7950 13000
Wire Wire Line
	7950 13000 7950 13600
Wire Wire Line
	7950 13600 8050 13600
Wire Wire Line
	8050 13800 7850 13800
Wire Wire Line
	7850 13800 7850 13200
Wire Wire Line
	7850 13200 8050 13200
Wire Wire Line
	5100 13600 4750 13600
Connection ~ 5100 13600
Wire Wire Line
	5000 13800 4750 13800
Connection ~ 5000 13800
Wire Wire Line
	5200 13400 4750 13400
Wire Wire Line
	5200 14000 4750 14000
Wire Wire Line
	8050 14000 7600 14000
Wire Wire Line
	8050 13400 7600 13400
Wire Wire Line
	5500 14400 5500 14500
Wire Wire Line
	5500 14500 5600 14500
Wire Wire Line
	5900 14500 5900 14400
Wire Wire Line
	5800 14400 5800 14500
Connection ~ 5800 14500
Wire Wire Line
	5800 14500 5900 14500
Wire Wire Line
	5600 14400 5600 14500
Connection ~ 5600 14500
Wire Wire Line
	5600 14500 5800 14500
Wire Wire Line
	8350 14400 8350 14500
Wire Wire Line
	8350 14500 8450 14500
Wire Wire Line
	8750 14500 8750 14400
Wire Wire Line
	8450 14400 8450 14500
Connection ~ 8450 14500
Wire Wire Line
	8450 14500 8650 14500
Wire Wire Line
	8650 14400 8650 14500
Connection ~ 8650 14500
Wire Wire Line
	8650 14500 8750 14500
Wire Wire Line
	7850 13800 7600 13800
Connection ~ 7850 13800
Wire Wire Line
	7950 13600 7600 13600
Connection ~ 7950 13600
Text Label 4750 13600 0    50   ~ 0
DIRA
Text Label 4750 13800 0    50   ~ 0
DIRB
Text Label 7600 13600 0    50   ~ 0
DIRA
Text Label 7600 13800 0    50   ~ 0
DIRB
Text Label 4750 13400 0    50   ~ 0
VL1
Text Label 4750 14000 0    50   ~ 0
VL2
Text Label 7600 13400 0    50   ~ 0
VL3
Text Label 7600 14000 0    50   ~ 0
VL4
Text Label 6200 14500 2    50   ~ 0
COM
Text Label 9050 14500 2    50   ~ 0
COM
Text Label 6200 12500 2    50   ~ 0
12VDC
Connection ~ 5900 14500
Text Label 9050 12500 2    50   ~ 0
12VDC
Connection ~ 8750 14500
Text Label 6550 13000 2    50   ~ 0
V1A1
Text Label 6550 13200 2    50   ~ 0
V1A2
Text Label 6550 13600 2    50   ~ 0
V2A1
Text Label 6550 13800 2    50   ~ 0
V2A2
Text Label 9400 13000 2    50   ~ 0
V3A1
Text Label 9400 13200 2    50   ~ 0
V3A2
Text Label 9400 13600 2    50   ~ 0
V4A1
Text Label 9400 13800 2    50   ~ 0
V4A2
Wire Wire Line
	6200 14500 5900 14500
Wire Wire Line
	9050 14500 8750 14500
Wire Wire Line
	5800 12600 5800 12500
Wire Wire Line
	5800 12500 6200 12500
Wire Wire Line
	8650 12600 8650 12500
Wire Wire Line
	8650 12500 9050 12500
Wire Wire Line
	5600 12600 5600 12350
Wire Wire Line
	8450 12600 8450 12350
Text Label 8450 12350 3    50   ~ 0
5VDC
Text Label 5600 12350 3    50   ~ 0
5VDC
Wire Wire Line
	6200 13000 6550 13000
Wire Wire Line
	6200 13200 6550 13200
Wire Wire Line
	6200 13600 6550 13600
Wire Wire Line
	6200 13800 6550 13800
Wire Wire Line
	9050 13000 9400 13000
Wire Wire Line
	9050 13200 9400 13200
Wire Wire Line
	9050 13600 9400 13600
Wire Wire Line
	9050 13800 9400 13800
$EndSCHEMATC

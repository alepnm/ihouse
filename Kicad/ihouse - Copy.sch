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
P 21700 -1600
F 0 "U?" H 21700 -1275 50  0000 C CNN
F 1 "LTV-817" H 21700 -1366 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 21500 -1800 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 21700 -1700 50  0001 L CNN
	1    21700 -1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	21400 -1500 20850 -1500
Text Label 20850 -1500 0    50   ~ 0
COM
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D?
U 1 1 5BC77E07
P 22300 -1600
F 0 "D?" V 22254 -1521 50  0000 L CNN
F 1 "LL4148" V 22345 -1521 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 22300 -1775 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 22300 -1600 50  0001 C CNN
	1    22300 -1600
	0    1    1    0   
$EndComp
Wire Wire Line
	22000 -1700 22100 -1700
Wire Wire Line
	22100 -1700 22100 -1850
Wire Wire Line
	22100 -1850 22300 -1850
Wire Wire Line
	22300 -1850 22300 -1750
Wire Wire Line
	22000 -1500 22100 -1500
Wire Wire Line
	22100 -1500 22100 -1350
Wire Wire Line
	22100 -1350 22300 -1350
Wire Wire Line
	22300 -1350 22300 -1450
Wire Wire Line
	22300 -1850 22550 -1850
Connection ~ 22300 -1850
Wire Wire Line
	22300 -1350 22550 -1350
Connection ~ 22300 -1350
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44B3
P 22700 -1850
F 0 "R?" V 22600 -1950 50  0000 C CNN
F 1 "33k" V 22600 -1750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 22630 -1850 50  0001 C CNN
F 3 "~" H 22700 -1850 50  0001 C CNN
	1    22700 -1850
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44BA
P 22700 -1350
F 0 "R?" V 22600 -1450 50  0000 C CNN
F 1 "33k" V 22600 -1250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 22630 -1350 50  0001 C CNN
F 3 "~" H 22700 -1350 50  0001 C CNN
	1    22700 -1350
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44B4
P 23100 -1850
F 0 "R?" V 23000 -1950 50  0000 C CNN
F 1 "33k" V 23000 -1750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 23030 -1850 50  0001 C CNN
F 3 "~" H 23100 -1850 50  0001 C CNN
	1    23100 -1850
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44BB
P 23100 -1350
F 0 "R?" V 23000 -1450 50  0000 C CNN
F 1 "33k" V 23000 -1250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 23030 -1350 50  0001 C CNN
F 3 "~" H 23100 -1350 50  0001 C CNN
	1    23100 -1350
	0    1    1    0   
$EndComp
Wire Wire Line
	22850 -1850 22950 -1850
Wire Wire Line
	22850 -1350 22950 -1350
Wire Wire Line
	20850 -1700 21400 -1700
Text Label 20850 -1700 0    50   ~ 0
LPULSE
Wire Wire Line
	22550 -1000 22450 -1000
Wire Wire Line
	22150 -1000 22050 -1000
Wire Wire Line
	22050 -1000 22050 -950
Wire Wire Line
	22550 -600 22050 -600
Wire Wire Line
	22050 -600 22050 -650
Wire Wire Line
	22050 -600 21550 -600
Wire Wire Line
	21550 -600 21550 -550
Connection ~ 22050 -600
Wire Wire Line
	21450 -600 21550 -600
Connection ~ 21550 -600
Wire Wire Line
	22050 -1000 20850 -1000
Connection ~ 22050 -1000
Wire Wire Line
	21150 -600 20850 -600
Text Label 20850 -1000 0    50   ~ 0
VLINE
Text Label 20850 -600 0    50   ~ 0
3VDC
$Comp
L ihouse-rescue:capacitors_CP_100uFx16V-ihouse-rescue C?
U 1 1 5C3B44AF
P 22050 -400
F 0 "C?" H 21750 -350 50  0000 L CNN
F 1 "100uFx16V" H 21500 -450 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 22900 -150 50  0001 C CNN
F 3 "" H 22075 -300 50  0001 C CNN
F 4 "-" H 22100 -650 60  0001 C CNN "ventcode"
F 5 "0.06" H 22800 -350 60  0001 C CNN "Kaina"
F 6 "Kondensatorius elektrolitinis" H 22900 -50 60  0001 C CNN "Pavadinimas"
F 7 "100uFx16V" H 22168 -446 60  0001 L CNN "Nominalas"
F 8 "DIP" H 23000 -250 60  0001 C CNN "Korpuso tipas"
	1    22050 -400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	22050 -550 22050 -600
Wire Wire Line
	23350 -1000 23550 -1000
Wire Wire Line
	23350 -600 23400 -600
Text Label 24200 -1000 2    50   ~ 0
230L
Text Label 24200 -600 2    50   ~ 0
230N
$Comp
L ihouse-rescue:disc_Transformer_TEZ_22x24_6V-ihouse-rescue T?
U 1 1 5BCA7928
P 22950 -800
F 0 "T?" H 22950 -513 50  0000 C CNN
F 1 "Transformer_TEZ_22x24_6V" H 22950 -513 50  0001 C CNN
F 2 "Transformer_THT:Transformer_Breve_TEZ-22x24" H 24350 -700 50  0001 C CNN
F 3 "" H 22950 -550 50  0001 C CNN
	1    22950 -800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	23400 -1350 23400 -600
Wire Wire Line
	23250 -1350 23400 -1350
Connection ~ 23400 -600
Wire Wire Line
	23400 -600 24200 -600
Wire Wire Line
	23550 -1850 23550 -1000
Wire Wire Line
	23250 -1850 23550 -1850
Connection ~ 23550 -1000
Wire Wire Line
	23550 -1000 23650 -1000
$Comp
L ihouse-rescue:Device_Thermistor_PTC-ihouse-rescue TH?
U 1 1 5C3B44B5
P 23800 -1000
F 0 "TH?" V 23650 -1050 50  0000 C CNN
F 1 "230V/150mA" V 23950 -1000 50  0000 C CNN
F 2 "" H 23850 -1200 50  0001 L CNN
F 3 "~" H 23800 -1000 50  0001 C CNN
	1    23800 -1000
	0    1    1    0   
$EndComp
Wire Wire Line
	23950 -1000 24200 -1000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC77E14
P 22300 -1000
F 0 "R?" V 22200 -1100 50  0000 C CNN
F 1 "1k" V 22200 -900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 22230 -1000 50  0001 C CNN
F 3 "~" H 22300 -1000 50  0001 C CNN
	1    22300 -1000
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC77E15
P 22050 -800
F 0 "R?" H 22200 -750 50  0000 C CNN
F 1 "120" H 22200 -850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 21980 -800 50  0001 C CNN
F 3 "~" H 22050 -800 50  0001 C CNN
	1    22050 -800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BC77E16
P 21550 -400
F 0 "R?" H 21700 -350 50  0000 C CNN
F 1 "Rx" H 21700 -450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 21480 -400 50  0001 C CNN
F 3 "~" H 21550 -400 50  0001 C CNN
	1    21550 -400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C3B44B9
P 21300 -600
F 0 "R?" V 21400 -500 50  0000 C CNN
F 1 "Rx" V 21400 -650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 21230 -600 50  0001 C CNN
F 3 "~" H 21300 -600 50  0001 C CNN
	1    21300 -600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	21550 -150 22050 -150
Wire Wire Line
	21550 -250 21550 -150
Wire Wire Line
	22050 -250 22050 -150
Wire Wire Line
	21550 -150 21200 -150
Connection ~ 21550 -150
Text Label 21200 -150 0    50   ~ 0
COM
$Comp
L ihouse-rescue:unicon_v1-unicon M?
U 1 1 5C94CB7C
P 25050 -7050
F 0 "M?" H 25050 -5585 50  0000 C CNN
F 1 "unicon_v1" H 25050 -5676 50  0000 C CNN
F 2 "unicon:unicon_v1" H 25050 -3950 50  0001 C CNN
F 3 "" H 25050 -3950 50  0001 C CNN
	1    25050 -7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	24100 -8100 23750 -8100
Text Label 23750 -8100 0    50   ~ 0
5VDC
Wire Wire Line
	24100 -8200 23750 -8200
Text Label 23750 -8200 0    50   ~ 0
12VDC
Wire Wire Line
	24100 -7900 24000 -7900
Wire Wire Line
	24000 -7900 24000 -7800
Wire Wire Line
	24000 -7700 24100 -7700
Wire Wire Line
	24100 -7800 24000 -7800
Connection ~ 24000 -7800
Wire Wire Line
	24000 -7800 24000 -7700
Wire Wire Line
	24000 -7700 23750 -7700
Connection ~ 24000 -7700
Text Label 23750 -7700 0    50   ~ 0
COM
Wire Wire Line
	26000 -7600 26250 -7600
Text Label 26250 -7600 2    50   ~ 0
COM
Wire Wire Line
	29550 -3400 29650 -3400
Wire Wire Line
	29550 -3000 29650 -3000
Text HLabel 29650 -3400 2    50   Output ~ 0
OUTAC10
Text HLabel 29650 -3000 2    50   Output ~ 0
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
	29550 -4450 29800 -4450
Text Label 29800 -4950 2    50   ~ 0
ACL
Wire Wire Line
	28650 -4050 28950 -4050
Wire Wire Line
	29550 -4050 29800 -4050
Wire Wire Line
	28650 -2600 28950 -2600
Wire Wire Line
	29550 -2600 29800 -2600
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
	28150 -4550 28300 -4550
Wire Wire Line
	28150 -4950 28400 -4950
$Comp
L ihouse-rescue:Device_Fuse-ihouse-rescue F?
U 1 1 5E406546
P 28950 -4950
F 0 "F?" V 28850 -5050 50  0000 C CNN
F 1 "3A" V 28850 -4850 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 28880 -4950 50  0001 C CNN
F 3 "~" H 28950 -4950 50  0001 C CNN
	1    28950 -4950
	0    1    1    0   
$EndComp
Wire Wire Line
	29100 -4950 29800 -4950
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
	28400 -4950 28400 -3500
Wire Wire Line
	28400 -3500 28950 -3500
Connection ~ 28400 -4950
Wire Wire Line
	28300 -3100 28300 -4550
Wire Wire Line
	28300 -3100 28950 -3100
Connection ~ 28300 -4550
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
P 29250 -3000
F 0 "K2" V 29900 -3000 50  0000 C CNN
F 1 "RT42xxxx" V 29926 -3000 50  0001 C CNN
F 2 "Relay_THT:Relay_DPDT_Schrack-RT2-FormC_RM5mm" H 29250 -3000 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FRT2%7F1014%7Fpdf%7FEnglish%7FENG_DS_RT2_1014.pdf%7F6-1393243-3" H 29900 -2850 50  0001 C CNN
	1    29250 -3000
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
Text HLabel 28150 -4950 0    50   Input ~ 0
230L
Text HLabel 28150 -4550 0    50   Input ~ 0
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
P 32800 -8550
F 0 "U?" H 32800 -8237 50  0000 C CNN
F 1 "MOC3060S" H 34450 -8400 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -8500 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -8600 50  0001 L CNN
F 4 "-" H 32800 -8950 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -8400 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -8700 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -8700 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -8326 47  0000 C CNN "Gamintojo kodas"
	1    32800 -8550
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C7
P 33450 -8650
F 0 "R?" V 33350 -8750 50  0000 C CNN
F 1 "R" V 33350 -8550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -8650 50  0001 C CNN
F 3 "~" H 33450 -8650 50  0001 C CNN
	1    33450 -8650
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -8650 33100 -8650
Wire Wire Line
	33600 -8650 33850 -8650
Wire Wire Line
	33850 -8650 33850 -8550
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB47
P 33450 -8300
F 0 "R?" V 33350 -8400 50  0000 C CNN
F 1 "R" V 33350 -8200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -8300 50  0001 C CNN
F 3 "~" H 33450 -8300 50  0001 C CNN
	1    33450 -8300
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -8300 33700 -8300
Wire Wire Line
	33300 -8300 33200 -8300
Wire Wire Line
	33200 -8450 33200 -8300
Wire Wire Line
	33200 -8450 33100 -8450
Wire Wire Line
	33200 -8100 33850 -8100
Wire Wire Line
	33850 -8100 33850 -8250
Connection ~ 33200 -8300
Connection ~ 33850 -8100
Connection ~ 33850 -8650
Text Label 34250 -8650 2    50   ~ 0
ACL
Text HLabel 34000 -8100 2    50   Output ~ 0
OUTAC1
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5BD538B7
P 33850 -8400
F 0 "D?" H 33979 -8354 50  0000 L CNN
F 1 "Z0103MN" H 33979 -8445 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -8550 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -8100 50  0001 C CNN
	1    33850 -8400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5BD586E6
P 32800 -7750
F 0 "U?" H 32800 -7437 50  0000 C CNN
F 1 "MOC3060S" H 34450 -7600 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -7700 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -7800 50  0001 L CNN
F 4 "-" H 32800 -8150 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -7600 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -7900 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -7900 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -7526 47  0000 C CNN "Gamintojo kodas"
	1    32800 -7750
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB48
P 33450 -7850
F 0 "R?" V 33350 -7950 50  0000 C CNN
F 1 "R" V 33350 -7750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -7850 50  0001 C CNN
F 3 "~" H 33450 -7850 50  0001 C CNN
	1    33450 -7850
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -7850 33100 -7850
Wire Wire Line
	33600 -7850 33850 -7850
Wire Wire Line
	33850 -7850 33850 -7750
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C8
P 33450 -7500
F 0 "R?" V 33350 -7600 50  0000 C CNN
F 1 "R" V 33350 -7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -7500 50  0001 C CNN
F 3 "~" H 33450 -7500 50  0001 C CNN
	1    33450 -7500
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -7500 33700 -7500
Wire Wire Line
	33300 -7500 33200 -7500
Wire Wire Line
	33200 -7650 33200 -7500
Wire Wire Line
	33200 -7650 33100 -7650
Wire Wire Line
	33200 -7300 33850 -7300
Wire Wire Line
	33850 -7300 33850 -7450
Connection ~ 33200 -7500
Connection ~ 33850 -7300
Connection ~ 33850 -7850
Text Label 34250 -7850 2    50   ~ 0
ACL
Text HLabel 34000 -7300 2    50   Output ~ 0
OUTAC2
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E406555
P 33850 -7600
F 0 "D?" H 33979 -7554 50  0000 L CNN
F 1 "Z0103MN" H 33979 -7645 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -7750 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -7300 50  0001 C CNN
	1    33850 -7600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5E406556
P 32800 -6950
F 0 "U?" H 32800 -6637 50  0000 C CNN
F 1 "MOC3060S" H 34450 -6800 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -6900 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -7000 50  0001 L CNN
F 4 "-" H 32800 -7350 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -6800 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -7100 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -7100 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -6726 47  0000 C CNN "Gamintojo kodas"
	1    32800 -6950
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5B2
P 33450 -7050
F 0 "R?" V 33350 -7150 50  0000 C CNN
F 1 "R" V 33350 -6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -7050 50  0001 C CNN
F 3 "~" H 33450 -7050 50  0001 C CNN
	1    33450 -7050
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -7050 33100 -7050
Wire Wire Line
	33600 -7050 33850 -7050
Wire Wire Line
	33850 -7050 33850 -6950
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5B3
P 33450 -6700
F 0 "R?" V 33350 -6800 50  0000 C CNN
F 1 "R" V 33350 -6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -6700 50  0001 C CNN
F 3 "~" H 33450 -6700 50  0001 C CNN
	1    33450 -6700
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -6700 33700 -6700
Wire Wire Line
	33300 -6700 33200 -6700
Wire Wire Line
	33200 -6850 33200 -6700
Wire Wire Line
	33200 -6850 33100 -6850
Wire Wire Line
	33200 -6500 33850 -6500
Wire Wire Line
	33850 -6500 33850 -6650
Connection ~ 33200 -6700
Connection ~ 33850 -6500
Connection ~ 33850 -7050
Text Label 34250 -7050 2    50   ~ 0
ACL
Text HLabel 34000 -6500 2    50   Output ~ 0
OUTAC3
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5CB6E5B4
P 33850 -6800
F 0 "D?" H 33979 -6754 50  0000 L CNN
F 1 "Z0103MN" H 33979 -6845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -6950 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -6500 50  0001 C CNN
	1    33850 -6800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5B5
P 32800 -6150
F 0 "U?" H 32800 -5837 50  0000 C CNN
F 1 "MOC3060S" H 34450 -6000 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -6100 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -6200 50  0001 L CNN
F 4 "-" H 32800 -6550 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -6000 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -6300 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -6300 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -5926 47  0000 C CNN "Gamintojo kodas"
	1    32800 -6150
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BD844FF
P 33450 -6250
F 0 "R?" V 33350 -6350 50  0000 C CNN
F 1 "R" V 33350 -6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -6250 50  0001 C CNN
F 3 "~" H 33450 -6250 50  0001 C CNN
	1    33450 -6250
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -6250 33100 -6250
Wire Wire Line
	33600 -6250 33850 -6250
Wire Wire Line
	33850 -6250 33850 -6150
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E40655D
P 33450 -5900
F 0 "R?" V 33350 -6000 50  0000 C CNN
F 1 "R" V 33350 -5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -5900 50  0001 C CNN
F 3 "~" H 33450 -5900 50  0001 C CNN
	1    33450 -5900
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -5900 33700 -5900
Wire Wire Line
	33300 -5900 33200 -5900
Wire Wire Line
	33200 -6050 33200 -5900
Wire Wire Line
	33200 -6050 33100 -6050
Wire Wire Line
	33200 -5700 33850 -5700
Wire Wire Line
	33850 -5700 33850 -5850
Connection ~ 33200 -5900
Connection ~ 33850 -5700
Connection ~ 33850 -6250
Text Label 34250 -6250 2    50   ~ 0
ACL
Text HLabel 34000 -5700 2    50   Output ~ 0
OUTAC4
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5CB6E5E1
P 33850 -6000
F 0 "D?" H 33979 -5954 50  0000 L CNN
F 1 "Z0103MN" H 33979 -6045 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -6150 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -5700 50  0001 C CNN
	1    33850 -6000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5CD
P 32800 -5350
F 0 "U?" H 32800 -5037 50  0000 C CNN
F 1 "MOC3060S" H 34450 -5200 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -5300 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -5400 50  0001 L CNN
F 4 "-" H 32800 -5750 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -5200 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -5500 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -5500 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -5126 47  0000 C CNN "Gamintojo kodas"
	1    32800 -5350
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BD8C557
P 33450 -5450
F 0 "R?" V 33350 -5550 50  0000 C CNN
F 1 "R" V 33350 -5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -5450 50  0001 C CNN
F 3 "~" H 33450 -5450 50  0001 C CNN
	1    33450 -5450
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -5450 33100 -5450
Wire Wire Line
	33600 -5450 33850 -5450
Wire Wire Line
	33850 -5450 33850 -5350
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5BD8C560
P 33450 -5100
F 0 "R?" V 33350 -5200 50  0000 C CNN
F 1 "R" V 33350 -5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -5100 50  0001 C CNN
F 3 "~" H 33450 -5100 50  0001 C CNN
	1    33450 -5100
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -5100 33700 -5100
Wire Wire Line
	33300 -5100 33200 -5100
Wire Wire Line
	33200 -5250 33200 -5100
Wire Wire Line
	33200 -5250 33100 -5250
Wire Wire Line
	33200 -4900 33850 -4900
Wire Wire Line
	33850 -4900 33850 -5050
Connection ~ 33200 -5100
Connection ~ 33850 -4900
Connection ~ 33850 -5450
Text Label 34250 -5450 2    50   ~ 0
ACL
Text HLabel 34000 -4900 2    50   Output ~ 0
OUTAC5
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E4BCB2D
P 33850 -5200
F 0 "D?" H 33979 -5154 50  0000 L CNN
F 1 "Z0103MN" H 33979 -5245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -5350 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -4900 50  0001 C CNN
	1    33850 -5200
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K1
U 1 1 5CB6E5D0
P 29250 -4250
F 0 "K1" V 29725 -4250 50  0000 C CNN
F 1 "FINDER-34.51" V 29726 -4250 50  0001 C CNN
F 2 "" H 30390 -4290 50  0001 C CNN
F 3 "" H 29250 -4250 50  0001 C CNN
	1    29250 -4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 -6650 7900 -6650
Text Label 7900 -6650 2    50   ~ 0
ACL
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5CB6E5D1
P 32800 -4550
F 0 "U?" H 32800 -4237 50  0000 C CNN
F 1 "MOC3060S" H 34450 -4400 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -4500 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -4600 50  0001 L CNN
F 4 "-" H 32800 -4950 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -4400 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -4700 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -4700 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -4326 47  0000 C CNN "Gamintojo kodas"
	1    32800 -4550
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB57
P 33450 -4650
F 0 "R?" V 33350 -4750 50  0000 C CNN
F 1 "R" V 33350 -4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -4650 50  0001 C CNN
F 3 "~" H 33450 -4650 50  0001 C CNN
	1    33450 -4650
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -4650 33100 -4650
Wire Wire Line
	33600 -4650 33850 -4650
Wire Wire Line
	33850 -4650 33850 -4550
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C19D268
P 33450 -4300
F 0 "R?" V 33350 -4400 50  0000 C CNN
F 1 "R" V 33350 -4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -4300 50  0001 C CNN
F 3 "~" H 33450 -4300 50  0001 C CNN
	1    33450 -4300
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -4300 33700 -4300
Wire Wire Line
	33300 -4300 33200 -4300
Wire Wire Line
	33200 -4450 33200 -4300
Wire Wire Line
	33200 -4450 33100 -4450
Wire Wire Line
	33200 -4100 33850 -4100
Wire Wire Line
	33850 -4100 33850 -4250
Connection ~ 33200 -4300
Connection ~ 33850 -4100
Connection ~ 33850 -4650
Text Label 34250 -4650 2    50   ~ 0
ACL
Text HLabel 34000 -4100 2    50   Output ~ 0
OUTAC6
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5CB6E5BA
P 33850 -4400
F 0 "D?" H 33979 -4354 50  0000 L CNN
F 1 "Z0103MN" H 33979 -4445 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -4550 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -4100 50  0001 C CNN
	1    33850 -4400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5C1AD12C
P 32800 -3750
F 0 "U?" H 32800 -3437 50  0000 C CNN
F 1 "MOC3060S" H 34450 -3600 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -3700 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -3800 50  0001 L CNN
F 4 "-" H 32800 -4150 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -3600 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -3900 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -3900 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -3526 47  0000 C CNN "Gamintojo kodas"
	1    32800 -3750
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C1AD132
P 33450 -3850
F 0 "R?" V 33350 -3950 50  0000 C CNN
F 1 "R" V 33350 -3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -3850 50  0001 C CNN
F 3 "~" H 33450 -3850 50  0001 C CNN
	1    33450 -3850
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -3850 33100 -3850
Wire Wire Line
	33600 -3850 33850 -3850
Wire Wire Line
	33850 -3850 33850 -3750
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C1AD13B
P 33450 -3500
F 0 "R?" V 33350 -3600 50  0000 C CNN
F 1 "R" V 33350 -3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -3500 50  0001 C CNN
F 3 "~" H 33450 -3500 50  0001 C CNN
	1    33450 -3500
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -3500 33700 -3500
Wire Wire Line
	33300 -3500 33200 -3500
Wire Wire Line
	33200 -3650 33200 -3500
Wire Wire Line
	33200 -3650 33100 -3650
Wire Wire Line
	33200 -3300 33850 -3300
Wire Wire Line
	33850 -3300 33850 -3450
Connection ~ 33200 -3500
Connection ~ 33850 -3300
Connection ~ 33850 -3850
Text Label 34250 -3850 2    50   ~ 0
ACL
Text HLabel 34000 -3300 2    50   Output ~ 0
OUTAC7
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E4BCB59
P 33850 -3600
F 0 "D?" H 33979 -3554 50  0000 L CNN
F 1 "Z0103MN" H 33979 -3645 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -3750 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -3300 50  0001 C CNN
	1    33850 -3600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5E4BCB34
P 32800 -2950
F 0 "U?" H 32800 -2637 50  0000 C CNN
F 1 "MOC3060S" H 34450 -2800 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -2900 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -3000 50  0001 L CNN
F 4 "-" H 32800 -3350 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -2800 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -3100 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -3100 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -2726 47  0000 C CNN "Gamintojo kodas"
	1    32800 -2950
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5D2
P 33450 -3050
F 0 "R?" V 33350 -3150 50  0000 C CNN
F 1 "R" V 33350 -2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -3050 50  0001 C CNN
F 3 "~" H 33450 -3050 50  0001 C CNN
	1    33450 -3050
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -3050 33100 -3050
Wire Wire Line
	33600 -3050 33850 -3050
Wire Wire Line
	33850 -3050 33850 -2950
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E4BCB35
P 33450 -2700
F 0 "R?" V 33350 -2800 50  0000 C CNN
F 1 "R" V 33350 -2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -2700 50  0001 C CNN
F 3 "~" H 33450 -2700 50  0001 C CNN
	1    33450 -2700
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -2700 33700 -2700
Wire Wire Line
	33300 -2700 33200 -2700
Wire Wire Line
	33200 -2850 33200 -2700
Wire Wire Line
	33200 -2850 33100 -2850
Wire Wire Line
	33200 -2500 33850 -2500
Wire Wire Line
	33850 -2500 33850 -2650
Connection ~ 33200 -2700
Connection ~ 33850 -2500
Connection ~ 33850 -3050
Text Label 34250 -3050 2    50   ~ 0
ACL
Text HLabel 34000 -2500 2    50   Output ~ 0
OUTAC8
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E406578
P 33850 -2800
F 0 "D?" H 33979 -2754 50  0000 L CNN
F 1 "Z0103MN" H 33979 -2845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -2950 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -2500 50  0001 C CNN
	1    33850 -2800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:disc_MOC3060S-ihouse-rescue U?
U 1 1 5C1C2219
P 32800 -2150
F 0 "U?" H 32800 -1837 50  0000 C CNN
F 1 "MOC3060S" H 34450 -2000 50  0001 L CNN
F 2 "disc:DIP-6_W9.53mm_SMD" H 33650 -2100 50  0001 L CIN
F 3 "http://datasheet.octopart.com/MOC3063SR2M-Fairchild-Semiconductor-datasheet-10497244.pdf" H 33650 -2200 50  0001 L CNN
F 4 "-" H 32800 -2550 60  0001 C CNN "ventcode"
F 5 "Optosimistorius" H 34000 -2000 60  0001 C CNN "Pavadinimas"
F 6 "0" H 34450 -2300 60  0001 C CNN "Kaina"
F 7 "SMD" H 34100 -2300 60  0001 C CNN "Korpuso tipas"
F 8 "MOC3060S" H 32800 -1926 47  0000 C CNN "Gamintojo kodas"
	1    32800 -2150
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C0
P 33450 -2250
F 0 "R?" V 33350 -2350 50  0000 C CNN
F 1 "R" V 33350 -2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -2250 50  0001 C CNN
F 3 "~" H 33450 -2250 50  0001 C CNN
	1    33450 -2250
	0    1    1    0   
$EndComp
Wire Wire Line
	33300 -2250 33100 -2250
Wire Wire Line
	33600 -2250 33850 -2250
Wire Wire Line
	33850 -2250 33850 -2150
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CB6E5C1
P 33450 -1900
F 0 "R?" V 33350 -2000 50  0000 C CNN
F 1 "R" V 33350 -1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 33380 -1900 50  0001 C CNN
F 3 "~" H 33450 -1900 50  0001 C CNN
	1    33450 -1900
	0    1    1    0   
$EndComp
Wire Wire Line
	33600 -1900 33700 -1900
Wire Wire Line
	33300 -1900 33200 -1900
Wire Wire Line
	33200 -2050 33200 -1900
Wire Wire Line
	33200 -2050 33100 -2050
Wire Wire Line
	33200 -1700 33850 -1700
Wire Wire Line
	33850 -1700 33850 -1850
Connection ~ 33200 -1900
Connection ~ 33850 -1700
Connection ~ 33850 -2250
Text Label 34250 -2250 2    50   ~ 0
ACL
Text HLabel 34000 -1700 2    50   Output ~ 0
OUTAC9
$Comp
L ihouse-rescue:Triac_Thyristor_Z0103MN-ihouse-rescue D?
U 1 1 5E4BCB5C
P 33850 -2000
F 0 "D?" H 33979 -1954 50  0000 L CNN
F 1 "Z0103MN" H 33979 -2045 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 34600 -2150 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 34000 -1700 50  0001 C CNN
	1    33850 -2000
	1    0    0    -1  
$EndComp
Text Label 29800 -4450 2    50   ~ 0
ACN
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K3
U 1 1 5CB6E5E8
P 27300 -1200
F 0 "K3" V 27775 -1200 50  0000 C CNN
F 1 "FINDER-34.51" V 27776 -1200 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 28440 -1240 50  0001 C CNN
F 3 "" H 27300 -1200 50  0001 C CNN
	1    27300 -1200
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Transistor_Array_ULN2803A-ihouse-rescue U?
U 1 1 5CB6E5E9
P 29250 -6500
F 0 "U?" H 29250 -5933 50  0000 C CNN
F 1 "ULN2803A" H 29250 -6024 50  0000 C CNN
F 2 "" H 29300 -7150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 29350 -6700 50  0001 C CNN
	1    29250 -6500
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K4
U 1 1 60512CF2
P 28750 -1200
F 0 "K4" V 29225 -1200 50  0000 C CNN
F 1 "FINDER-34.51" V 29226 -1200 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 29890 -1240 50  0001 C CNN
F 3 "" H 28750 -1200 50  0001 C CNN
	1    28750 -1200
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K5
U 1 1 60512CF9
P 27300 -100
F 0 "K5" V 27775 -100 50  0000 C CNN
F 1 "FINDER-34.51" V 27776 -100 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 28440 -140 50  0001 C CNN
F 3 "" H 27300 -100 50  0001 C CNN
	1    27300 -100
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K6
U 1 1 60512D00
P 28750 -100
F 0 "K6" V 29225 -100 50  0000 C CNN
F 1 "FINDER-34.51" V 29226 -100 50  0001 C CNN
F 2 "Relays_THT:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 29890 -140 50  0001 C CNN
F 3 "" H 28750 -100 50  0001 C CNN
	1    28750 -100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	29650 -6700 30000 -6700
Wire Wire Line
	29650 -6600 30000 -6600
Wire Wire Line
	29650 -6500 30000 -6500
Wire Wire Line
	29650 -6400 30000 -6400
Wire Wire Line
	27000 -1500 26650 -1500
Wire Wire Line
	27000 -1300 26650 -1300
Wire Wire Line
	27600 -1400 27950 -1400
Wire Wire Line
	28450 -1500 28100 -1500
Wire Wire Line
	28450 -1300 28100 -1300
Wire Wire Line
	29050 -1400 29400 -1400
Wire Wire Line
	26550 -400 27000 -400
Wire Wire Line
	27000 -200 26550 -200
Wire Wire Line
	27600 -300 27900 -300
Wire Wire Line
	28450 -400 28100 -400
Wire Wire Line
	28450 -200 28100 -200
Wire Wire Line
	29050 -300 29500 -300
Text Label 26650 -1500 0    50   ~ 0
EXT1_14
Text Label 26650 -1300 0    50   ~ 0
EXT1_12
Text Label 27950 -1400 2    50   ~ 0
EXT1_11
Text Label 26550 -400 0    50   ~ 0
EXT2_14
Text Label 26550 -200 0    50   ~ 0
EXT2_12
Text Label 27900 -300 2    50   ~ 0
EXT2_11
Text Label 29400 -1400 2    50   ~ 0
EXT3_11
Text Label 28100 -1500 0    50   ~ 0
EXT3_14
Text Label 28100 -1300 0    50   ~ 0
EXT3_12
Text Label 28100 -400 0    50   ~ 0
EXT4_14
Text Label 28100 -200 0    50   ~ 0
EXT4_12
Text Label 29500 -300 2    50   ~ 0
EXT4_11
Wire Wire Line
	29250 -5800 29250 -5700
Wire Wire Line
	29250 -5700 28900 -5700
Text Label 28900 -5700 0    50   ~ 0
COM
Wire Wire Line
	28850 -6700 28500 -6700
Wire Wire Line
	28850 -6600 28750 -6600
Wire Wire Line
	28850 -6500 28500 -6500
Wire Wire Line
	28850 -6400 28500 -6400
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 60512D48
P 30400 -1150
F 0 "J?" H 30480 -1108 50  0000 L CNN
F 1 "EXT1" H 30480 -1199 50  0000 L CNN
F 2 "" H 30400 -1150 50  0001 C CNN
F 3 "~" H 30400 -1150 50  0001 C CNN
	1    30400 -1150
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 5CB6E5EE
P 30400 -800
F 0 "J?" H 30480 -758 50  0000 L CNN
F 1 "EXT2" H 30480 -849 50  0000 L CNN
F 2 "" H 30400 -800 50  0001 C CNN
F 3 "~" H 30400 -800 50  0001 C CNN
	1    30400 -800
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 5CB6E5EF
P 30400 -450
F 0 "J?" H 30480 -408 50  0000 L CNN
F 1 "EXT3" H 30480 -499 50  0000 L CNN
F 2 "" H 30400 -450 50  0001 C CNN
F 3 "~" H 30400 -450 50  0001 C CNN
	1    30400 -450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J?
U 1 1 5CB6E5F0
P 30400 -100
F 0 "J?" H 30480 -58 50  0000 L CNN
F 1 "EXT4" H 30480 -149 50  0000 L CNN
F 2 "" H 30400 -100 50  0001 C CNN
F 3 "~" H 30400 -100 50  0001 C CNN
	1    30400 -100
	1    0    0    -1  
$EndComp
Wire Wire Line
	30200 -1250 29900 -1250
Wire Wire Line
	30200 -1150 29900 -1150
Wire Wire Line
	30200 -1050 29900 -1050
Wire Wire Line
	30200 -900 29900 -900
Wire Wire Line
	30200 -800 29900 -800
Wire Wire Line
	30200 -700 29900 -700
Wire Wire Line
	30200 -550 29900 -550
Wire Wire Line
	30200 -450 29900 -450
Wire Wire Line
	30200 -350 29900 -350
Wire Wire Line
	30200 -200 29900 -200
Wire Wire Line
	30200 -100 29900 -100
Wire Wire Line
	30200 0    29900 0   
Text Label 29900 -1150 0    50   ~ 0
EXT1_11
Text Label 29900 -1050 0    50   ~ 0
EXT1_12
Text Label 29900 -1250 0    50   ~ 0
EXT1_14
Text Label 29900 -800 0    50   ~ 0
EXT2_11
Text Label 29900 -700 0    50   ~ 0
EXT2_12
Text Label 29900 -900 0    50   ~ 0
EXT2_14
Text Label 29900 -450 0    50   ~ 0
EXT3_11
Text Label 29900 -350 0    50   ~ 0
EXT3_12
Text Label 29900 -550 0    50   ~ 0
EXT3_14
Text Label 29900 -100 0    50   ~ 0
EXT4_11
Text Label 29900 0    0    50   ~ 0
EXT4_12
Text Label 29900 -200 0    50   ~ 0
EXT4_14
Text Label 28500 -6500 0    50   ~ 0
EXT1
Text Label 28500 -6400 0    50   ~ 0
EXT2
Text Label 28500 -6300 0    50   ~ 0
EXT3
Text Label 28500 -6200 0    50   ~ 0
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
	28400 -4950 28800 -4950
Wire Wire Line
	28300 -4550 28950 -4550
Wire Wire Line
	8050 -6250 8250 -6250
Wire Wire Line
	6550 -6650 6950 -6650
Wire Wire Line
	6550 -6250 6950 -6250
Wire Wire Line
	9450 -6500 9550 -6500
Wire Wire Line
	33200 -8300 33200 -8100
Wire Wire Line
	33850 -8100 34000 -8100
Wire Wire Line
	33850 -8650 34250 -8650
Wire Wire Line
	33200 -7500 33200 -7300
Wire Wire Line
	33850 -7300 34000 -7300
Wire Wire Line
	33850 -7850 34250 -7850
Wire Wire Line
	33200 -6700 33200 -6500
Wire Wire Line
	33850 -6500 34000 -6500
Wire Wire Line
	33850 -7050 34250 -7050
Wire Wire Line
	33200 -5900 33200 -5700
Wire Wire Line
	33850 -5700 34000 -5700
Wire Wire Line
	33850 -6250 34250 -6250
Wire Wire Line
	33200 -5100 33200 -4900
Wire Wire Line
	33850 -4900 34000 -4900
Wire Wire Line
	33850 -5450 34250 -5450
Wire Wire Line
	33200 -4300 33200 -4100
Wire Wire Line
	33850 -4100 34000 -4100
Wire Wire Line
	33850 -4650 34250 -4650
Wire Wire Line
	33200 -3500 33200 -3300
Wire Wire Line
	33850 -3300 34000 -3300
Wire Wire Line
	33850 -3850 34250 -3850
Wire Wire Line
	33200 -2700 33200 -2500
Wire Wire Line
	33850 -2500 34000 -2500
Wire Wire Line
	33850 -3050 34250 -3050
Wire Wire Line
	33200 -1900 33200 -1700
Wire Wire Line
	33850 -1700 34000 -1700
Wire Wire Line
	33850 -2250 34250 -2250
Wire Wire Line
	32400 -8650 32500 -8650
Wire Wire Line
	32400 -7850 32500 -7850
Wire Wire Line
	32400 -7050 32500 -7050
Wire Wire Line
	32400 -6250 32500 -6250
Wire Wire Line
	32400 -5450 32500 -5450
Wire Wire Line
	32400 -4650 32500 -4650
Wire Wire Line
	32400 -3850 32500 -3850
Wire Wire Line
	32400 -3050 32500 -3050
Wire Wire Line
	32400 -2250 32500 -2250
$Sheet
S 28600 -8750 1350 1350
U 5F287616
F0 "MCP23017 extended port" 50
F1 "mcp_port.sch" 50
F2 "EO0" O R 29950 -8450 50 
F3 "EO1" O R 29950 -8350 50 
F4 "EO2" O R 29950 -8250 50 
F5 "EO3" O R 29950 -8150 50 
F6 "EO4" O R 29950 -8050 50 
F7 "EO5" O R 29950 -7950 50 
F8 "EO6" O R 29950 -7850 50 
F9 "EO7" O R 29950 -7750 50 
F10 "EO8" O R 29950 -7650 50 
F11 "EO9" O R 29950 -7550 50 
F12 "~MCPRST" I L 28600 -8300 50 
F13 "COM" I L 28600 -8550 50 
F14 "SDA" B L 28600 -8000 50 
F15 "5VDC" I L 28600 -8650 50 
F16 "OC5V" O R 29950 -8650 50 
F17 "SCL" I L 28600 -7900 50 
$EndSheet
Wire Wire Line
	29950 -8450 32500 -8450
Wire Wire Line
	29950 -8350 32300 -8350
Wire Wire Line
	32300 -8350 32300 -7650
Wire Wire Line
	32300 -7650 32500 -7650
Wire Wire Line
	29950 -8250 32200 -8250
Wire Wire Line
	32200 -8250 32200 -6850
Wire Wire Line
	32200 -6850 32500 -6850
Wire Wire Line
	29950 -8150 32100 -8150
Wire Wire Line
	32100 -8150 32100 -6050
Wire Wire Line
	32100 -6050 32500 -6050
Wire Wire Line
	29950 -8050 32000 -8050
Wire Wire Line
	32000 -8050 32000 -5250
Wire Wire Line
	32000 -5250 32500 -5250
Wire Wire Line
	29950 -7950 31900 -7950
Wire Wire Line
	31900 -7950 31900 -4450
Wire Wire Line
	31900 -4450 32500 -4450
Wire Wire Line
	29950 -7850 31800 -7850
Wire Wire Line
	31800 -7850 31800 -3650
Wire Wire Line
	31800 -3650 32500 -3650
Wire Wire Line
	29950 -7750 31700 -7750
Wire Wire Line
	31700 -7750 31700 -2850
Wire Wire Line
	31700 -2850 32500 -2850
Wire Wire Line
	29950 -7650 31600 -7650
Wire Wire Line
	31600 -7650 31600 -2050
Wire Wire Line
	31600 -2050 32500 -2050
Wire Wire Line
	32400 -8650 32400 -7850
Wire Wire Line
	32400 -7850 32400 -7050
Connection ~ 32400 -7850
Wire Wire Line
	32400 -7050 32400 -6250
Connection ~ 32400 -7050
Wire Wire Line
	32400 -6250 32400 -5450
Connection ~ 32400 -6250
Wire Wire Line
	32400 -5450 32400 -4650
Connection ~ 32400 -5450
Wire Wire Line
	32400 -4650 32400 -3850
Connection ~ 32400 -4650
Wire Wire Line
	32400 -3850 32400 -3050
Connection ~ 32400 -3850
Wire Wire Line
	32400 -3050 32400 -2250
Connection ~ 32400 -3050
Wire Wire Line
	29950 -8650 32400 -8650
Connection ~ 32400 -8650
Wire Wire Line
	29950 -7550 30050 -7550
Wire Wire Line
	28850 -6300 28500 -6300
Wire Wire Line
	29650 -6300 30000 -6300
Wire Wire Line
	29650 -6200 30000 -6200
Wire Wire Line
	28850 -6200 28500 -6200
Text Label 30000 -6600 2    50   ~ 0
K2
Text Label 30000 -6700 2    50   ~ 0
K1
Text Label 29800 -4050 2    50   ~ 0
K1
Text Label 29800 -2600 2    50   ~ 0
K2
Text Label 28650 -4050 0    50   ~ 0
12VDC
Text Label 28650 -2600 0    50   ~ 0
12VDC
Text Label 30000 -6500 2    50   ~ 0
K3
Text Label 30000 -6400 2    50   ~ 0
K4
Text Label 30000 -6300 2    50   ~ 0
K5
Text Label 30000 -6200 2    50   ~ 0
K6
Wire Wire Line
	28450 -1000 28200 -1000
Wire Wire Line
	27000 -1000 26750 -1000
Wire Wire Line
	27000 100  26750 100 
Wire Wire Line
	28450 100  28200 100 
Wire Wire Line
	27600 -1000 27800 -1000
Wire Wire Line
	27600 100  27800 100 
Wire Wire Line
	29050 -1000 29250 -1000
Wire Wire Line
	29050 100  29250 100 
Text Label 26750 -1000 0    50   ~ 0
12VDC
Text Label 26750 100  0    50   ~ 0
12VDC
Text Label 28200 100  0    50   ~ 0
12VDC
Text Label 28200 -1000 0    50   ~ 0
12VDC
Text Label 27800 -1000 2    50   ~ 0
K3
Text Label 29250 -1000 2    50   ~ 0
K4
Text Label 27800 100  2    50   ~ 0
K5
Text Label 29250 100  2    50   ~ 0
K6
Wire Wire Line
	28750 -6600 28750 -7200
Wire Wire Line
	28750 -7200 30050 -7200
Wire Wire Line
	30050 -7200 30050 -7550
Wire Wire Line
	28600 -8650 28300 -8650
Wire Wire Line
	28600 -8550 28300 -8550
Wire Wire Line
	28600 -8300 28300 -8300
Wire Wire Line
	28600 -8000 28300 -8000
Wire Wire Line
	28600 -7900 28300 -7900
Wire Wire Line
	29650 -6800 30000 -6800
Text Label 30000 -6800 2    50   ~ 0
12VDC
Text Label 28300 -8550 0    50   ~ 0
COM
Text Label 28300 -8650 0    50   ~ 0
5VDC
Text Label 28300 -8300 0    50   ~ 0
~MCPRST
Text Label 28300 -8000 0    50   ~ 0
SDA
Text Label 28300 -7900 0    50   ~ 0
SCL
Text Label 28500 -6700 0    50   ~ 0
EXT0
Wire Wire Line
	24100 -7400 23750 -7400
Wire Wire Line
	24100 -7300 23750 -7300
Text Label 23750 -7300 0    50   ~ 0
SDA
Text Label 23750 -7400 0    50   ~ 0
SCL
Wire Wire Line
	26000 -6500 26350 -6500
Wire Wire Line
	26000 -6400 26350 -6400
Text Label 26350 -6500 2    50   ~ 0
UART_TX
Text Label 26350 -6400 2    50   ~ 0
UART_RX
Wire Wire Line
	26000 -6600 26350 -6600
Text Label 26350 -6600 2    50   ~ 0
UART_DE
Text Label 23750 -6700 0    50   ~ 0
BUZZ
Text Label 26350 -5900 2    50   ~ 0
LPULSE
Wire Wire Line
	24100 -6500 23750 -6500
Text Label 23750 -6500 0    50   ~ 0
VLINE
Wire Wire Line
	23750 -8000 24100 -8000
Text Label 23750 -8000 0    50   ~ 0
3VDC
Text Label 23750 -6900 0    50   ~ 0
OPTIC
Wire Wire Line
	24100 -6900 23750 -6900
Wire Wire Line
	24100 -6700 23750 -6700
Wire Wire Line
	26000 -6000 26350 -6000
Wire Wire Line
	26000 -6300 26350 -6300
Text Label 26350 -6000 2    50   ~ 0
PWM1
Text Label 26350 -6300 2    50   ~ 0
PWM2
Wire Wire Line
	24100 -6300 23750 -6300
Text Label 23750 -6300 0    50   ~ 0
UART2_TX
Wire Wire Line
	24100 -6200 23750 -6200
Text Label 23750 -6200 0    50   ~ 0
UART2_RX
Wire Wire Line
	24100 -6400 23750 -6400
Text Label 23750 -6400 0    50   ~ 0
UART2_DE
Wire Wire Line
	26000 -5900 26350 -5900
Wire Wire Line
	26000 -7000 26350 -7000
$Comp
L ihouse-rescue:MAX232-Interface U?
U 1 1 5C4DAC03
P 4600 5600
F 0 "U?" H 4150 6700 50  0000 C CNN
F 1 "MAX232" H 4900 6700 50  0000 C CNN
F 2 "" H 4650 4550 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 4600 5700 50  0001 C CNN
	1    4600 5600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:MAX232-Interface U?
U 1 1 5C4DAEAB
P 11200 5600
F 0 "U?" H 11600 6700 50  0000 C CNN
F 1 "MAX232" H 10850 6700 50  0000 C CNN
F 2 "" H 11250 4550 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 11200 5700 50  0001 C CNN
	1    11200 5600
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:8P8C-Connector J?
U 1 1 5C4DB6B7
P 7900 5600
F 0 "J?" H 7955 6267 50  0000 C CNN
F 1 "8P8C" H 7955 6176 50  0000 C CNN
F 2 "" V 7900 5625 50  0001 C CNN
F 3 "~" V 7900 5625 50  0001 C CNN
	1    7900 5600
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Conn_01x08-Connector_Generic J?
U 1 1 5C4DB944
P 6900 5600
F 0 "J?" H 6850 5100 50  0000 L CNN
F 1 "Conn_01x08" H 6980 5501 50  0001 L CNN
F 2 "" H 6900 5600 50  0001 C CNN
F 3 "~" H 6900 5600 50  0001 C CNN
	1    6900 5600
	1    0    0    1   
$EndComp
Wire Wire Line
	6700 5900 6450 5900
Wire Wire Line
	6450 5900 6450 5200
Wire Wire Line
	6450 5200 6700 5200
Wire Wire Line
	4600 4400 4600 4300
Wire Wire Line
	4600 4300 5900 4300
Wire Wire Line
	6450 4300 6450 5200
Connection ~ 6450 5200
Wire Wire Line
	6700 5300 6600 5300
Wire Wire Line
	6600 5300 6600 5500
Wire Wire Line
	6600 5800 6700 5800
Wire Wire Line
	6700 5700 6600 5700
Connection ~ 6600 5700
Wire Wire Line
	6600 5700 6600 5800
Wire Wire Line
	6700 5500 6600 5500
Connection ~ 6600 5500
Wire Wire Line
	6600 5500 6600 5700
Wire Wire Line
	4600 6800 4600 6900
Wire Wire Line
	4600 6900 5900 6900
Connection ~ 6600 5800
$Comp
L Device:C C?
U 1 1 5C762029
P 5500 4850
F 0 "C?" H 5615 4896 50  0000 L CNN
F 1 "1u" H 5615 4805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5538 4700 50  0001 C CNN
F 3 "~" H 5500 4850 50  0001 C CNN
	1    5500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4700 5500 4700
Wire Wire Line
	5400 5000 5500 5000
$Comp
L Device:C C?
U 1 1 5C80A08B
P 3700 4850
F 0 "C?" H 3450 4900 50  0000 L CNN
F 1 "1u" H 3450 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3738 4700 50  0001 C CNN
F 3 "~" H 3700 4850 50  0001 C CNN
	1    3700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4700 3800 4700
Wire Wire Line
	3700 5000 3800 5000
$Comp
L Device:C C?
U 1 1 5C8B4246
P 5650 5200
F 0 "C?" V 5500 5250 50  0000 L CNN
F 1 "1u" V 5500 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5688 5050 50  0001 C CNN
F 3 "~" H 5650 5200 50  0001 C CNN
	1    5650 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5200 5400 5200
$Comp
L Device:C C?
U 1 1 5CA5FFFD
P 5650 5500
F 0 "C?" V 5500 5550 50  0000 L CNN
F 1 "1u" V 5500 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5688 5350 50  0001 C CNN
F 3 "~" H 5650 5500 50  0001 C CNN
	1    5650 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5500 5400 5500
Wire Wire Line
	5400 5900 5600 5900
Text Label 5600 5900 2    50   ~ 0
TXN
Wire Wire Line
	6700 5400 6150 5400
Text Label 6150 5400 0    50   ~ 0
TXN
Wire Wire Line
	5400 6300 5600 6300
Text Label 5600 6300 2    50   ~ 0
RXN
Wire Wire Line
	6700 5600 6150 5600
Text Label 6150 5600 0    50   ~ 0
RXN
Wire Wire Line
	3800 5900 3350 5900
Wire Wire Line
	3800 6300 3350 6300
Text Label 3350 5900 0    50   ~ 0
NEX_TX
Text Label 3350 6300 0    50   ~ 0
NEX_RX
Text Label 3350 6900 0    50   ~ 0
GND
Text Label 3350 4300 0    50   ~ 0
5VDC
Wire Wire Line
	8300 5900 8550 5900
Wire Wire Line
	8550 5900 8550 5200
Wire Wire Line
	8550 5200 8300 5200
Wire Wire Line
	8300 5300 8400 5300
Wire Wire Line
	8400 5300 8400 5500
Wire Wire Line
	8400 5700 8300 5700
Wire Wire Line
	8300 5500 8400 5500
Connection ~ 8400 5500
Wire Wire Line
	8400 5500 8400 5700
Wire Wire Line
	8550 5200 8550 4700
Wire Wire Line
	8550 4250 8750 4250
Wire Wire Line
	11200 4250 11200 4400
Connection ~ 8550 5200
Wire Wire Line
	11200 6900 11200 6800
Connection ~ 8400 5700
Wire Wire Line
	8300 5600 9150 5600
Wire Wire Line
	8300 5800 8750 5800
Wire Wire Line
	8300 5400 9150 5400
Wire Wire Line
	10400 5900 10150 5900
Wire Wire Line
	10400 6300 10150 6300
$Comp
L Device:C C?
U 1 1 5DF2F8F2
P 10300 4850
F 0 "C?" H 10050 5000 50  0000 L CNN
F 1 "1u" H 10050 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10338 4700 50  0001 C CNN
F 3 "~" H 10300 4850 50  0001 C CNN
	1    10300 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF2FA28
P 12100 4850
F 0 "C?" H 12215 4896 50  0000 L CNN
F 1 "1u" H 12215 4805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 12138 4700 50  0001 C CNN
F 3 "~" H 12100 4850 50  0001 C CNN
	1    12100 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF2FB58
P 10150 5200
F 0 "C?" V 10300 5250 50  0000 L CNN
F 1 "1u" V 10300 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10188 5050 50  0001 C CNN
F 3 "~" H 10150 5200 50  0001 C CNN
	1    10150 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DF2FCA8
P 10150 5500
F 0 "C?" V 10000 5550 50  0000 L CNN
F 1 "1u" V 10000 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10188 5350 50  0001 C CNN
F 3 "~" H 10150 5500 50  0001 C CNN
	1    10150 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 5500 10300 5500
Wire Wire Line
	10400 5200 10300 5200
Wire Wire Line
	10400 4700 10300 4700
Wire Wire Line
	10400 5000 10300 5000
Wire Wire Line
	12000 4700 12100 4700
Wire Wire Line
	12000 5000 12100 5000
Text Label 9150 5600 2    50   ~ 0
TXC
Text Label 9150 5400 2    50   ~ 0
RXC
Text Label 10150 6300 0    50   ~ 0
RXC
Text Label 10150 5900 0    50   ~ 0
TXC
Wire Wire Line
	4600 4300 3350 4300
Connection ~ 4600 4300
Connection ~ 4600 6900
Wire Wire Line
	11200 4250 13450 4250
Connection ~ 11200 4250
Connection ~ 11200 6900
Wire Wire Line
	12000 5900 12200 5900
Wire Wire Line
	12000 6300 12200 6300
Text Label 13450 5900 2    50   ~ 0
UART_TX
Text Label 13450 6300 2    50   ~ 0
UART_RX
Text Label 9800 5800 2    50   ~ 0
RC_CONTROL
Text Label 13450 4250 2    50   ~ 0
5VDC
Text Label 13450 6900 2    50   ~ 0
GND
$Comp
L Device:Thermistor_NTC TH?
U 1 1 5F0EED1E
P 8550 4550
F 0 "TH?" H 8250 4600 50  0000 L CNN
F 1 "500mA" H 8150 4500 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 8550 4600 50  0001 C CNN
F 3 "~" H 8550 4600 50  0001 C CNN
	1    8550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4400 8550 4250
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F292D05
P 12650 5300
F 0 "R?" V 12650 5300 50  0000 C CNN
F 1 "1k" V 12750 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12580 5300 50  0001 C CNN
F 3 "~" H 12650 5300 50  0001 C CNN
	1    12650 5300
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F292E91
P 12900 5300
F 0 "R?" V 12900 5300 50  0000 C CNN
F 1 "1k" V 13000 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12830 5300 50  0001 C CNN
F 3 "~" H 12900 5300 50  0001 C CNN
	1    12900 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F292FE1
P 12650 5650
F 0 "D?" V 12750 5850 50  0000 R CNN
F 1 "RX" V 12650 5850 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 12650 5650 50  0001 C CNN
F 3 "~" H 12650 5650 50  0001 C CNN
	1    12650 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F29312B
P 12900 5650
F 0 "D?" V 13000 5550 50  0000 R CNN
F 1 "TX" V 12900 5550 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 12900 5650 50  0001 C CNN
F 3 "~" H 12900 5650 50  0001 C CNN
	1    12900 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12650 5800 12650 6300
Connection ~ 12650 6300
Wire Wire Line
	12650 6300 13450 6300
Wire Wire Line
	12900 5800 12900 5900
Connection ~ 12900 5900
Wire Wire Line
	12900 5900 13450 5900
Wire Wire Line
	12650 5500 12650 5450
Wire Wire Line
	12900 5500 12900 5450
Wire Wire Line
	12650 5050 12900 5050
Wire Wire Line
	12900 5050 12900 5150
Wire Wire Line
	12650 5050 12650 5150
Text Label 13450 5050 2    50   ~ 0
3VDC
Wire Wire Line
	12900 5050 13450 5050
Connection ~ 12900 5050
$Comp
L Device:LED D?
U 1 1 5F57F66C
P 8750 4950
F 0 "D?" V 8800 4800 50  0000 R CNN
F 1 "RC" V 8700 4800 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8750 4950 50  0001 C CNN
F 3 "~" H 8750 4950 50  0001 C CNN
	1    8750 4950
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F57F7B4
P 8750 4550
F 0 "R?" V 8750 4550 50  0000 C CNN
F 1 "2k" V 8850 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 4550 50  0001 C CNN
F 3 "~" H 8750 4550 50  0001 C CNN
	1    8750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4400 8750 4250
Connection ~ 8750 4250
Wire Wire Line
	8750 4250 9900 4250
Wire Wire Line
	8750 4700 8750 4800
Wire Wire Line
	8750 5100 8750 5800
Connection ~ 8750 5800
Wire Wire Line
	8750 5800 8900 5800
Wire Wire Line
	8400 6900 9900 6900
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 60151E18
P 12350 6300
F 0 "R?" V 12350 6300 50  0000 C CNN
F 1 "1k" V 12450 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12280 6300 50  0001 C CNN
F 3 "~" H 12350 6300 50  0001 C CNN
	1    12350 6300
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 604976DF
P 12350 5900
F 0 "R?" V 12350 5900 50  0000 C CNN
F 1 "1k" V 12450 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12280 5900 50  0001 C CNN
F 3 "~" H 12350 5900 50  0001 C CNN
	1    12350 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	12500 5900 12900 5900
Wire Wire Line
	12500 6300 12650 6300
Wire Wire Line
	5800 5200 5900 5200
Wire Wire Line
	5900 5200 5900 4300
Connection ~ 5900 4300
Wire Wire Line
	5900 4300 6450 4300
Wire Wire Line
	5800 5500 5900 5500
Wire Wire Line
	5900 5500 5900 6900
Connection ~ 5900 6900
Wire Wire Line
	5900 6900 6600 6900
Wire Wire Line
	8400 5700 8400 6900
Wire Wire Line
	11200 6900 13450 6900
Wire Wire Line
	6600 5800 6600 6900
Wire Wire Line
	3350 6900 4600 6900
Wire Wire Line
	10000 5200 9900 5200
Wire Wire Line
	9900 5200 9900 4250
Connection ~ 9900 4250
Wire Wire Line
	9900 4250 11200 4250
Wire Wire Line
	10000 5500 9900 5500
Wire Wire Line
	9900 5500 9900 6900
Connection ~ 9900 6900
Wire Wire Line
	9900 6900 11200 6900
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 61315A6A
P 9050 5800
F 0 "R?" V 9050 5800 50  0000 C CNN
F 1 "1k" V 9150 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 5800 50  0001 C CNN
F 3 "~" H 9050 5800 50  0001 C CNN
	1    9050 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5800 9800 5800
$EndSCHEMATC

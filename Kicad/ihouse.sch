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
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J8
U 1 1 5C5DAC5F
P 3500 14950
F 0 "J8" H 3580 14946 50  0000 L CNN
F 1 "Conn_01x01" H 3580 14901 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 3500 14950 50  0001 C CNN
F 3 "~" H 3500 14950 50  0001 C CNN
	1    3500 14950
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x01-ihouse-rescue J9
U 1 1 5C5DAC60
P 3500 15100
F 0 "J9" H 3580 15096 50  0000 L CNN
F 1 "Conn_01x01" H 3580 15051 50  0001 L CNN
F 2 "mech:Faston_6.3x0.8x14" H 3500 15100 50  0001 C CNN
F 3 "~" H 3500 15100 50  0001 C CNN
	1    3500 15100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 14950 3800 14950
Wire Wire Line
	3800 14950 3800 15100
Wire Wire Line
	3800 15100 3700 15100
$Comp
L ihouse-rescue:Connector_Generic_Conn_01x03-ihouse-rescue J12
U 1 1 5BC74B70
P 3500 14550
F 0 "J12" H 3580 14546 50  0000 L CNN
F 1 "Conn_01x03" H 3580 14501 50  0001 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G_1x03_P5.00mm_Vertical" H 3500 14550 50  0001 C CNN
F 3 "~" H 3500 14550 50  0001 C CNN
	1    3500 14550
	-1   0    0    -1  
$EndComp
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
	17950 6050 17850 6050
Connection ~ 17950 5950
Wire Wire Line
	17350 6050 16950 6050
Text Label 16950 6050 0    50   ~ 0
OUTAC8
Text Notes 16950 7700 0    50   ~ 0
OUTAC1  -> lempa 1\nOUTAC2  -> lempa 2\nOUTAC3  -> lempa 3\nOUTAC4  -> lempa 4\nOUTAC5  -> lempa 5\nOUTAC6  -> koridoriaus apsvietimas\nOUTAC7  -> \nOUTAC8  -> \nOUTAC9  -> ventiliatorius WC\nOUTAC10 -> protinga rozete\nOUTAC11 -> garu surinktuvas\nOUTAC12 -> duso kabina
Wire Wire Line
	17350 6150 16950 6150
Text Label 16950 6150 0    50   ~ 0
OUTAC9
Wire Wire Line
	17950 6150 17850 6150
Connection ~ 17950 6050
Text Notes 17050 4850 0    50   ~ 0
INACL1 -> WC apsvietimas L\nINACN1 -> WC apsvietimas N\nINACL2 -> vonios apsvietimas L\nINACN2 -> vonios apsvietimas N
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
P 6900 12550
F 0 "U13" H 6900 12875 50  0000 C CNN
F 1 "LTV-817" H 6900 12784 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 6700 12350 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 6900 12450 50  0001 L CNN
	1    6900 12550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 12650 7750 12650
Text Label 7750 12650 2    50   ~ 0
COM
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D12
U 1 1 5BC77E07
P 6300 12550
F 0 "D12" V 6254 12629 50  0000 L CNN
F 1 "LL4148" V 6345 12629 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 6300 12375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 6300 12550 50  0001 C CNN
	1    6300 12550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6600 12450 6500 12450
Wire Wire Line
	6500 12450 6500 12300
Wire Wire Line
	6500 12300 6300 12300
Wire Wire Line
	6300 12300 6300 12400
Wire Wire Line
	6600 12650 6500 12650
Wire Wire Line
	6500 12650 6500 12800
Wire Wire Line
	6500 12800 6300 12800
Wire Wire Line
	6300 12800 6300 12700
Wire Wire Line
	6300 12300 6050 12300
Connection ~ 6300 12300
Wire Wire Line
	6300 12800 6050 12800
Connection ~ 6300 12800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R26
U 1 1 5C3B44B3
P 5900 12300
F 0 "R26" V 5900 12300 50  0000 C CNN
F 1 "33k" V 6000 12300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5830 12300 50  0001 C CNN
F 3 "~" H 5900 12300 50  0001 C CNN
	1    5900 12300
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R28
U 1 1 5C5DAC75
P 5900 12800
F 0 "R28" V 5900 12800 50  0000 C CNN
F 1 "33k" V 6000 12800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5830 12800 50  0001 C CNN
F 3 "~" H 5900 12800 50  0001 C CNN
	1    5900 12800
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R27
U 1 1 5C5DAC72
P 5500 12300
F 0 "R27" V 5500 12300 50  0000 C CNN
F 1 "33k" V 5600 12300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5430 12300 50  0001 C CNN
F 3 "~" H 5500 12300 50  0001 C CNN
	1    5500 12300
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R29
U 1 1 5C5DAC76
P 5500 12800
F 0 "R29" V 5500 12800 50  0000 C CNN
F 1 "33k" V 5600 12800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5430 12800 50  0001 C CNN
F 3 "~" H 5500 12800 50  0001 C CNN
	1    5500 12800
	0    -1   1    0   
$EndComp
Wire Wire Line
	5750 12300 5650 12300
Wire Wire Line
	5750 12800 5650 12800
Wire Wire Line
	7750 12450 7200 12450
Text Label 7750 12450 2    50   ~ 0
LPULSE
Wire Wire Line
	5650 13150 5750 13150
Wire Wire Line
	6050 13150 6200 13150
Wire Wire Line
	6200 13150 6200 13200
Wire Wire Line
	5650 13550 6200 13550
Wire Wire Line
	6200 13550 6200 13500
Wire Wire Line
	6200 13550 6700 13550
Wire Wire Line
	6700 13550 6700 13600
Connection ~ 6200 13550
Wire Wire Line
	6800 13550 6700 13550
Connection ~ 6700 13550
Wire Wire Line
	6200 13150 7750 13150
Connection ~ 6200 13150
Wire Wire Line
	7100 13550 7750 13550
Text Label 7750 13150 2    50   ~ 0
VLINE
Text Label 7750 13550 2    50   ~ 0
3VDC
$Comp
L ihouse-rescue:capacitors_CP_100uFx16V-ihouse-rescue C1
U 1 1 5C5DAC70
P 6200 13750
F 0 "C1" H 5900 13800 50  0000 L CNN
F 1 "100uFx16V" H 5650 13700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 7050 14000 50  0001 C CNN
F 3 "" H 6225 13850 50  0001 C CNN
F 4 "-" H 6250 13500 60  0001 C CNN "ventcode"
F 5 "0.06" H 6950 13800 60  0001 C CNN "Kaina"
F 6 "Kondensatorius elektrolitinis" H 7050 14100 60  0001 C CNN "Pavadinimas"
F 7 "100uFx16V" H 6318 13704 60  0001 L CNN "Nominalas"
F 8 "DIP" H 7150 13900 60  0001 C CNN "Korpuso tipas"
	1    6200 13750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 13600 6200 13550
Wire Wire Line
	4850 13150 4600 13150
Wire Wire Line
	4850 13550 4750 13550
$Comp
L ihouse-rescue:disc_Transformer_TEZ_22x24_6V-ihouse-rescue TR2
U 1 1 5C5DAC63
P 5250 13350
F 0 "TR2" H 5250 13637 50  0000 C CNN
F 1 "Transformer_TEZ_22x24_6V" H 5250 13637 50  0001 C CNN
F 2 "Transformers_THT:Transformer_Breve_TEZ-22x24" H 6650 13450 50  0001 C CNN
F 3 "" H 5250 13600 50  0001 C CNN
	1    5250 13350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 12800 4750 13550
Wire Wire Line
	5350 12800 5250 12800
Wire Wire Line
	4600 12300 4600 13150
Wire Wire Line
	5350 12300 5250 12300
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R30
U 1 1 5BC77E14
P 5900 13150
F 0 "R30" V 5900 13150 50  0000 C CNN
F 1 "1k" V 6000 13150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 13150 50  0001 C CNN
F 3 "~" H 5900 13150 50  0001 C CNN
	1    5900 13150
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R31
U 1 1 5BC77E15
P 6200 13350
F 0 "R31" V 6200 13350 50  0000 C CNN
F 1 "120" V 6100 13350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 13350 50  0001 C CNN
F 3 "~" H 6200 13350 50  0001 C CNN
	1    6200 13350
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R33
U 1 1 5BC77E16
P 6700 13750
F 0 "R33" V 6700 13750 50  0000 C CNN
F 1 "Rx" V 6600 13750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 13750 50  0001 C CNN
F 3 "~" H 6700 13750 50  0001 C CNN
	1    6700 13750
	-1   0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R32
U 1 1 5C5DAC74
P 6950 13550
F 0 "R32" V 6950 13550 50  0000 C CNN
F 1 "Rx" V 6850 13550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 13550 50  0001 C CNN
F 3 "~" H 6950 13550 50  0001 C CNN
	1    6950 13550
	0    1    -1   0   
$EndComp
Wire Wire Line
	6700 14000 6200 14000
Wire Wire Line
	6700 13900 6700 14000
Wire Wire Line
	6200 13900 6200 14000
Wire Wire Line
	6700 14000 7050 14000
Connection ~ 6700 14000
Text Label 7050 14000 2    50   ~ 0
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
	5450 17050 5600 17050
Wire Wire Line
	5450 17450 5600 17450
Wire Wire Line
	5450 15800 5700 15800
Wire Wire Line
	4700 16200 4850 16200
Wire Wire Line
	5450 16200 5700 16200
Wire Wire Line
	4150 17850 4700 17850
Wire Wire Line
	5450 17850 5700 17850
$Comp
L ihouse-rescue:Device_Fuse-ihouse-rescue F1
U 1 1 5C5DAC9F
P 4550 15700
F 0 "F1" V 4450 15600 50  0000 C CNN
F 1 "5A" V 4450 15800 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 4480 15700 50  0001 C CNN
F 3 "~" H 4550 15700 50  0001 C CNN
	1    4550 15700
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 16950 4850 16950
$Comp
L ihouse-rescue:Relay_RT42xxxx-ihouse-rescue K2
U 1 1 5E406543
P 5150 17450
F 0 "K2" V 5800 17450 50  0000 C CNN
F 1 "RT42xxxx" V 5826 17450 50  0001 C CNN
F 2 "Relays_THT:Relay_DPDT_Finder_40.52" H 5150 17450 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FRT2%7F1014%7Fpdf%7FEnglish%7FENG_DS_RT2_1014.pdf%7F6-1393243-3" H 5800 17600 50  0001 C CNN
	1    5150 17450
	0    -1   -1   0   
$EndComp
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
F 0 "R8" V 13650 1600 50  0000 C CNN
F 1 "R" V 13750 1600 50  0000 C CNN
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
F 0 "R9" V 13650 1950 50  0000 C CNN
F 1 "R" V 13750 1950 50  0000 C CNN
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
F 0 "R10" V 13650 2400 50  0000 C CNN
F 1 "R" V 13750 2400 50  0000 C CNN
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
F 0 "R11" V 13650 2750 50  0000 C CNN
F 1 "R" V 13750 2750 50  0000 C CNN
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
F 0 "R12" V 13650 3200 50  0000 C CNN
F 1 "R" V 13750 3200 50  0000 C CNN
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
F 0 "R13" V 13650 3550 50  0000 C CNN
F 1 "R" V 13750 3550 50  0000 C CNN
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
F 0 "R14" V 13650 4000 50  0000 C CNN
F 1 "R" V 13750 4000 50  0000 C CNN
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
F 0 "R15" V 13650 4350 50  0000 C CNN
F 1 "R" V 13750 4350 50  0000 C CNN
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
F 0 "R16" V 13650 4800 50  0000 C CNN
F 1 "R" V 13750 4800 50  0000 C CNN
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
F 0 "R17" V 13650 5150 50  0000 C CNN
F 1 "R" V 13750 5150 50  0000 C CNN
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
P 5150 16000
F 0 "K1" V 5625 16000 50  0000 C CNN
F 1 "FINDER-34.51" V 5626 16000 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 6290 15960 50  0001 C CNN
F 3 "" H 5150 16000 50  0001 C CNN
	1    5150 16000
	0    -1   -1   0   
$EndComp
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
F 0 "R18" V 13650 5600 50  0000 C CNN
F 1 "R" V 13750 5600 50  0000 C CNN
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
F 0 "R19" V 13650 5950 50  0000 C CNN
F 1 "R" V 13750 5950 50  0000 C CNN
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
F 0 "R20" V 13650 6400 50  0000 C CNN
F 1 "R" V 13750 6400 50  0000 C CNN
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
F 0 "R21" V 13650 6750 50  0000 C CNN
F 1 "R" V 13750 6750 50  0000 C CNN
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
F 0 "R22" V 13650 7200 50  0000 C CNN
F 1 "R" V 13750 7200 50  0000 C CNN
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
F 0 "R23" V 13650 7550 50  0000 C CNN
F 1 "R" V 13750 7550 50  0000 C CNN
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
F 0 "R24" V 13650 8000 50  0000 C CNN
F 1 "R" V 13750 8000 50  0000 C CNN
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
F 0 "R25" V 13650 8350 50  0000 C CNN
F 1 "R" V 13750 8350 50  0000 C CNN
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
Text Label 5700 15800 2    50   ~ 0
ACL
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K3
U 1 1 5C5DAC93
P 18050 9650
F 0 "K3" V 18525 9650 50  0000 C CNN
F 1 "FINDER-34.51" V 18526 9650 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 19190 9610 50  0001 C CNN
F 3 "" H 18050 9650 50  0001 C CNN
	1    18050 9650
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
P 19500 9650
F 0 "K4" V 19975 9650 50  0000 C CNN
F 1 "FINDER-34.51" V 19976 9650 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 20640 9610 50  0001 C CNN
F 3 "" H 19500 9650 50  0001 C CNN
	1    19500 9650
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K5
U 1 1 60512CF9
P 18050 10750
F 0 "K5" V 18525 10750 50  0000 C CNN
F 1 "FINDER-34.51" V 18526 10750 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 19190 10710 50  0001 C CNN
F 3 "" H 18050 10750 50  0001 C CNN
	1    18050 10750
	0    -1   -1   0   
$EndComp
$Comp
L ihouse-rescue:Relay_FINDER-40.51-ihouse-rescue K6
U 1 1 60512D00
P 19500 10750
F 0 "K6" V 19975 10750 50  0000 C CNN
F 1 "FINDER-34.51" V 19976 10750 50  0001 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 20640 10710 50  0001 C CNN
F 3 "" H 19500 10750 50  0001 C CNN
	1    19500 10750
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
	17750 9350 17400 9350
Wire Wire Line
	17750 9550 17400 9550
Wire Wire Line
	18350 9450 18700 9450
Wire Wire Line
	19200 9350 18850 9350
Wire Wire Line
	19200 9550 18850 9550
Wire Wire Line
	19800 9450 20150 9450
Wire Wire Line
	17300 10450 17750 10450
Wire Wire Line
	17750 10650 17300 10650
Wire Wire Line
	18350 10550 18650 10550
Wire Wire Line
	19200 10450 18850 10450
Wire Wire Line
	19200 10650 18850 10650
Wire Wire Line
	19800 10550 20250 10550
Text Label 17400 9350 0    50   ~ 0
EXT1_14
Text Label 17400 9550 0    50   ~ 0
EXT1_12
Text Label 18700 9450 2    50   ~ 0
EXT1_11
Text Label 17300 10450 0    50   ~ 0
EXT2_14
Text Label 17300 10650 0    50   ~ 0
EXT2_12
Text Label 18650 10550 2    50   ~ 0
EXT2_11
Text Label 20150 9450 2    50   ~ 0
EXT3_11
Text Label 18850 9350 0    50   ~ 0
EXT3_14
Text Label 18850 9550 0    50   ~ 0
EXT3_12
Text Label 18850 10450 0    50   ~ 0
EXT4_14
Text Label 18850 10650 0    50   ~ 0
EXT4_12
Text Label 20250 10550 2    50   ~ 0
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
P 21150 9700
F 0 "J4" H 21230 9742 50  0000 L CNN
F 1 "EXT1" H 21230 9651 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 21150 9700 50  0001 C CNN
F 3 "~" H 21150 9700 50  0001 C CNN
	1    21150 9700
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J5
U 1 1 5C5DAC95
P 21150 10050
F 0 "J5" H 21230 10092 50  0000 L CNN
F 1 "EXT2" H 21230 10001 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 21150 10050 50  0001 C CNN
F 3 "~" H 21150 10050 50  0001 C CNN
	1    21150 10050
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J6
U 1 1 5C5DAC96
P 21150 10400
F 0 "J6" H 21230 10442 50  0000 L CNN
F 1 "EXT3" H 21230 10351 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 21150 10400 50  0001 C CNN
F 3 "~" H 21150 10400 50  0001 C CNN
	1    21150 10400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Connector_Screw_Terminal_01x03-ihouse-rescue J7
U 1 1 5C5DAC97
P 21150 10750
F 0 "J7" H 21230 10792 50  0000 L CNN
F 1 "EXT4" H 21230 10701 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 21150 10750 50  0001 C CNN
F 3 "~" H 21150 10750 50  0001 C CNN
	1    21150 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	20950 9600 20650 9600
Wire Wire Line
	20950 9700 20650 9700
Wire Wire Line
	20950 9800 20650 9800
Wire Wire Line
	20950 9950 20650 9950
Wire Wire Line
	20950 10050 20650 10050
Wire Wire Line
	20950 10150 20650 10150
Wire Wire Line
	20950 10300 20650 10300
Wire Wire Line
	20950 10400 20650 10400
Wire Wire Line
	20950 10500 20650 10500
Wire Wire Line
	20950 10650 20650 10650
Wire Wire Line
	20950 10750 20650 10750
Wire Wire Line
	20950 10850 20650 10850
Text Label 20650 9700 0    50   ~ 0
EXT1_11
Text Label 20650 9800 0    50   ~ 0
EXT1_12
Text Label 20650 9600 0    50   ~ 0
EXT1_14
Text Label 20650 10050 0    50   ~ 0
EXT2_11
Text Label 20650 10150 0    50   ~ 0
EXT2_12
Text Label 20650 9950 0    50   ~ 0
EXT2_14
Text Label 20650 10400 0    50   ~ 0
EXT3_11
Text Label 20650 10500 0    50   ~ 0
EXT3_12
Text Label 20650 10300 0    50   ~ 0
EXT3_14
Text Label 20650 10750 0    50   ~ 0
EXT4_11
Text Label 20650 10850 0    50   ~ 0
EXT4_12
Text Label 20650 10650 0    50   ~ 0
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
	4050 15700 4400 15700
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
Text Label 5700 16200 2    50   ~ 0
K1
Text Label 5700 17850 2    50   ~ 0
K2
Text Label 4150 17850 0    50   ~ 0
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
	19200 9850 18950 9850
Wire Wire Line
	17750 9850 17500 9850
Wire Wire Line
	17750 10950 17500 10950
Wire Wire Line
	19200 10950 18950 10950
Wire Wire Line
	18350 9850 18550 9850
Wire Wire Line
	18350 10950 18550 10950
Wire Wire Line
	19800 9850 20000 9850
Wire Wire Line
	19800 10950 20000 10950
Text Label 17500 9850 0    50   ~ 0
12VDC
Text Label 17500 10950 0    50   ~ 0
12VDC
Text Label 18950 10950 0    50   ~ 0
12VDC
Text Label 18950 9850 0    50   ~ 0
12VDC
Text Label 18550 9850 2    50   ~ 0
K3
Text Label 20000 9850 2    50   ~ 0
K4
Text Label 18550 10950 2    50   ~ 0
K5
Text Label 20000 10950 2    50   ~ 0
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
L ihouse-rescue:Conn_01x05-Connector_Generic J13
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
L ihouse-rescue:Conn_01x07-Connector_Generic J19
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
$Comp
L ihouse-rescue:L293-Driver_Motor U15
U 1 1 5CC9C0D3
P 2300 6550
AR Path="/5CC9C0D3" Ref="U15"  Part="1" 
AR Path="/5C3058F0/5CC9C0D3" Ref="U?"  Part="1" 
AR Path="/5F287616/5CC9C0D3" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5CC9C0D3" Ref="U?"  Part="1" 
F 0 "U15" H 2000 7650 50  0000 C CNN
F 1 "L293D" H 2000 7550 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 2550 5800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 2000 7250 50  0001 C CNN
	1    2300 6550
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:L293-Driver_Motor U16
U 1 1 5CC9C0DA
P 5150 6550
AR Path="/5CC9C0DA" Ref="U16"  Part="1" 
AR Path="/5C3058F0/5CC9C0DA" Ref="U?"  Part="1" 
AR Path="/5F287616/5CC9C0DA" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5CC9C0DA" Ref="U?"  Part="1" 
F 0 "U16" H 4850 7650 50  0000 C CNN
F 1 "L293D" H 4850 7550 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5400 5800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4850 7250 50  0001 C CNN
	1    5150 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5950 1700 5950
Wire Wire Line
	1700 5950 1700 6550
Wire Wire Line
	1700 6550 1800 6550
Wire Wire Line
	1800 6750 1600 6750
Wire Wire Line
	1600 6750 1600 6150
Wire Wire Line
	1600 6150 1800 6150
Wire Wire Line
	4650 5950 4550 5950
Wire Wire Line
	4550 5950 4550 6550
Wire Wire Line
	4550 6550 4650 6550
Wire Wire Line
	4650 6750 4450 6750
Wire Wire Line
	4450 6750 4450 6150
Wire Wire Line
	4450 6150 4650 6150
Wire Wire Line
	1700 6550 1350 6550
Connection ~ 1700 6550
Wire Wire Line
	1600 6750 1350 6750
Connection ~ 1600 6750
Wire Wire Line
	1800 6350 1350 6350
Wire Wire Line
	1800 6950 1350 6950
Wire Wire Line
	4650 6950 4200 6950
Wire Wire Line
	4650 6350 4200 6350
Wire Wire Line
	2100 7350 2100 7450
Wire Wire Line
	2100 7450 2200 7450
Wire Wire Line
	2500 7450 2500 7350
Wire Wire Line
	2400 7350 2400 7450
Connection ~ 2400 7450
Wire Wire Line
	2400 7450 2500 7450
Wire Wire Line
	2200 7350 2200 7450
Connection ~ 2200 7450
Wire Wire Line
	2200 7450 2400 7450
Wire Wire Line
	4950 7350 4950 7450
Wire Wire Line
	4950 7450 5050 7450
Wire Wire Line
	5350 7450 5350 7350
Wire Wire Line
	5050 7350 5050 7450
Connection ~ 5050 7450
Wire Wire Line
	5050 7450 5250 7450
Wire Wire Line
	5250 7350 5250 7450
Connection ~ 5250 7450
Wire Wire Line
	5250 7450 5350 7450
Wire Wire Line
	4450 6750 4200 6750
Connection ~ 4450 6750
Wire Wire Line
	4550 6550 4200 6550
Connection ~ 4550 6550
Text Label 1350 6550 0    50   ~ 0
DIRA
Text Label 1350 6750 0    50   ~ 0
DIRB
Text Label 4200 6550 0    50   ~ 0
DIRA
Text Label 4200 6750 0    50   ~ 0
DIRB
Text Label 1350 6350 0    50   ~ 0
VL1
Text Label 1350 6950 0    50   ~ 0
VL2
Text Label 4200 6350 0    50   ~ 0
VL3
Text Label 4200 6950 0    50   ~ 0
VL4
Text Label 2800 7450 2    50   ~ 0
COM
Text Label 5650 7450 2    50   ~ 0
COM
Text Label 2800 5450 2    50   ~ 0
12VDC
Connection ~ 2500 7450
Text Label 5650 5450 2    50   ~ 0
12VDC
Connection ~ 5350 7450
Wire Wire Line
	2800 7450 2500 7450
Wire Wire Line
	5650 7450 5350 7450
Wire Wire Line
	2400 5550 2400 5450
Wire Wire Line
	2400 5450 2800 5450
Wire Wire Line
	5250 5550 5250 5450
Wire Wire Line
	5250 5450 5650 5450
Wire Wire Line
	2200 5550 2200 5300
Wire Wire Line
	5050 5550 5050 5300
Text Label 5050 5300 3    50   ~ 0
5VDC
Text Label 2200 5300 3    50   ~ 0
5VDC
Wire Wire Line
	2800 5950 2900 5950
Wire Wire Line
	2800 6150 2900 6150
Wire Wire Line
	2800 6550 2900 6550
Wire Wire Line
	2800 6750 2900 6750
Wire Wire Line
	5650 5950 5750 5950
Wire Wire Line
	5650 6150 5750 6150
Wire Wire Line
	5650 6550 5750 6550
Wire Wire Line
	5650 6750 5750 6750
$Comp
L Connector_Generic:Conn_01x02 J20
U 1 1 5C50DC4E
P 3200 6000
F 0 "J20" H 3280 5992 50  0000 L CNN
F 1 "Valve1" H 3280 5901 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 3200 6000 50  0001 C CNN
F 3 "~" H 3200 6000 50  0001 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J21
U 1 1 5C50DD4E
P 3200 6600
F 0 "J21" H 3280 6592 50  0000 L CNN
F 1 "Valve2" H 3280 6501 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 3200 6600 50  0001 C CNN
F 3 "~" H 3200 6600 50  0001 C CNN
	1    3200 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J22
U 1 1 5C50DE23
P 6050 6000
F 0 "J22" H 6130 5992 50  0000 L CNN
F 1 "Valve3" H 6130 5901 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 6050 6000 50  0001 C CNN
F 3 "~" H 6050 6000 50  0001 C CNN
	1    6050 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J23
U 1 1 5C50DEFA
P 6050 6600
F 0 "J23" H 6130 6592 50  0000 L CNN
F 1 "Valve4" H 6130 6501 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 6050 6600 50  0001 C CNN
F 3 "~" H 6050 6600 50  0001 C CNN
	1    6050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5950 2900 6000
Wire Wire Line
	2900 6000 3000 6000
Wire Wire Line
	2900 6100 3000 6100
Wire Wire Line
	2900 6100 2900 6150
Wire Wire Line
	2900 6550 2900 6600
Wire Wire Line
	2900 6600 3000 6600
Wire Wire Line
	2900 6750 2900 6700
Wire Wire Line
	2900 6700 3000 6700
Wire Wire Line
	5750 5950 5750 6000
Wire Wire Line
	5750 6000 5850 6000
Wire Wire Line
	5750 6150 5750 6100
Wire Wire Line
	5750 6100 5850 6100
Wire Wire Line
	5750 6550 5750 6600
Wire Wire Line
	5750 6600 5850 6600
Wire Wire Line
	5750 6750 5750 6700
Wire Wire Line
	5750 6700 5850 6700
$Comp
L Transformer:TSZZ20-006M_1 TR1
U 1 1 5C5BB672
P 5150 14650
F 0 "TR1" H 5150 15050 50  0000 C CNN
F 1 "TSZZ20-006M_1" H 5150 14150 50  0001 C CNN
F 2 "Transformer_THT:Transformer_Breve_TEZ-47x57_1" H 6400 14400 50  0001 C CNN
F 3 "" H 5150 14650 50  0001 C CNN
	1    5150 14650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 14650 5450 14650
Wire Wire Line
	5450 14650 5450 14750
Wire Wire Line
	5450 14750 5350 14750
Text Label 7750 14750 2    50   ~ 0
COM
$Comp
L Device:D D19
U 1 1 5C869574
P 5600 14350
F 0 "D19" H 5600 14250 50  0000 C CNN
F 1 "LL4004" H 5600 14450 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 5600 14350 50  0001 C CNN
F 3 "~" H 5600 14350 50  0001 C CNN
	1    5600 14350
	-1   0    0    1   
$EndComp
$Comp
L Device:D D20
U 1 1 5C8697C0
P 5600 15050
F 0 "D20" H 5600 14950 50  0000 C CNN
F 1 "LL4004" H 5550 15150 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 5600 15050 50  0001 C CNN
F 3 "~" H 5600 15050 50  0001 C CNN
	1    5600 15050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 15050 6150 15050
Wire Wire Line
	6150 15050 6150 14350
Wire Wire Line
	6150 14350 5750 14350
Wire Wire Line
	5350 15050 5450 15050
Wire Wire Line
	5350 14350 5450 14350
$Comp
L Device:CP C14
U 1 1 5C970BDD
P 6350 14550
F 0 "C14" H 6468 14596 50  0000 L CNN
F 1 "CP" H 6468 14505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x7.9" H 6388 14400 50  0001 C CNN
F 3 "~" H 6350 14550 50  0001 C CNN
	1    6350 14550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 14350 6350 14350
Wire Wire Line
	6350 14350 6350 14400
Wire Wire Line
	6350 14750 6350 14700
Wire Wire Line
	5450 14750 5650 14750
Wire Wire Line
	6350 14350 6800 14350
Connection ~ 6350 14350
Wire Wire Line
	6350 14750 6800 14750
Connection ~ 6350 14750
Text Label 7750 14350 2    50   ~ 0
12VDC
$Comp
L Device:CP C15
U 1 1 5CC3B649
P 6800 14550
F 0 "C15" H 6918 14596 50  0000 L CNN
F 1 "CP" H 6918 14505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x7.9" H 6838 14400 50  0001 C CNN
F 3 "~" H 6800 14550 50  0001 C CNN
	1    6800 14550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 14400 6800 14350
Connection ~ 6800 14350
Wire Wire Line
	6800 14350 7750 14350
Wire Wire Line
	6800 14700 6800 14750
Connection ~ 6800 14750
Wire Wire Line
	6800 14750 7750 14750
Wire Wire Line
	3700 14650 3800 14650
Text Label 3800 14750 3    50   ~ 0
PE
Text Label 5700 15350 2    50   ~ 0
ACN
Wire Wire Line
	3800 14950 3800 14650
Connection ~ 3800 14950
$Comp
L Device:Thermistor_PTC TH3
U 1 1 5DB5E080
P 5800 14750
F 0 "TH3" V 5650 14750 50  0000 C CNN
F 1 "1.5A/30V" V 5900 14800 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 5850 14550 50  0001 L CNN
F 3 "~" H 5800 14750 50  0001 C CNN
	1    5800 14750
	0    1    1    0   
$EndComp
Connection ~ 6150 14350
Connection ~ 5450 14750
Wire Wire Line
	5950 14750 6350 14750
Wire Wire Line
	11750 13050 11700 13050
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R1
U 1 1 5C573635
P 12250 12650
F 0 "R1" V 12250 12650 50  0000 C CNN
F 1 "33k" V 12350 12650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12180 12650 50  0001 C CNN
F 3 "~" H 12250 12650 50  0001 C CNN
	1    12250 12650
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R5
U 1 1 5C57363B
P 11900 12650
F 0 "R5" V 11900 12650 50  0000 C CNN
F 1 "33k" V 12000 12650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11830 12650 50  0001 C CNN
F 3 "~" H 11900 12650 50  0001 C CNN
	1    11900 12650
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R2
U 1 1 5C573641
P 12250 13050
F 0 "R2" V 12250 13050 50  0000 C CNN
F 1 "33k" V 12350 13050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12180 13050 50  0001 C CNN
F 3 "~" H 12250 13050 50  0001 C CNN
	1    12250 13050
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R6
U 1 1 5C573647
P 11900 13050
F 0 "R6" V 11900 13050 50  0000 C CNN
F 1 "33k" V 12000 13050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11830 13050 50  0001 C CNN
F 3 "~" H 11900 13050 50  0001 C CNN
	1    11900 13050
	0    -1   1    0   
$EndComp
Wire Wire Line
	12050 12650 12100 12650
Wire Wire Line
	12050 13050 12100 13050
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D1
U 1 1 5C57364F
P 12550 12850
F 0 "D1" V 12504 12929 50  0000 L CNN
F 1 "LL4148" V 12595 12929 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 12550 12675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 12550 12850 50  0001 C CNN
	1    12550 12850
	0    -1   1    0   
$EndComp
Wire Wire Line
	12750 12750 12700 12750
Wire Wire Line
	12700 12750 12700 12650
Wire Wire Line
	12700 12650 12550 12650
Wire Wire Line
	12750 12950 12700 12950
Wire Wire Line
	12700 12950 12700 13050
Wire Wire Line
	12700 13050 12550 13050
Wire Wire Line
	12550 12650 12550 12700
Connection ~ 12550 12650
Wire Wire Line
	12550 13050 12550 13000
Connection ~ 12550 13050
$Comp
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U1
U 1 1 5C57365F
P 13050 12850
F 0 "U1" H 13050 13175 50  0000 C CNN
F 1 "LTV-817" H 13050 13084 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 12850 12650 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 13050 12750 50  0001 L CNN
	1    13050 12850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 12950 13450 12950
Wire Wire Line
	13350 12750 13450 12750
Text HLabel 13450 12750 2    50   Input ~ 0
LIGHTWC
Text HLabel 13450 12950 2    50   Input ~ 0
COM
Wire Wire Line
	11750 12650 11700 12650
Wire Wire Line
	12550 12650 12400 12650
Wire Wire Line
	12550 13050 12400 13050
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R3
U 1 1 5C5CAA25
P 12250 13350
F 0 "R3" V 12250 13350 50  0000 C CNN
F 1 "33k" V 12350 13350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12180 13350 50  0001 C CNN
F 3 "~" H 12250 13350 50  0001 C CNN
	1    12250 13350
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R7
U 1 1 5C5CAA2B
P 11900 13350
F 0 "R7" V 11900 13350 50  0000 C CNN
F 1 "33k" V 12000 13350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11830 13350 50  0001 C CNN
F 3 "~" H 11900 13350 50  0001 C CNN
	1    11900 13350
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R4
U 1 1 5C5CAA31
P 12250 13750
F 0 "R4" V 12250 13750 50  0000 C CNN
F 1 "33k" V 12350 13750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12180 13750 50  0001 C CNN
F 3 "~" H 12250 13750 50  0001 C CNN
	1    12250 13750
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R38
U 1 1 5C5CAA37
P 11900 13750
F 0 "R38" V 11900 13750 50  0000 C CNN
F 1 "33k" V 12000 13750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11830 13750 50  0001 C CNN
F 3 "~" H 11900 13750 50  0001 C CNN
	1    11900 13750
	0    -1   1    0   
$EndComp
Wire Wire Line
	12050 13350 12100 13350
Wire Wire Line
	12050 13750 12100 13750
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D2
U 1 1 5C5CAA3F
P 12550 13550
F 0 "D2" V 12504 13629 50  0000 L CNN
F 1 "LL4148" V 12595 13629 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 12550 13375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 12550 13550 50  0001 C CNN
	1    12550 13550
	0    -1   1    0   
$EndComp
Wire Wire Line
	12750 13450 12700 13450
Wire Wire Line
	12700 13450 12700 13350
Wire Wire Line
	12700 13350 12550 13350
Wire Wire Line
	12750 13650 12700 13650
Wire Wire Line
	12700 13650 12700 13750
Wire Wire Line
	12700 13750 12550 13750
Wire Wire Line
	12550 13350 12550 13400
Connection ~ 12550 13350
Wire Wire Line
	12550 13750 12550 13700
Connection ~ 12550 13750
$Comp
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U2
U 1 1 5C5CAA4F
P 13050 13550
F 0 "U2" H 13050 13875 50  0000 C CNN
F 1 "LTV-817" H 13050 13784 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 12850 13350 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 13050 13450 50  0001 L CNN
	1    13050 13550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 13650 13450 13650
Wire Wire Line
	13350 13450 13450 13450
Text HLabel 13450 13450 2    50   Input ~ 0
LIGHTBASH
Text HLabel 13450 13650 2    50   Input ~ 0
COM
Wire Wire Line
	12550 13350 12400 13350
Wire Wire Line
	12550 13750 12400 13750
Wire Wire Line
	11750 13350 11700 13350
Wire Wire Line
	11750 13750 11700 13750
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J2
U 1 1 5CE08B49
P 11050 12950
F 0 "J2" V 11050 13350 50  0000 R CNN
F 1 "AC Inputs" V 11150 13550 50  0000 R CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 11050 12950 50  0001 C CNN
F 3 "~" H 11050 12950 50  0001 C CNN
	1    11050 12950
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R39
U 1 1 5D3BAE21
P 11550 12650
F 0 "R39" V 11550 12650 50  0000 C CNN
F 1 "33k" V 11650 12650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11480 12650 50  0001 C CNN
F 3 "~" H 11550 12650 50  0001 C CNN
	1    11550 12650
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R40
U 1 1 5D3BAEFD
P 11550 13050
F 0 "R40" V 11550 13050 50  0000 C CNN
F 1 "33k" V 11650 13050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11480 13050 50  0001 C CNN
F 3 "~" H 11550 13050 50  0001 C CNN
	1    11550 13050
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R41
U 1 1 5D3BAFE9
P 11550 13350
F 0 "R41" V 11550 13350 50  0000 C CNN
F 1 "33k" V 11650 13350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11480 13350 50  0001 C CNN
F 3 "~" H 11550 13350 50  0001 C CNN
	1    11550 13350
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R42
U 1 1 5D3BB0CD
P 11550 13750
F 0 "R42" V 11550 13750 50  0000 C CNN
F 1 "33k" V 11650 13750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 11480 13750 50  0001 C CNN
F 3 "~" H 11550 13750 50  0001 C CNN
	1    11550 13750
	0    -1   1    0   
$EndComp
Wire Wire Line
	3700 14450 4200 14450
Wire Wire Line
	3700 14550 4050 14550
Wire Wire Line
	4700 16200 4700 17850
Connection ~ 4700 17850
Wire Wire Line
	4700 17850 4850 17850
$Comp
L Device:Thermistor_PTC TH4
U 1 1 5DF71A69
P 4450 14850
F 0 "TH4" V 4300 14850 50  0000 C CNN
F 1 "0.5A/230V" V 4550 14900 50  0000 C CNN
F 2 "Varistor:RV_Disc_D7mm_W3.4mm_P5mm" H 4500 14650 50  0001 L CNN
F 3 "~" H 4450 14850 50  0001 C CNN
	1    4450 14850
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 15350 5700 15350
Connection ~ 4200 15350
Wire Wire Line
	4200 15350 4200 16950
Wire Wire Line
	4700 15700 4850 15700
Wire Wire Line
	4050 15700 4050 17350
Connection ~ 4050 15700
Wire Wire Line
	4050 17350 4850 17350
Wire Wire Line
	4050 14550 4050 14850
Wire Wire Line
	4600 14850 4750 14850
Wire Wire Line
	4200 14450 4200 15350
Wire Wire Line
	4200 14450 4600 14450
Connection ~ 4200 14450
Wire Wire Line
	4300 14850 4050 14850
Connection ~ 4050 14850
Wire Wire Line
	4050 14850 4050 15700
Wire Wire Line
	4750 13550 4750 14850
Connection ~ 4750 13550
Connection ~ 4750 14850
Wire Wire Line
	4750 14850 4950 14850
Wire Wire Line
	4600 13150 4600 14450
Connection ~ 4600 13150
Connection ~ 4600 14450
Wire Wire Line
	4600 14450 4950 14450
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R43
U 1 1 5EAE7DC7
P 5100 12300
F 0 "R43" V 5100 12300 50  0000 C CNN
F 1 "33k" V 5200 12300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 12300 50  0001 C CNN
F 3 "~" H 5100 12300 50  0001 C CNN
	1    5100 12300
	0    -1   1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R44
U 1 1 5EAE7EB1
P 5100 12800
F 0 "R44" V 5100 12800 50  0000 C CNN
F 1 "33k" V 5200 12800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 12800 50  0001 C CNN
F 3 "~" H 5100 12800 50  0001 C CNN
	1    5100 12800
	0    -1   1    0   
$EndComp
Wire Wire Line
	4950 12800 4750 12800
Wire Wire Line
	4600 12300 4950 12300
Text Label 3900 14450 2    50   ~ 0
ACN
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5EF129D9
P 5900 17200
F 0 "J10" H 5980 17192 50  0000 L CNN
F 1 "iSOCKET" H 5980 17101 50  0000 L CNN
F 2 "" H 5900 17200 50  0001 C CNN
F 3 "~" H 5900 17200 50  0001 C CNN
	1    5900 17200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 17050 5600 17200
Wire Wire Line
	5600 17200 5700 17200
Wire Wire Line
	5700 17300 5600 17300
Wire Wire Line
	5600 17300 5600 17450
Wire Wire Line
	11150 12750 11150 12650
Wire Wire Line
	10850 13750 11400 13750
Wire Wire Line
	11400 13050 11300 13050
Wire Wire Line
	11300 13050 11300 13350
Wire Wire Line
	11300 13350 11400 13350
Wire Wire Line
	11150 12650 11400 12650
Wire Wire Line
	10850 12650 11050 12650
Wire Wire Line
	11050 12650 11050 12750
Wire Wire Line
	10850 12650 10850 13750
Wire Wire Line
	11050 13250 11050 13350
Wire Wire Line
	11050 13350 11150 13350
Wire Wire Line
	11150 13350 11150 13250
Wire Wire Line
	11150 13350 11300 13350
Connection ~ 11150 13350
Connection ~ 11300 13350
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 6008F10D
P 3500 14200
F 0 "J11" H 3420 13875 50  0000 C CNN
F 1 "To AC/DC" H 3420 13966 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G_1x02_P5.00mm_Vertical" H 3500 14200 50  0001 C CNN
F 3 "~" H 3500 14200 50  0001 C CNN
	1    3500 14200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 14200 4050 14200
Wire Wire Line
	4050 14200 4050 14550
Connection ~ 4050 14550
Wire Wire Line
	3700 14100 4200 14100
Wire Wire Line
	4200 14100 4200 14450
$EndSCHEMATC

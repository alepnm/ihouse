EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 4
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
L ihouse-rescue:Transistor_Array_ULN2003A-ihouse-rescue U2
U 1 1 5BC77E03
P 13450 2150
F 0 "U2" H 13450 2817 50  0000 C CNN
F 1 "ULN2003A" H 13450 2726 50  0000 C CNN
F 2 "" H 13500 1600 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 13550 1950 50  0001 C CNN
	1    13450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 1950 14200 1950
Wire Wire Line
	13850 2050 14200 2050
Text Label 14200 1950 2    50   ~ 0
K0
Text Label 14200 2050 2    50   ~ 0
K1
Wire Wire Line
	13450 2750 13450 2850
Wire Wire Line
	13450 2850 13350 2850
Text HLabel 13350 2850 0    50   UnSpc ~ 0
COM
Wire Wire Line
	13050 1950 12650 1950
Wire Wire Line
	13050 2050 12650 2050
Text HLabel 12650 1950 0    50   Input ~ 0
INK0
Text HLabel 12650 2050 0    50   Input ~ 0
INK1
Wire Wire Line
	13850 1750 14200 1750
Text Label 14200 1750 2    50   ~ 0
12VDC
Wire Wire Line
	13850 2550 14200 2550
Text Label 14200 2450 2    50   ~ 0
OC1
$Comp
L ihouse-rescue:Isolator_LTV-817-ihouse-rescue U1
U 1 1 5BC77E06
P 2650 8900
F 0 "U1" H 2650 9225 50  0000 C CNN
F 1 "LTV-817" H 2650 9134 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2450 8700 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 2650 8800 50  0001 L CNN
	1    2650 8900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 9000 1800 9000
Text Label 1800 9000 0    50   ~ 0
COM
$Comp
L ihouse-rescue:Diode_LL4148-ihouse-rescue D1
U 1 1 5BC77E07
P 3250 8900
F 0 "D1" V 3204 8979 50  0000 L CNN
F 1 "LL4148" V 3295 8979 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 3250 8725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 3250 8900 50  0001 C CNN
	1    3250 8900
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 8800 3050 8800
Wire Wire Line
	3050 8800 3050 8650
Wire Wire Line
	3050 8650 3250 8650
Wire Wire Line
	3250 8650 3250 8750
Wire Wire Line
	2950 9000 3050 9000
Wire Wire Line
	3050 9000 3050 9150
Wire Wire Line
	3050 9150 3250 9150
Wire Wire Line
	3250 9150 3250 9050
Wire Wire Line
	3250 8650 3500 8650
Connection ~ 3250 8650
Wire Wire Line
	3250 9150 3500 9150
Connection ~ 3250 9150
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R5
U 1 1 5BC77E08
P 3650 8650
F 0 "R5" V 3550 8550 50  0000 C CNN
F 1 "33k" V 3550 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3580 8650 50  0001 C CNN
F 3 "~" H 3650 8650 50  0001 C CNN
	1    3650 8650
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R6
U 1 1 5BC8FFB1
P 3650 9150
F 0 "R6" V 3550 9050 50  0000 C CNN
F 1 "33k" V 3550 9250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3580 9150 50  0001 C CNN
F 3 "~" H 3650 9150 50  0001 C CNN
	1    3650 9150
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R7
U 1 1 5BC77E0A
P 4050 8650
F 0 "R7" V 3950 8550 50  0000 C CNN
F 1 "33k" V 3950 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3980 8650 50  0001 C CNN
F 3 "~" H 4050 8650 50  0001 C CNN
	1    4050 8650
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R8
U 1 1 5BC90060
P 4050 9150
F 0 "R8" V 3950 9050 50  0000 C CNN
F 1 "33k" V 3950 9250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3980 9150 50  0001 C CNN
F 3 "~" H 4050 9150 50  0001 C CNN
	1    4050 9150
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 8650 3900 8650
Wire Wire Line
	3800 9150 3900 9150
Wire Wire Line
	1800 8800 2350 8800
Text Label 1800 8800 0    50   ~ 0
LPULSE
Wire Wire Line
	3500 9500 3400 9500
Wire Wire Line
	3100 9500 3000 9500
Wire Wire Line
	3000 9500 3000 9550
Wire Wire Line
	3500 9900 3000 9900
Wire Wire Line
	3000 9900 3000 9850
Wire Wire Line
	3000 9900 2500 9900
Wire Wire Line
	2500 9900 2500 9950
Connection ~ 3000 9900
Wire Wire Line
	2400 9900 2500 9900
Connection ~ 2500 9900
Wire Wire Line
	3000 9500 1800 9500
Connection ~ 3000 9500
Wire Wire Line
	2100 9900 1800 9900
Text Label 1800 9500 0    50   ~ 0
AIN
Text Label 1800 9900 0    50   ~ 0
VREF
$Comp
L ihouse-rescue:capacitors_CP_100uFx16V-ihouse-rescue C1
U 1 1 5BC1DECF
P 3000 10100
F 0 "C1" H 2700 10150 50  0000 L CNN
F 1 "100uFx16V" H 2450 10050 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.7" H 3850 10350 50  0001 C CNN
F 3 "" H 3025 10200 50  0001 C CNN
F 4 "-" H 3050 9850 60  0001 C CNN "ventcode"
F 5 "0.06" H 3750 10150 60  0001 C CNN "Kaina"
F 6 "Kondensatorius elektrolitinis" H 3850 10450 60  0001 C CNN "Pavadinimas"
F 7 "100uFx16V" H 3118 10054 60  0001 L CNN "Nominalas"
F 8 "DIP" H 3950 10250 60  0001 C CNN "Korpuso tipas"
	1    3000 10100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 9950 3000 9900
Wire Wire Line
	4300 9500 4500 9500
Wire Wire Line
	4300 9900 4350 9900
Text Label 5150 9500 2    50   ~ 0
230L
Text Label 5150 9900 2    50   ~ 0
230N
$Comp
L ihouse-rescue:disc_Transformer_TEZ_22x24_6V-ihouse-rescue T1
U 1 1 5BCA7928
P 3900 9700
F 0 "T1" H 3900 9987 50  0000 C CNN
F 1 "Transformer_TEZ_22x24_6V" H 3900 9987 50  0001 C CNN
F 2 "Transformer_THT:Transformer_Breve_TEZ-22x24" H 5300 9800 50  0001 C CNN
F 3 "" H 3900 9950 50  0001 C CNN
	1    3900 9700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4350 9150 4350 9900
Wire Wire Line
	4200 9150 4350 9150
Connection ~ 4350 9900
Wire Wire Line
	4350 9900 5150 9900
Wire Wire Line
	4500 8650 4500 9500
Wire Wire Line
	4200 8650 4500 8650
Connection ~ 4500 9500
Wire Wire Line
	4500 9500 4600 9500
$Comp
L ihouse-rescue:Device_Thermistor_PTC-ihouse-rescue TH1
U 1 1 5BC77E0F
P 4750 9500
F 0 "TH1" V 4600 9450 50  0000 C CNN
F 1 "230V/150mA" V 4900 9500 50  0000 C CNN
F 2 "" H 4800 9300 50  0001 L CNN
F 3 "~" H 4750 9500 50  0001 C CNN
	1    4750 9500
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 9500 5150 9500
Wire Wire Line
	13850 2450 14200 2450
Text Label 14200 2550 2    50   ~ 0
OC2
Wire Wire Line
	13050 2450 12650 2450
Wire Wire Line
	13050 2550 12650 2550
Text HLabel 12650 2450 0    50   Input ~ 0
INOC1
Text HLabel 12650 2550 0    50   Input ~ 0
INOC2
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R4
U 1 1 5BC77E14
P 3250 9500
F 0 "R4" V 3150 9400 50  0000 C CNN
F 1 "1k" V 3150 9600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3180 9500 50  0001 C CNN
F 3 "~" H 3250 9500 50  0001 C CNN
	1    3250 9500
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R3
U 1 1 5BC77E15
P 3000 9700
F 0 "R3" H 3150 9750 50  0000 C CNN
F 1 "120" H 3150 9650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 9700 50  0001 C CNN
F 3 "~" H 3000 9700 50  0001 C CNN
	1    3000 9700
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R2
U 1 1 5BC77E16
P 2500 10100
F 0 "R2" H 2650 10150 50  0000 C CNN
F 1 "Rx" H 2650 10050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2430 10100 50  0001 C CNN
F 3 "~" H 2500 10100 50  0001 C CNN
	1    2500 10100
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R1
U 1 1 5BC77E17
P 2250 9900
F 0 "R1" V 2350 10000 50  0000 C CNN
F 1 "Rx" V 2350 9850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 9900 50  0001 C CNN
F 3 "~" H 2250 9900 50  0001 C CNN
	1    2250 9900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 10350 3000 10350
Wire Wire Line
	2500 10250 2500 10350
Wire Wire Line
	3000 10250 3000 10350
Wire Wire Line
	2500 10350 2150 10350
Connection ~ 2500 10350
Text Label 2150 10350 0    50   ~ 0
COM
Wire Wire Line
	13850 2150 14200 2150
Text Label 14200 2150 2    50   ~ 0
K2
Wire Wire Line
	13050 2150 12650 2150
Text HLabel 12650 2150 0    50   Input ~ 0
INK2
Wire Wire Line
	13850 2250 14200 2250
Text Label 14200 2250 2    50   ~ 0
K3
Wire Wire Line
	13050 2250 12650 2250
Text HLabel 12650 2250 0    50   Input ~ 0
INK3
$EndSCHEMATC

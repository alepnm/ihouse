EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L ihouse-rescue:dk_Interface-I-O-Expanders_MCP23017-E_SP-ihouse-rescue U?
U 1 1 5C5DACB7
P 2600 1900
AR Path="/5C5DACB7" Ref="U?"  Part="1" 
AR Path="/5F287616/5C5DACB7" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5C5DACB7" Ref="U14"  Part="1" 
F 0 "U14" H 2900 2700 60  0000 C CNN
F 1 "MCP23017" H 2350 2700 60  0000 C CNN
F 2 "digikey-footprints:DIP-28_W7.62mm" H 2800 2100 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 2800 2200 60  0001 L CNN
F 4 "MCP23017-E/SP-ND" H 2800 2300 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP23017-E/SP" H 2800 2400 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2800 2500 60  0001 L CNN "Category"
F 7 "Interface - I/O Expanders" H 2800 2600 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 2800 2700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP23017-E-SP/MCP23017-E-SP-ND/894272" H 2800 2800 60  0001 L CNN "DK_Detail_Page"
F 10 "IC I/O EXPANDER I2C 16B 28SDIP" H 2800 2900 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 2800 3000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2800 3100 60  0001 L CNN "Status"
	1    2600 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 1300 3200 1300
Wire Wire Line
	2900 1400 3200 1400
Wire Wire Line
	2900 1500 3200 1500
Wire Wire Line
	2900 1600 3200 1600
Wire Wire Line
	2900 1700 3200 1700
Wire Wire Line
	2900 1800 3200 1800
Wire Wire Line
	2900 1900 3200 1900
Wire Wire Line
	2900 2000 3200 2000
Wire Wire Line
	2500 3500 2500 3600
Wire Wire Line
	2500 3600 3000 3600
Text Label 2800 3600 2    50   ~ 0
COM
Wire Wire Line
	2500 950  2500 1100
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5F2E1E1D
P 1250 1200
AR Path="/5F2E1E1D" Ref="C?"  Part="1" 
AR Path="/5F287616/5F2E1E1D" Ref="C?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E1D" Ref="C2"  Part="1" 
F 0 "C2" H 1000 1250 50  0000 L CNN
F 1 "0.1" H 1000 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1288 1050 50  0001 C CNN
F 3 "~" H 1250 1200 50  0001 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACB9
P 2000 1200
AR Path="/5C5DACB9" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACB9" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACB9" Ref="R34"  Part="1" 
F 0 "R34" V 2000 1150 50  0000 L CNN
F 1 "R" H 2100 1250 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 1930 1200 50  0001 C CNN
F 3 "~" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C5DACBA
P 1500 1500
AR Path="/5C5DACBA" Ref="C?"  Part="1" 
AR Path="/5F287616/5C5DACBA" Ref="C?"  Part="1" 
AR Path="/5C5DACB2/5C5DACBA" Ref="C3"  Part="1" 
F 0 "C3" V 1650 1350 50  0000 L CNN
F 1 "0.1" V 1650 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1538 1350 50  0001 C CNN
F 3 "~" H 1500 1500 50  0001 C CNN
	1    1500 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1500 1750 1500
Wire Wire Line
	1750 1500 2000 1500
Wire Wire Line
	2000 1500 2100 1500
Connection ~ 1750 1500
Wire Wire Line
	1150 1500 1250 1500
Wire Wire Line
	1250 1500 1350 1500
Wire Wire Line
	1250 1500 1250 1350
Wire Wire Line
	1250 1050 1250 950 
Wire Wire Line
	1250 950  1750 950 
Wire Wire Line
	1750 950  2000 950 
Wire Wire Line
	2000 950  2500 950 
Entry Wire Line
	3200 1300 3300 1400
Entry Wire Line
	3200 1400 3300 1500
Entry Wire Line
	3200 1500 3300 1600
Entry Wire Line
	3200 1600 3300 1700
Entry Wire Line
	3200 1700 3300 1800
Entry Wire Line
	3200 1800 3300 1900
Entry Wire Line
	3200 1900 3300 2000
Entry Wire Line
	3200 2000 3300 2100
Entry Wire Line
	3500 2350 3600 2450
Entry Wire Line
	3500 2150 3600 2250
Entry Wire Line
	3500 1950 3600 2050
Entry Wire Line
	3500 1750 3600 1850
Wire Wire Line
	2900 3100 3000 3100
Wire Wire Line
	3000 3100 3000 3200
Wire Wire Line
	3000 3200 3000 3300
Wire Wire Line
	3000 3300 3000 3600
Wire Wire Line
	3000 3200 2900 3200
Connection ~ 3000 3200
Wire Wire Line
	3000 3300 2900 3300
Connection ~ 3000 3300
Wire Wire Line
	2900 3000 3100 3000
Wire Wire Line
	2900 2900 3200 2900
Wire Wire Line
	1750 1350 1750 1500
Wire Wire Line
	1750 1500 1750 1800
Wire Wire Line
	1750 1800 1150 1800
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5F2E1E5C
P 1750 1200
AR Path="/5F2E1E5C" Ref="D?"  Part="1" 
AR Path="/5F287616/5F2E1E5C" Ref="D?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E5C" Ref="D13"  Part="1" 
F 0 "D13" V 1650 1000 50  0000 L CNN
F 1 "D" V 1750 1000 50  0000 L CNN
F 2 "Diodes_SMD:D_MiniMELF" H 1750 1200 50  0001 C CNN
F 3 "~" H 1750 1200 50  0001 C CNN
	1    1750 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 950  1750 1050
Connection ~ 1750 950 
Wire Wire Line
	2000 1500 2000 1350
Connection ~ 2000 1500
Wire Wire Line
	2000 950  2000 1050
Connection ~ 2000 950 
Wire Wire Line
	9200 1650 8950 1650
Wire Wire Line
	9700 1650 9950 1650
Wire Wire Line
	9200 1750 8950 1750
Wire Wire Line
	9700 1750 9950 1750
Wire Wire Line
	9200 1850 8950 1850
Wire Wire Line
	9700 1850 9950 1850
Wire Wire Line
	9200 1950 8950 1950
Wire Wire Line
	9700 1950 9950 1950
Text Label 8950 1650 0    50   ~ 0
V1A1
Text Label 8950 1750 0    50   ~ 0
V2A1
Text Label 8950 1850 0    50   ~ 0
V3A1
Text Label 8950 1950 0    50   ~ 0
V4A1
Text Label 9950 1650 2    50   ~ 0
V1A2
Text Label 9950 1750 2    50   ~ 0
V2A2
Text Label 9950 1850 2    50   ~ 0
V3A2
Text Label 9950 1950 2    50   ~ 0
V4A2
Wire Bus Line
	3300 800  3500 800 
Entry Wire Line
	3200 2100 3300 2200
Entry Wire Line
	3200 2200 3300 2300
Entry Wire Line
	3200 2300 3300 2400
Entry Wire Line
	3200 2400 3300 2500
Wire Wire Line
	2900 2100 3200 2100
Wire Wire Line
	2900 2200 3200 2200
Wire Wire Line
	2900 2400 3200 2400
Entry Wire Line
	3200 2500 3300 2600
Entry Wire Line
	3200 2600 3300 2700
Entry Wire Line
	3200 2700 3300 2800
Entry Wire Line
	3200 2800 3300 2900
Wire Wire Line
	3200 2500 2900 2500
Wire Wire Line
	2900 2600 3200 2600
Wire Wire Line
	2900 2700 3200 2700
Wire Wire Line
	2900 2800 3200 2800
$Comp
L ihouse-rescue:Connector_Generic_Conn_02x05_Counter_Clockwise-ihouse-rescue J?
U 1 1 5F2E1E89
P 9400 1850
AR Path="/5F2E1E89" Ref="J?"  Part="1" 
AR Path="/5F287616/5F2E1E89" Ref="J?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E89" Ref="J13"  Part="1" 
F 0 "J13" H 9450 2267 50  0000 C CNN
F 1 "Valves" H 9450 2176 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-10A_2x05x4.20mm_Straight" H 9400 1850 50  0001 C CNN
F 3 "~" H 9400 1850 50  0001 C CNN
	1    9400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3400 1950 3950
Wire Wire Line
	1950 3950 3200 3950
Wire Wire Line
	3200 3950 3200 2900
Wire Wire Line
	2050 3300 2050 3800
Wire Wire Line
	2050 3800 3100 3800
Wire Wire Line
	3100 3800 3100 3000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E96
P 1600 3050
AR Path="/5F2E1E96" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E96" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E96" Ref="R35"  Part="1" 
F 0 "R35" V 1600 3000 50  0000 L CNN
F 1 "R" V 1500 3050 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 1530 3050 50  0001 C CNN
F 3 "~" H 1600 3050 50  0001 C CNN
	1    1600 3050
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E9D
P 1750 3050
AR Path="/5F2E1E9D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E9D" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E9D" Ref="R36"  Part="1" 
F 0 "R36" V 1750 3000 50  0000 L CNN
F 1 "R" V 1650 3050 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 1680 3050 50  0001 C CNN
F 3 "~" H 1750 3050 50  0001 C CNN
	1    1750 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 3200 1600 3300
Wire Wire Line
	1750 3200 1750 3400
Wire Wire Line
	1600 2900 1600 2800
Wire Wire Line
	1600 2800 1750 2800
Wire Wire Line
	1750 2800 2000 2800
Wire Wire Line
	1750 2800 1750 2900
Connection ~ 1750 2800
Text Label 2000 2800 2    50   ~ 0
5VDC
$Comp
L ihouse-rescue:L293-Driver_Motor U?
U 1 1 5F2E1EAC
P 4550 2050
AR Path="/5F2E1EAC" Ref="U?"  Part="1" 
AR Path="/5C3058F0/5F2E1EAC" Ref="U?"  Part="1" 
AR Path="/5F287616/5F2E1EAC" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5F2E1EAC" Ref="U15"  Part="1" 
F 0 "U15" H 4250 3150 50  0000 C CNN
F 1 "L293D" H 4250 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4800 1300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4250 2750 50  0001 C CNN
	1    4550 2050
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:L293-Driver_Motor U?
U 1 1 5C5DACC0
P 7400 2050
AR Path="/5C5DACC0" Ref="U?"  Part="1" 
AR Path="/5C3058F0/5C5DACC0" Ref="U?"  Part="1" 
AR Path="/5F287616/5C5DACC0" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5C5DACC0" Ref="U16"  Part="1" 
F 0 "U16" H 7100 3150 50  0000 C CNN
F 1 "L293D" H 7100 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7650 1300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 7100 2750 50  0001 C CNN
	1    7400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1450 3950 1450
Wire Wire Line
	3950 1450 3950 2050
Wire Wire Line
	3950 2050 4050 2050
Wire Wire Line
	4050 2250 3850 2250
Wire Wire Line
	3850 2250 3850 1650
Wire Wire Line
	3850 1650 4050 1650
Wire Wire Line
	6900 1450 6800 1450
Wire Wire Line
	6800 1450 6800 2050
Wire Wire Line
	6800 2050 6900 2050
Wire Wire Line
	6900 2250 6700 2250
Wire Wire Line
	6700 2250 6700 1650
Wire Wire Line
	6700 1650 6900 1650
Wire Wire Line
	3950 2050 3600 2050
Connection ~ 3950 2050
Wire Wire Line
	3850 2250 3600 2250
Connection ~ 3850 2250
Wire Wire Line
	4050 1850 3600 1850
Wire Wire Line
	4050 2450 3600 2450
Wire Wire Line
	6900 2450 6450 2450
Wire Wire Line
	6900 1850 6450 1850
Wire Wire Line
	4350 2850 4350 2950
Wire Wire Line
	4350 2950 4450 2950
Wire Wire Line
	4750 2950 4750 2850
Wire Wire Line
	4650 2850 4650 2950
Connection ~ 4650 2950
Wire Wire Line
	4650 2950 4750 2950
Wire Wire Line
	4450 2850 4450 2950
Connection ~ 4450 2950
Wire Wire Line
	4450 2950 4650 2950
Wire Wire Line
	7200 2850 7200 2950
Wire Wire Line
	7200 2950 7300 2950
Wire Wire Line
	7600 2950 7600 2850
Wire Wire Line
	7300 2850 7300 2950
Connection ~ 7300 2950
Wire Wire Line
	7300 2950 7500 2950
Wire Wire Line
	7500 2850 7500 2950
Connection ~ 7500 2950
Wire Wire Line
	7500 2950 7600 2950
Wire Wire Line
	6700 2250 6450 2250
Connection ~ 6700 2250
Wire Wire Line
	6800 2050 6450 2050
Connection ~ 6800 2050
Text Label 3600 2050 0    50   ~ 0
DIRA
Text Label 3600 2250 0    50   ~ 0
DIRB
Text Label 6450 2050 0    50   ~ 0
DIRA
Text Label 6450 2250 0    50   ~ 0
DIRB
Text Label 3600 1850 0    50   ~ 0
VL1
Text Label 3600 2450 0    50   ~ 0
VL2
Text Label 6450 1850 0    50   ~ 0
VL3
Text Label 6450 2450 0    50   ~ 0
VL4
Text Label 3200 1300 2    50   ~ 0
VL1
Text Label 3200 1400 2    50   ~ 0
VL2
Text Label 3200 1500 2    50   ~ 0
VL3
Text Label 3200 1600 2    50   ~ 0
VL4
Text Label 3200 1700 2    50   ~ 0
DIRA
Text Label 3200 1800 2    50   ~ 0
DIRB
Text Label 5050 2950 2    50   ~ 0
COM
Text Label 7900 2950 2    50   ~ 0
COM
Text Label 5050 950  2    50   ~ 0
12VDC
Connection ~ 4750 2950
Text Label 7900 950  2    50   ~ 0
12VDC
Connection ~ 7600 2950
Text Label 5400 1450 2    50   ~ 0
V1A1
Text Label 5400 1650 2    50   ~ 0
V1A2
Text Label 5400 2050 2    50   ~ 0
V2A1
Text Label 5400 2250 2    50   ~ 0
V2A2
Text Label 8250 1450 2    50   ~ 0
V3A1
Text Label 8250 1650 2    50   ~ 0
V3A2
Text Label 8250 2050 2    50   ~ 0
V4A1
Text Label 8250 2250 2    50   ~ 0
V4A2
Entry Wire Line
	6350 1750 6450 1850
Entry Wire Line
	6350 1950 6450 2050
Entry Wire Line
	6350 2150 6450 2250
Entry Wire Line
	6350 2350 6450 2450
Wire Wire Line
	5050 2950 4750 2950
Wire Wire Line
	7900 2950 7600 2950
Wire Wire Line
	4650 1050 4650 950 
Wire Wire Line
	4650 950  5050 950 
Wire Wire Line
	7500 1050 7500 950 
Wire Wire Line
	7500 950  7900 950 
Wire Wire Line
	4450 1050 4450 800 
Wire Wire Line
	7300 1050 7300 800 
Text Label 7300 800  3    50   ~ 0
5VDC
Text Label 4450 800  3    50   ~ 0
5VDC
Wire Wire Line
	2900 2300 3200 2300
Text Label 3200 1900 2    50   ~ 0
EO0
Text Label 3200 2000 2    50   ~ 0
EO1
Text Label 3200 2100 2    50   ~ 0
EO2
Text Label 3200 2200 2    50   ~ 0
EO3
Text Label 3200 2300 2    50   ~ 0
EO4
Text Label 3200 2400 2    50   ~ 0
EO5
Text Label 3200 2500 2    50   ~ 0
EO6
Text Label 3200 2600 2    50   ~ 0
EO7
Text Label 3200 2700 2    50   ~ 0
EO8
Text Label 3200 2800 2    50   ~ 0
EO9
Connection ~ 1600 3300
Wire Wire Line
	1600 3300 2050 3300
Connection ~ 1750 3400
Wire Wire Line
	1750 3400 1950 3400
Wire Wire Line
	1150 3400 1750 3400
Wire Wire Line
	1150 3300 1600 3300
Connection ~ 1250 1500
Entry Wire Line
	3650 3100 3750 3200
Entry Wire Line
	3750 3100 3850 3200
Entry Wire Line
	3850 3100 3950 3200
Entry Wire Line
	3950 3100 4050 3200
Entry Wire Line
	4050 3100 4150 3200
Entry Wire Line
	4150 3100 4250 3200
Entry Wire Line
	4250 3100 4350 3200
Entry Wire Line
	4350 3100 4450 3200
Entry Wire Line
	4450 3100 4550 3200
Entry Wire Line
	4550 3100 4650 3200
Wire Wire Line
	3750 3200 3750 3400
Wire Wire Line
	3850 3200 3850 3400
Wire Wire Line
	3950 3200 3950 3400
Wire Wire Line
	4050 3200 4050 3400
Wire Wire Line
	4150 3200 4150 3400
Wire Wire Line
	4250 3200 4250 3400
Wire Wire Line
	4350 3200 4350 3400
Wire Wire Line
	4450 3200 4450 3400
Wire Wire Line
	4550 3200 4550 3400
Wire Wire Line
	4650 3200 4650 3400
Text HLabel 3750 3800 3    50   Output ~ 0
EO0
Text HLabel 3850 3800 3    50   Output ~ 0
EO1
Text HLabel 3950 3800 3    50   Output ~ 0
EO2
Text HLabel 4050 3800 3    50   Output ~ 0
EO3
Text HLabel 4150 3800 3    50   Output ~ 0
EO4
Text HLabel 4250 3800 3    50   Output ~ 0
EO5
Text HLabel 4350 3800 3    50   Output ~ 0
EO6
Text HLabel 4450 3800 3    50   Output ~ 0
EO7
Text HLabel 4550 3800 3    50   Output ~ 0
EO8
Text HLabel 4650 3800 3    50   Output ~ 0
EO9
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2005
P 3750 3550
AR Path="/5F2E2005" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2005" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E2005" Ref="R37"  Part="1" 
F 0 "R37" V 3750 3500 50  0000 L CNN
F 1 "R" V 3650 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 3680 3550 50  0001 C CNN
F 3 "~" H 3750 3550 50  0001 C CNN
	1    3750 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3700 3750 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E200D
P 3850 3550
AR Path="/5F2E200D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E200D" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E200D" Ref="R38"  Part="1" 
F 0 "R38" V 3850 3500 50  0000 L CNN
F 1 "R" V 3750 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 3780 3550 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 3700 3850 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2015
P 3950 3550
AR Path="/5F2E2015" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2015" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E2015" Ref="R39"  Part="1" 
F 0 "R39" V 3950 3500 50  0000 L CNN
F 1 "R" V 3850 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 3880 3550 50  0001 C CNN
F 3 "~" H 3950 3550 50  0001 C CNN
	1    3950 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 3700 3950 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACC4
P 4050 3550
AR Path="/5C5DACC4" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACC4" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACC4" Ref="R40"  Part="1" 
F 0 "R40" V 4050 3500 50  0000 L CNN
F 1 "R" V 3950 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 3980 3550 50  0001 C CNN
F 3 "~" H 4050 3550 50  0001 C CNN
	1    4050 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 3700 4050 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACC5
P 4150 3550
AR Path="/5C5DACC5" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACC5" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACC5" Ref="R41"  Part="1" 
F 0 "R41" V 4150 3500 50  0000 L CNN
F 1 "R" V 4050 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4080 3550 50  0001 C CNN
F 3 "~" H 4150 3550 50  0001 C CNN
	1    4150 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 3700 4150 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E202D
P 4250 3550
AR Path="/5F2E202D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E202D" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E202D" Ref="R42"  Part="1" 
F 0 "R42" V 4250 3500 50  0000 L CNN
F 1 "R" V 4150 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4180 3550 50  0001 C CNN
F 3 "~" H 4250 3550 50  0001 C CNN
	1    4250 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 3700 4250 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACC7
P 4350 3550
AR Path="/5C5DACC7" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACC7" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACC7" Ref="R43"  Part="1" 
F 0 "R43" V 4350 3500 50  0000 L CNN
F 1 "R" V 4250 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4280 3550 50  0001 C CNN
F 3 "~" H 4350 3550 50  0001 C CNN
	1    4350 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 3700 4350 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACC8
P 4450 3550
AR Path="/5C5DACC8" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACC8" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACC8" Ref="R44"  Part="1" 
F 0 "R44" V 4450 3500 50  0000 L CNN
F 1 "R" V 4350 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4380 3550 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 3700 4450 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACC9
P 4550 3550
AR Path="/5C5DACC9" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACC9" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACC9" Ref="R45"  Part="1" 
F 0 "R45" V 4550 3500 50  0000 L CNN
F 1 "R" V 4450 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4480 3550 50  0001 C CNN
F 3 "~" H 4550 3550 50  0001 C CNN
	1    4550 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 3700 4550 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C5DACCA
P 4650 3550
AR Path="/5C5DACCA" Ref="R?"  Part="1" 
AR Path="/5F287616/5C5DACCA" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5C5DACCA" Ref="R46"  Part="1" 
F 0 "R46" V 4650 3500 50  0000 L CNN
F 1 "R" V 4550 3550 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4580 3550 50  0001 C CNN
F 3 "~" H 4650 3550 50  0001 C CNN
	1    4650 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 3700 4650 3800
Text Label 3750 3200 3    50   ~ 0
EO0
Text Label 3850 3200 3    50   ~ 0
EO1
Text Label 3950 3200 3    50   ~ 0
EO2
Text Label 4050 3200 3    50   ~ 0
EO3
Text Label 4150 3200 3    50   ~ 0
EO4
Text Label 4250 3200 3    50   ~ 0
EO5
Text Label 4350 3200 3    50   ~ 0
EO6
Text Label 4450 3200 3    50   ~ 0
EO7
Text Label 4550 3200 3    50   ~ 0
EO8
Text Label 4650 3200 3    50   ~ 0
EO9
$Comp
L ihouse-rescue:Motor_Motor_DC-ihouse-rescue M?
U 1 1 5C5DACCB
P 13250 3200
AR Path="/5C5DACCB" Ref="M?"  Part="1" 
AR Path="/5F287616/5C5DACCB" Ref="M?"  Part="1" 
AR Path="/5C5DACB2/5C5DACCB" Ref="M2"  Part="1" 
F 0 "M2" H 13408 3196 50  0001 L CNN
F 1 "Motor_DC" H 13408 3105 50  0001 L CNN
F 2 "" H 13250 3110 50  0001 C CNN
F 3 "~" H 13250 3110 50  0001 C CNN
	1    13250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 2900 13250 3000
Wire Wire Line
	12950 2900 13000 2900
Wire Wire Line
	13000 2900 13250 2900
Wire Notes Line
	12350 2650 13500 2650
Wire Notes Line
	13500 2650 13500 3800
Wire Notes Line
	13500 3800 12350 3800
Wire Notes Line
	12350 3800 12350 2650
Wire Wire Line
	13250 3600 13250 3500
Wire Wire Line
	12950 3600 13000 3600
Wire Wire Line
	13000 3600 13250 3600
Wire Wire Line
	12200 2900 12500 2900
Wire Wire Line
	12500 2900 12550 2900
Wire Wire Line
	12200 3600 12500 3600
Wire Wire Line
	12500 3600 12550 3600
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5C5DACCC
P 12750 3450
AR Path="/5C5DACCC" Ref="D?"  Part="1" 
AR Path="/5F287616/5C5DACCC" Ref="D?"  Part="1" 
AR Path="/5C5DACB2/5C5DACCC" Ref="D15"  Part="1" 
F 0 "D15" H 12750 3666 50  0001 C CNN
F 1 "D" H 12750 3575 50  0001 C CNN
F 2 "" H 12750 3450 50  0001 C CNN
F 3 "~" H 12750 3450 50  0001 C CNN
	1    12750 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	12600 3450 12500 3450
Wire Wire Line
	12500 3450 12500 3600
Connection ~ 12500 3600
Wire Wire Line
	12900 3450 13000 3450
Wire Wire Line
	13000 3450 13000 3600
Connection ~ 13000 3600
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5C5DACCD
P 12750 3050
AR Path="/5C5DACCD" Ref="D?"  Part="1" 
AR Path="/5F287616/5C5DACCD" Ref="D?"  Part="1" 
AR Path="/5C5DACB2/5C5DACCD" Ref="D14"  Part="1" 
F 0 "D14" H 12750 3266 50  0001 C CNN
F 1 "D" H 12750 3175 50  0001 C CNN
F 2 "" H 12750 3050 50  0001 C CNN
F 3 "~" H 12750 3050 50  0001 C CNN
	1    12750 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	12900 3050 13000 3050
Wire Wire Line
	13000 3050 13000 2900
Connection ~ 13000 2900
Wire Wire Line
	12600 3050 12500 3050
Wire Wire Line
	12500 3050 12500 2900
Connection ~ 12500 2900
$Comp
L ihouse-rescue:Switch_SW_Push_Open-ihouse-rescue SW?
U 1 1 5C5DACCE
P 12750 2900
AR Path="/5C5DACCE" Ref="SW?"  Part="1" 
AR Path="/5F287616/5C5DACCE" Ref="SW?"  Part="1" 
AR Path="/5C5DACB2/5C5DACCE" Ref="SW1"  Part="1" 
F 0 "SW1" H 12750 3115 50  0001 C CNN
F 1 "RHome" H 12750 3024 50  0000 C CNN
F 2 "" H 12750 3100 50  0001 C CNN
F 3 "" H 12750 3100 50  0001 C CNN
	1    12750 2900
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Switch_SW_Push_Open-ihouse-rescue SW?
U 1 1 5F3F6EB4
P 12750 3600
AR Path="/5F3F6EB4" Ref="SW?"  Part="1" 
AR Path="/5F287616/5F3F6EB4" Ref="SW?"  Part="1" 
AR Path="/5C5DACB2/5F3F6EB4" Ref="SW2"  Part="1" 
F 0 "SW2" H 12750 3815 50  0001 C CNN
F 1 "LHome" H 12750 3500 50  0000 C CNN
F 2 "" H 12750 3800 50  0001 C CNN
F 3 "" H 12750 3800 50  0001 C CNN
	1    12750 3600
	1    0    0    -1  
$EndComp
Text HLabel 1150 1800 0    50   Input ~ 0
~MCPRST
Text HLabel 1150 1500 0    50   Input ~ 0
COM
Text HLabel 1150 3300 0    50   Input ~ 0
SCL
Text HLabel 1150 3400 0    50   Input ~ 0
SDA
Wire Wire Line
	1250 950  1150 950 
Connection ~ 1250 950 
Text HLabel 1150 950  0    50   Input ~ 0
5VDC
Entry Wire Line
	3200 950  3300 1050
Wire Wire Line
	2500 950  3200 950 
Connection ~ 2500 950 
Text Label 3200 950  2    50   ~ 0
5VDC
Entry Wire Line
	4850 3100 4950 3200
Wire Wire Line
	4950 3200 4950 3800
Text HLabel 4950 3800 3    50   Output ~ 0
OC5V
Text Label 4950 3200 3    50   ~ 0
5VDC
Wire Wire Line
	5050 1450 5400 1450
Wire Wire Line
	5050 1650 5400 1650
Wire Wire Line
	5050 2050 5400 2050
Wire Wire Line
	5050 2250 5400 2250
Wire Wire Line
	7900 1450 8250 1450
Wire Wire Line
	7900 1650 8250 1650
Wire Wire Line
	7900 2050 8250 2050
Wire Wire Line
	7900 2250 8250 2250
Wire Bus Line
	6350 1700 6350 3100
Wire Bus Line
	3500 800  3500 3100
Wire Bus Line
	3500 3100 6350 3100
Wire Bus Line
	3300 800  3300 2950
$EndSCHEMATC

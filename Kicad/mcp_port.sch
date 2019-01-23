EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
U 1 1 5F2E1E0A
P 3250 3100
AR Path="/5F2E1E0A" Ref="U?"  Part="1" 
AR Path="/5F287616/5F2E1E0A" Ref="U?"  Part="1" 
F 0 "U?" H 3550 3900 60  0000 C CNN
F 1 "MCP23017" H 3000 3900 60  0000 C CNN
F 2 "digikey-footprints:DIP-28_W7.62mm" H 3450 3300 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 3450 3400 60  0001 L CNN
F 4 "MCP23017-E/SP-ND" H 3450 3500 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP23017-E/SP" H 3450 3600 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3450 3700 60  0001 L CNN "Category"
F 7 "Interface - I/O Expanders" H 3450 3800 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 3450 3900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP23017-E-SP/MCP23017-E-SP-ND/894272" H 3450 4000 60  0001 L CNN "DK_Detail_Page"
F 10 "IC I/O EXPANDER I2C 16B 28SDIP" H 3450 4100 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 3450 4200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3450 4300 60  0001 L CNN "Status"
	1    3250 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 2500 3850 2500
Wire Wire Line
	3550 2600 3850 2600
Wire Wire Line
	3550 2700 3850 2700
Wire Wire Line
	3550 2800 3850 2800
Wire Wire Line
	3550 2900 3850 2900
Wire Wire Line
	3550 3000 3850 3000
Wire Wire Line
	3550 3100 3850 3100
Wire Wire Line
	3550 3200 3850 3200
Wire Wire Line
	3150 4700 3150 4800
Wire Wire Line
	3150 4800 3650 4800
Text Label 3450 4800 2    50   ~ 0
COM
Wire Wire Line
	3150 2150 3150 2300
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5F2E1E1D
P 1900 2400
AR Path="/5F2E1E1D" Ref="C?"  Part="1" 
AR Path="/5F287616/5F2E1E1D" Ref="C?"  Part="1" 
F 0 "C?" H 1650 2450 50  0000 L CNN
F 1 "0.1" H 1650 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1938 2250 50  0001 C CNN
F 3 "~" H 1900 2400 50  0001 C CNN
	1    1900 2400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E24
P 2650 2400
AR Path="/5F2E1E24" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E24" Ref="R?"  Part="1" 
F 0 "R?" V 2650 2350 50  0000 L CNN
F 1 "R" H 2750 2450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 2580 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5F2E1E2B
P 2150 2700
AR Path="/5F2E1E2B" Ref="C?"  Part="1" 
AR Path="/5F287616/5F2E1E2B" Ref="C?"  Part="1" 
F 0 "C?" V 2300 2550 50  0000 L CNN
F 1 "0.1" V 2300 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2188 2550 50  0001 C CNN
F 3 "~" H 2150 2700 50  0001 C CNN
	1    2150 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2700 2400 2700
Wire Wire Line
	2400 2700 2650 2700
Wire Wire Line
	2650 2700 2750 2700
Connection ~ 2400 2700
Wire Wire Line
	1800 2700 1900 2700
Wire Wire Line
	1900 2700 2000 2700
Wire Wire Line
	1900 2700 1900 2550
Wire Wire Line
	1900 2250 1900 2150
Wire Wire Line
	1900 2150 2400 2150
Wire Wire Line
	2400 2150 2650 2150
Wire Wire Line
	2650 2150 3150 2150
Entry Wire Line
	3850 2500 3950 2600
Entry Wire Line
	3850 2600 3950 2700
Entry Wire Line
	3850 2700 3950 2800
Entry Wire Line
	3850 2800 3950 2900
Entry Wire Line
	3850 2900 3950 3000
Entry Wire Line
	3850 3000 3950 3100
Entry Wire Line
	3850 3100 3950 3200
Entry Wire Line
	3850 3200 3950 3300
Entry Wire Line
	4150 3550 4250 3650
Entry Wire Line
	4150 3350 4250 3450
Entry Wire Line
	4150 3150 4250 3250
Entry Wire Line
	4150 2950 4250 3050
Wire Wire Line
	3550 4300 3650 4300
Wire Wire Line
	3650 4300 3650 4400
Wire Wire Line
	3650 4400 3650 4500
Wire Wire Line
	3650 4500 3650 4800
Wire Wire Line
	3650 4400 3550 4400
Connection ~ 3650 4400
Wire Wire Line
	3650 4500 3550 4500
Connection ~ 3650 4500
Wire Wire Line
	3550 4200 3750 4200
Wire Wire Line
	3550 4100 3850 4100
Wire Wire Line
	2400 2550 2400 2700
Wire Wire Line
	2400 2700 2400 3000
Wire Wire Line
	2400 3000 1800 3000
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5F2E1E5C
P 2400 2400
AR Path="/5F2E1E5C" Ref="D?"  Part="1" 
AR Path="/5F287616/5F2E1E5C" Ref="D?"  Part="1" 
F 0 "D?" V 2300 2200 50  0000 L CNN
F 1 "D" V 2400 2200 50  0000 L CNN
F 2 "Diodes_SMD:D_MiniMELF" H 2400 2400 50  0001 C CNN
F 3 "~" H 2400 2400 50  0001 C CNN
	1    2400 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2150 2400 2250
Connection ~ 2400 2150
Wire Wire Line
	2650 2700 2650 2550
Connection ~ 2650 2700
Wire Wire Line
	2650 2150 2650 2250
Connection ~ 2650 2150
Wire Wire Line
	8000 5100 7750 5100
Wire Wire Line
	8500 5100 8750 5100
Wire Wire Line
	8000 5200 7750 5200
Wire Wire Line
	8500 5200 8750 5200
Wire Wire Line
	8000 5300 7750 5300
Wire Wire Line
	8500 5300 8750 5300
Wire Wire Line
	8000 5400 7750 5400
Wire Wire Line
	8500 5400 8750 5400
Text Label 7750 5100 0    50   ~ 0
V1A1
Text Label 7750 5200 0    50   ~ 0
V2A1
Text Label 7750 5300 0    50   ~ 0
V3A1
Text Label 7750 5400 0    50   ~ 0
V4A1
Text Label 8750 5100 2    50   ~ 0
V1A2
Text Label 8750 5200 2    50   ~ 0
V2A2
Text Label 8750 5300 2    50   ~ 0
V3A2
Text Label 8750 5400 2    50   ~ 0
V4A2
Wire Bus Line
	3950 2000 4150 2000
Entry Wire Line
	3850 3300 3950 3400
Entry Wire Line
	3850 3400 3950 3500
Entry Wire Line
	3850 3500 3950 3600
Entry Wire Line
	3850 3600 3950 3700
Wire Wire Line
	3550 3300 3850 3300
Wire Wire Line
	3550 3400 3850 3400
Wire Wire Line
	3550 3600 3850 3600
Entry Wire Line
	3850 3700 3950 3800
Entry Wire Line
	3850 3800 3950 3900
Entry Wire Line
	3850 3900 3950 4000
Entry Wire Line
	3850 4000 3950 4100
Wire Wire Line
	3850 3700 3550 3700
Wire Wire Line
	3550 3800 3850 3800
Wire Wire Line
	3550 3900 3850 3900
Wire Wire Line
	3550 4000 3850 4000
$Comp
L ihouse-rescue:Connector_Generic_Conn_02x05_Counter_Clockwise-ihouse-rescue J?
U 1 1 5F2E1E89
P 8200 5300
AR Path="/5F2E1E89" Ref="J?"  Part="1" 
AR Path="/5F287616/5F2E1E89" Ref="J?"  Part="1" 
F 0 "J?" H 8250 5717 50  0000 C CNN
F 1 "Valves" H 8250 5626 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-10A_2x05x4.20mm_Straight" H 8200 5300 50  0001 C CNN
F 3 "~" H 8200 5300 50  0001 C CNN
	1    8200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4600 2600 5150
Wire Wire Line
	2600 5150 3850 5150
Wire Wire Line
	3850 5150 3850 4100
Wire Wire Line
	2700 4500 2700 5000
Wire Wire Line
	2700 5000 3750 5000
Wire Wire Line
	3750 5000 3750 4200
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E96
P 2250 4250
AR Path="/5F2E1E96" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E96" Ref="R?"  Part="1" 
F 0 "R?" V 2250 4200 50  0000 L CNN
F 1 "R" V 2150 4250 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 2180 4250 50  0001 C CNN
F 3 "~" H 2250 4250 50  0001 C CNN
	1    2250 4250
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E9D
P 2400 4250
AR Path="/5F2E1E9D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E9D" Ref="R?"  Part="1" 
F 0 "R?" V 2400 4200 50  0000 L CNN
F 1 "R" V 2300 4250 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 2330 4250 50  0001 C CNN
F 3 "~" H 2400 4250 50  0001 C CNN
	1    2400 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 4400 2250 4500
Wire Wire Line
	2400 4400 2400 4600
Wire Wire Line
	2250 4100 2250 4000
Wire Wire Line
	2250 4000 2400 4000
Wire Wire Line
	2400 4000 2650 4000
Wire Wire Line
	2400 4000 2400 4100
Connection ~ 2400 4000
Text Label 2650 4000 2    50   ~ 0
5VDC
$Comp
L ihouse-rescue:L293-Driver_Motor U?
U 1 1 5F2E1EAC
P 5200 3250
AR Path="/5F2E1EAC" Ref="U?"  Part="1" 
AR Path="/5C3058F0/5F2E1EAC" Ref="U?"  Part="1" 
AR Path="/5F287616/5F2E1EAC" Ref="U?"  Part="1" 
F 0 "U?" H 4900 4350 50  0000 C CNN
F 1 "L293D" H 4900 4250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5450 2500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4900 3950 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:L293-Driver_Motor U?
U 1 1 5F2E1EB3
P 8050 3250
AR Path="/5F2E1EB3" Ref="U?"  Part="1" 
AR Path="/5C3058F0/5F2E1EB3" Ref="U?"  Part="1" 
AR Path="/5F287616/5F2E1EB3" Ref="U?"  Part="1" 
F 0 "U?" H 7750 4350 50  0000 C CNN
F 1 "L293D" H 7750 4250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8300 2500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 7750 3950 50  0001 C CNN
	1    8050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2650 4600 2650
Wire Wire Line
	4600 2650 4600 3250
Wire Wire Line
	4600 3250 4700 3250
Wire Wire Line
	4700 3450 4500 3450
Wire Wire Line
	4500 3450 4500 2850
Wire Wire Line
	4500 2850 4700 2850
Wire Wire Line
	7550 2650 7450 2650
Wire Wire Line
	7450 2650 7450 3250
Wire Wire Line
	7450 3250 7550 3250
Wire Wire Line
	7550 3450 7350 3450
Wire Wire Line
	7350 3450 7350 2850
Wire Wire Line
	7350 2850 7550 2850
Wire Wire Line
	4600 3250 4250 3250
Connection ~ 4600 3250
Wire Wire Line
	4500 3450 4250 3450
Connection ~ 4500 3450
Wire Wire Line
	4700 3050 4250 3050
Wire Wire Line
	4700 3650 4250 3650
Wire Wire Line
	7550 3650 7100 3650
Wire Wire Line
	7550 3050 7100 3050
Wire Wire Line
	5000 4050 5000 4150
Wire Wire Line
	5000 4150 5100 4150
Wire Wire Line
	5400 4150 5400 4050
Wire Wire Line
	5300 4050 5300 4150
Connection ~ 5300 4150
Wire Wire Line
	5300 4150 5400 4150
Wire Wire Line
	5100 4050 5100 4150
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 5300 4150
Wire Wire Line
	7850 4050 7850 4150
Wire Wire Line
	7850 4150 7950 4150
Wire Wire Line
	8250 4150 8250 4050
Wire Wire Line
	7950 4050 7950 4150
Connection ~ 7950 4150
Wire Wire Line
	7950 4150 8150 4150
Wire Wire Line
	8150 4050 8150 4150
Connection ~ 8150 4150
Wire Wire Line
	8150 4150 8250 4150
Wire Wire Line
	7350 3450 7100 3450
Connection ~ 7350 3450
Wire Wire Line
	7450 3250 7100 3250
Connection ~ 7450 3250
Text Label 4250 3250 0    50   ~ 0
DIRA
Text Label 4250 3450 0    50   ~ 0
DIRB
Text Label 7100 3250 0    50   ~ 0
DIRA
Text Label 7100 3450 0    50   ~ 0
DIRB
Text Label 4250 3050 0    50   ~ 0
VL1
Text Label 4250 3650 0    50   ~ 0
VL2
Text Label 7100 3050 0    50   ~ 0
VL3
Text Label 7100 3650 0    50   ~ 0
VL4
Text Label 3850 2500 2    50   ~ 0
VL1
Text Label 3850 2600 2    50   ~ 0
VL2
Text Label 3850 2700 2    50   ~ 0
VL3
Text Label 3850 2800 2    50   ~ 0
VL4
Text Label 3850 2900 2    50   ~ 0
DIRA
Text Label 3850 3000 2    50   ~ 0
DIRB
Text Label 5700 4150 2    50   ~ 0
COM
Text Label 8550 4150 2    50   ~ 0
COM
Text Label 5700 2150 2    50   ~ 0
12VDC
Connection ~ 5400 4150
Text Label 8550 2150 2    50   ~ 0
12VDC
Connection ~ 8250 4150
Text Label 6050 2650 2    50   ~ 0
V1A1
Text Label 6050 2850 2    50   ~ 0
V1A2
Text Label 6050 3250 2    50   ~ 0
V2A1
Text Label 6050 3450 2    50   ~ 0
V2A2
Text Label 8900 2650 2    50   ~ 0
V3A1
Text Label 8900 2850 2    50   ~ 0
V3A2
Text Label 8900 3250 2    50   ~ 0
V4A1
Text Label 8900 3450 2    50   ~ 0
V4A2
Entry Wire Line
	7000 2950 7100 3050
Entry Wire Line
	7000 3150 7100 3250
Entry Wire Line
	7000 3350 7100 3450
Entry Wire Line
	7000 3550 7100 3650
Wire Wire Line
	5700 4150 5400 4150
Wire Wire Line
	8550 4150 8250 4150
Wire Wire Line
	5300 2250 5300 2150
Wire Wire Line
	5300 2150 5700 2150
Wire Wire Line
	8150 2250 8150 2150
Wire Wire Line
	8150 2150 8550 2150
Wire Wire Line
	5100 2250 5100 2000
Wire Wire Line
	7950 2250 7950 2000
Text Label 7950 2000 3    50   ~ 0
5VDC
Text Label 5100 2000 3    50   ~ 0
5VDC
Wire Wire Line
	3550 3500 3850 3500
Text Label 3850 3100 2    50   ~ 0
EO0
Text Label 3850 3200 2    50   ~ 0
EO1
Text Label 3850 3300 2    50   ~ 0
EO2
Text Label 3850 3400 2    50   ~ 0
EO3
Text Label 3850 3500 2    50   ~ 0
EO4
Text Label 3850 3600 2    50   ~ 0
EO5
Text Label 3850 3700 2    50   ~ 0
EO6
Text Label 3850 3800 2    50   ~ 0
EO7
Text Label 3850 3900 2    50   ~ 0
EO8
Text Label 3850 4000 2    50   ~ 0
EO9
Connection ~ 2250 4500
Wire Wire Line
	2250 4500 2700 4500
Connection ~ 2400 4600
Wire Wire Line
	2400 4600 2600 4600
Wire Wire Line
	1800 4600 2400 4600
Wire Wire Line
	1800 4500 2250 4500
Connection ~ 1900 2700
Entry Wire Line
	4300 4300 4400 4400
Entry Wire Line
	4400 4300 4500 4400
Entry Wire Line
	4500 4300 4600 4400
Entry Wire Line
	4600 4300 4700 4400
Entry Wire Line
	4700 4300 4800 4400
Entry Wire Line
	4800 4300 4900 4400
Entry Wire Line
	4900 4300 5000 4400
Entry Wire Line
	5000 4300 5100 4400
Entry Wire Line
	5100 4300 5200 4400
Entry Wire Line
	5200 4300 5300 4400
Wire Wire Line
	4400 4400 4400 4600
Wire Wire Line
	4500 4400 4500 4600
Wire Wire Line
	4600 4400 4600 4600
Wire Wire Line
	4700 4400 4700 4600
Wire Wire Line
	4800 4400 4800 4600
Wire Wire Line
	4900 4400 4900 4600
Wire Wire Line
	5000 4400 5000 4600
Wire Wire Line
	5100 4400 5100 4600
Wire Wire Line
	5200 4400 5200 4600
Wire Wire Line
	5300 4400 5300 4600
Text HLabel 4400 5000 3    50   Input ~ 0
EO0
Text HLabel 4500 5000 3    50   Input ~ 0
EO1
Text HLabel 4600 5000 3    50   Input ~ 0
EO2
Text HLabel 4700 5000 3    50   Input ~ 0
EO3
Text HLabel 4800 5000 3    50   Input ~ 0
EO4
Text HLabel 4900 5000 3    50   Input ~ 0
EO5
Text HLabel 5000 5000 3    50   Input ~ 0
EO6
Text HLabel 5100 5000 3    50   Input ~ 0
EO7
Text HLabel 5200 5000 3    50   Input ~ 0
EO8
Text HLabel 5300 5000 3    50   Input ~ 0
EO9
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2005
P 4400 4750
AR Path="/5F2E2005" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2005" Ref="R?"  Part="1" 
F 0 "R?" V 4400 4700 50  0000 L CNN
F 1 "R" V 4300 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4330 4750 50  0001 C CNN
F 3 "~" H 4400 4750 50  0001 C CNN
	1    4400 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4900 4400 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E200D
P 4500 4750
AR Path="/5F2E200D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E200D" Ref="R?"  Part="1" 
F 0 "R?" V 4500 4700 50  0000 L CNN
F 1 "R" V 4400 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4430 4750 50  0001 C CNN
F 3 "~" H 4500 4750 50  0001 C CNN
	1    4500 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 4900 4500 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2015
P 4600 4750
AR Path="/5F2E2015" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2015" Ref="R?"  Part="1" 
F 0 "R?" V 4600 4700 50  0000 L CNN
F 1 "R" V 4500 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4530 4750 50  0001 C CNN
F 3 "~" H 4600 4750 50  0001 C CNN
	1    4600 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 4900 4600 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E201D
P 4700 4750
AR Path="/5F2E201D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E201D" Ref="R?"  Part="1" 
F 0 "R?" V 4700 4700 50  0000 L CNN
F 1 "R" V 4600 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4630 4750 50  0001 C CNN
F 3 "~" H 4700 4750 50  0001 C CNN
	1    4700 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 4900 4700 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2025
P 4800 4750
AR Path="/5F2E2025" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2025" Ref="R?"  Part="1" 
F 0 "R?" V 4800 4700 50  0000 L CNN
F 1 "R" V 4700 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4730 4750 50  0001 C CNN
F 3 "~" H 4800 4750 50  0001 C CNN
	1    4800 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 4900 4800 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E202D
P 4900 4750
AR Path="/5F2E202D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E202D" Ref="R?"  Part="1" 
F 0 "R?" V 4900 4700 50  0000 L CNN
F 1 "R" V 4800 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4830 4750 50  0001 C CNN
F 3 "~" H 4900 4750 50  0001 C CNN
	1    4900 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4900 4900 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2035
P 5000 4750
AR Path="/5F2E2035" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2035" Ref="R?"  Part="1" 
F 0 "R?" V 5000 4700 50  0000 L CNN
F 1 "R" V 4900 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 4930 4750 50  0001 C CNN
F 3 "~" H 5000 4750 50  0001 C CNN
	1    5000 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 4900 5000 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E203D
P 5100 4750
AR Path="/5F2E203D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E203D" Ref="R?"  Part="1" 
F 0 "R?" V 5100 4700 50  0000 L CNN
F 1 "R" V 5000 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 5030 4750 50  0001 C CNN
F 3 "~" H 5100 4750 50  0001 C CNN
	1    5100 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 4900 5100 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E2045
P 5200 4750
AR Path="/5F2E2045" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E2045" Ref="R?"  Part="1" 
F 0 "R?" V 5200 4700 50  0000 L CNN
F 1 "R" V 5100 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 5130 4750 50  0001 C CNN
F 3 "~" H 5200 4750 50  0001 C CNN
	1    5200 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4900 5200 5000
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E204D
P 5300 4750
AR Path="/5F2E204D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E204D" Ref="R?"  Part="1" 
F 0 "R?" V 5300 4700 50  0000 L CNN
F 1 "R" V 5200 4750 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 5230 4750 50  0001 C CNN
F 3 "~" H 5300 4750 50  0001 C CNN
	1    5300 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 4900 5300 5000
Text Label 4400 4400 3    50   ~ 0
EO0
Text Label 4500 4400 3    50   ~ 0
EO1
Text Label 4600 4400 3    50   ~ 0
EO2
Text Label 4700 4400 3    50   ~ 0
EO3
Text Label 4800 4400 3    50   ~ 0
EO4
Text Label 4900 4400 3    50   ~ 0
EO5
Text Label 5000 4400 3    50   ~ 0
EO6
Text Label 5100 4400 3    50   ~ 0
EO7
Text Label 5200 4400 3    50   ~ 0
EO8
Text Label 5300 4400 3    50   ~ 0
EO9
$Comp
L ihouse-rescue:Motor_Motor_DC-ihouse-rescue M?
U 1 1 5F3F6E82
P 13250 3200
AR Path="/5F3F6E82" Ref="M?"  Part="1" 
AR Path="/5F287616/5F3F6E82" Ref="M?"  Part="1" 
F 0 "M?" H 13408 3196 50  0001 L CNN
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
U 1 1 5F3F6E96
P 12750 3450
AR Path="/5F3F6E96" Ref="D?"  Part="1" 
AR Path="/5F287616/5F3F6E96" Ref="D?"  Part="1" 
F 0 "D?" H 12750 3666 50  0001 C CNN
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
U 1 1 5F3F6EA2
P 12750 3050
AR Path="/5F3F6EA2" Ref="D?"  Part="1" 
AR Path="/5F287616/5F3F6EA2" Ref="D?"  Part="1" 
F 0 "D?" H 12750 3266 50  0001 C CNN
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
U 1 1 5F3F6EAE
P 12750 2900
AR Path="/5F3F6EAE" Ref="SW?"  Part="1" 
AR Path="/5F287616/5F3F6EAE" Ref="SW?"  Part="1" 
F 0 "SW?" H 12750 3115 50  0001 C CNN
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
F 0 "SW?" H 12750 3815 50  0001 C CNN
F 1 "LHome" H 12750 3500 50  0000 C CNN
F 2 "" H 12750 3800 50  0001 C CNN
F 3 "" H 12750 3800 50  0001 C CNN
	1    12750 3600
	1    0    0    -1  
$EndComp
Text HLabel 1800 3000 0    50   Input ~ 0
~MCPRST
Text HLabel 1800 2700 0    50   Input ~ 0
COM
Text HLabel 1800 4500 0    50   Input ~ 0
SCL
Text HLabel 1800 4600 0    50   Input ~ 0
SDA
Wire Wire Line
	1900 2150 1800 2150
Connection ~ 1900 2150
Text HLabel 1800 2150 0    50   Input ~ 0
5VDC
Entry Wire Line
	3850 2150 3950 2250
Wire Wire Line
	3150 2150 3850 2150
Connection ~ 3150 2150
Text Label 3850 2150 2    50   ~ 0
5VDC
Entry Wire Line
	5500 4300 5600 4400
Wire Wire Line
	5600 4400 5600 5000
Text HLabel 5600 5000 3    50   Input ~ 0
OC5V
Text Label 5600 4400 3    50   ~ 0
5VDC
Wire Wire Line
	5700 2650 6050 2650
Wire Wire Line
	5700 2850 6050 2850
Wire Wire Line
	5700 3250 6050 3250
Wire Wire Line
	5700 3450 6050 3450
Wire Wire Line
	8550 2650 8900 2650
Wire Wire Line
	8550 2850 8900 2850
Wire Wire Line
	8550 3250 8900 3250
Wire Wire Line
	8550 3450 8900 3450
Wire Bus Line
	7000 2900 7000 4300
Wire Bus Line
	4150 2000 4150 4300
Wire Bus Line
	4150 4300 7000 4300
Wire Bus Line
	3950 2000 3950 4150
$EndSCHEMATC

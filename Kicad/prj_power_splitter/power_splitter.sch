EESchema Schematic File Version 4
LIBS:power_splitter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_01x02 J1
U 1 1 5E1014F3
P 4850 2550
F 0 "J1" H 5150 2450 50  0000 C CNN
F 1 "230VAC" H 5150 2550 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 4850 2550 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
	1    4850 2550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E1014FA
P 5050 4050
F 0 "J2" H 5350 3950 50  0000 C CNN
F 1 "14VDC" H 5350 4050 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G_1x02_P5.00mm_Vertical" H 5050 4050 50  0001 C CNN
F 3 "~" H 5050 4050 50  0001 C CNN
	1    5050 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 X1
U 1 1 5E101501
P 5050 5000
F 0 "X1" H 5050 4900 50  0000 C CNN
F 1 "BAT+" H 5250 5000 50  0000 C CNN
F 2 "mech:Faston_6.3x0.8x14" H 5050 5000 50  0001 C CNN
F 3 "~" H 5050 5000 50  0001 C CNN
	1    5050 5000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 X2
U 1 1 5E101508
P 5050 5150
F 0 "X2" H 5050 5250 50  0000 C CNN
F 1 "BAT-" H 5250 5150 50  0000 C CNN
F 2 "mech:Faston_6.3x0.8x14" H 5050 5150 50  0001 C CNN
F 3 "~" H 5050 5150 50  0001 C CNN
	1    5050 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 4050 5250 4050
$Comp
L Device:D D1
U 1 1 5E101512
P 5600 3950
AR Path="/5E101512" Ref="D1"  Part="1" 
AR Path="/5E043E52/5E101512" Ref="D?"  Part="1" 
F 0 "D1" H 5700 3850 50  0000 C CNN
F 1 "D" H 5600 3825 50  0001 C CNN
F 2 "Diode_THT:D_5KPW_P12.70mm_Horizontal" H 5600 3950 50  0001 C CNN
F 3 "~" H 5600 3950 50  0001 C CNN
	1    5600 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3950 5450 3950
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5E10151A
P 7100 2450
AR Path="/5E10151A" Ref="J3"  Part="1" 
AR Path="/5E043E52/5E10151A" Ref="J?"  Part="1" 
F 0 "J3" H 7180 2442 50  0000 L CNN
F 1 "230VAC" H 7180 2351 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7100 2450 50  0001 C CNN
F 3 "~" H 7100 2450 50  0001 C CNN
	1    7100 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5E101521
P 6150 2450
AR Path="/5E101521" Ref="F3"  Part="1" 
AR Path="/5E043E52/5E101521" Ref="F?"  Part="1" 
F 0 "F3" V 6050 2350 50  0000 C CNN
F 1 "1A" V 6050 2500 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 6080 2450 50  0001 C CNN
F 3 "~" H 6150 2450 50  0001 C CNN
	1    6150 2450
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5E101528
P 7100 2750
AR Path="/5E101528" Ref="J4"  Part="1" 
AR Path="/5E043E52/5E101528" Ref="J?"  Part="1" 
F 0 "J4" H 7180 2742 50  0000 L CNN
F 1 "230VAC" H 7180 2651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7100 2750 50  0001 C CNN
F 3 "~" H 7100 2750 50  0001 C CNN
	1    7100 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F4
U 1 1 5E10152F
P 6150 2750
AR Path="/5E10152F" Ref="F4"  Part="1" 
AR Path="/5E043E52/5E10152F" Ref="F?"  Part="1" 
F 0 "F4" V 6050 2650 50  0000 C CNN
F 1 "1A" V 6050 2800 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 6080 2750 50  0001 C CNN
F 3 "~" H 6150 2750 50  0001 C CNN
	1    6150 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2550 6800 2550
Wire Wire Line
	6800 2550 6800 2850
Wire Wire Line
	6900 2850 6800 2850
Wire Wire Line
	6300 2750 6700 2750
Wire Wire Line
	6300 2450 6800 2450
Wire Wire Line
	5150 2450 6000 2450
Wire Wire Line
	6000 2750 5150 2750
Wire Wire Line
	5150 2750 5150 2450
Wire Wire Line
	5050 2550 6800 2550
Connection ~ 6800 2550
Connection ~ 5150 2450
Wire Wire Line
	5050 2450 5150 2450
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5E101542
P 7100 3950
AR Path="/5E101542" Ref="J5"  Part="1" 
AR Path="/5E043E52/5E101542" Ref="J?"  Part="1" 
F 0 "J5" H 7179 3942 50  0000 L CNN
F 1 "12VDC" H 7179 3851 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G_1x02_P5.00mm_Vertical" H 7100 3950 50  0001 C CNN
F 3 "~" H 7100 3950 50  0001 C CNN
	1    7100 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F5
U 1 1 5E101549
P 6250 3950
AR Path="/5E101549" Ref="F5"  Part="1" 
AR Path="/5E043E52/5E101549" Ref="F?"  Part="1" 
F 0 "F5" V 6150 3850 50  0000 C CNN
F 1 "3A" V 6150 4000 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 6180 3950 50  0001 C CNN
F 3 "~" H 6250 3950 50  0001 C CNN
	1    6250 3950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5E101550
P 7100 4550
AR Path="/5E101550" Ref="J6"  Part="1" 
AR Path="/5E043E52/5E101550" Ref="J?"  Part="1" 
F 0 "J6" H 7179 4542 50  0000 L CNN
F 1 "12VDC" H 7179 4451 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G_1x02_P5.00mm_Vertical" H 7100 4550 50  0001 C CNN
F 3 "~" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F6
U 1 1 5E101557
P 6250 4550
AR Path="/5E101557" Ref="F6"  Part="1" 
AR Path="/5E043E52/5E101557" Ref="F?"  Part="1" 
F 0 "F6" V 6150 4450 50  0000 C CNN
F 1 "3A" V 6150 4600 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 6180 4550 50  0001 C CNN
F 3 "~" H 6250 4550 50  0001 C CNN
	1    6250 4550
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5E10155E
P 7100 5050
AR Path="/5E10155E" Ref="J7"  Part="1" 
AR Path="/5E043E52/5E10155E" Ref="J?"  Part="1" 
F 0 "J7" H 7179 5042 50  0000 L CNN
F 1 "12VDC" H 7179 4951 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_2-G_1x02_P5.00mm_Vertical" H 7100 5050 50  0001 C CNN
F 3 "~" H 7100 5050 50  0001 C CNN
	1    7100 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F7
U 1 1 5E101565
P 6250 5050
AR Path="/5E101565" Ref="F7"  Part="1" 
AR Path="/5E043E52/5E101565" Ref="F?"  Part="1" 
F 0 "F7" V 6150 4950 50  0000 C CNN
F 1 "3A" V 6150 5100 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 6180 5050 50  0001 C CNN
F 3 "~" H 6250 5050 50  0001 C CNN
	1    6250 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4050 6800 4050
Wire Wire Line
	6800 4050 6800 4650
Wire Wire Line
	6900 4650 6800 4650
Wire Wire Line
	6800 4650 6800 5150
Wire Wire Line
	6400 4550 6650 4550
Wire Wire Line
	6400 3950 6650 3950
Wire Wire Line
	6400 5050 6650 5050
Wire Wire Line
	5850 3950 6100 3950
Wire Wire Line
	6100 4550 5850 4550
Wire Wire Line
	5850 4550 5850 4250
Wire Wire Line
	5750 3950 5850 3950
Connection ~ 5850 3950
Wire Wire Line
	5850 4550 5850 4800
$Comp
L Device:Fuse F2
U 1 1 5E101580
P 5600 5050
AR Path="/5E101580" Ref="F2"  Part="1" 
AR Path="/5E043E52/5E101580" Ref="F?"  Part="1" 
F 0 "F2" V 5500 4950 50  0000 C CNN
F 1 "3A" V 5500 5100 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 5530 5050 50  0001 C CNN
F 3 "~" H 5600 5050 50  0001 C CNN
	1    5600 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5000 5350 5000
Wire Wire Line
	5350 5000 5350 5050
Wire Wire Line
	5350 5050 5450 5050
Wire Wire Line
	5250 5150 6800 5150
Wire Wire Line
	5750 5050 5850 5050
Connection ~ 6800 5150
Wire Wire Line
	6800 5150 6900 5150
Connection ~ 5850 5050
Wire Wire Line
	5850 5050 6100 5050
Connection ~ 5850 4550
Connection ~ 6800 4650
Connection ~ 5350 5000
$Comp
L Device:R R3
U 1 1 5E1089D2
P 6100 3700
F 0 "R3" V 6100 3700 50  0000 C CNN
F 1 "10k" V 6000 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 3700 50  0001 C CNN
F 3 "~" H 6100 3700 50  0001 C CNN
	1    6100 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E108C89
P 6100 4250
F 0 "R4" V 6100 4250 50  0000 C CNN
F 1 "10k" V 6000 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 4250 50  0001 C CNN
F 3 "~" H 6100 4250 50  0001 C CNN
	1    6100 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E108CD3
P 6100 4800
F 0 "R5" V 6100 4800 50  0000 C CNN
F 1 "10k" V 6000 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 4800 50  0001 C CNN
F 3 "~" H 6100 4800 50  0001 C CNN
	1    6100 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 4800 5850 4800
Connection ~ 5850 4800
Wire Wire Line
	5850 4800 5850 5050
Wire Wire Line
	5950 4250 5850 4250
Connection ~ 5850 4250
Wire Wire Line
	5850 4250 5850 3950
Wire Wire Line
	5950 3700 5850 3700
Wire Wire Line
	5850 3700 5850 3950
$Comp
L Device:LED D6
U 1 1 5E10B406
P 6400 3700
F 0 "D6" H 6450 3600 50  0000 C CNN
F 1 "LED" H 6392 3536 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6400 3700 50  0001 C CNN
F 3 "~" H 6400 3700 50  0001 C CNN
	1    6400 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 3700 6650 3700
Wire Wire Line
	6650 3700 6650 3950
Connection ~ 6650 3950
Wire Wire Line
	6650 3950 6900 3950
$Comp
L Device:LED D7
U 1 1 5E10EC52
P 6400 4250
F 0 "D7" H 6450 4150 50  0000 C CNN
F 1 "LED" H 6392 4086 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6400 4250 50  0001 C CNN
F 3 "~" H 6400 4250 50  0001 C CNN
	1    6400 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 5E10ECA6
P 6400 4800
F 0 "D8" H 6450 4700 50  0000 C CNN
F 1 "LED" H 6392 4636 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6400 4800 50  0001 C CNN
F 3 "~" H 6400 4800 50  0001 C CNN
	1    6400 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4250 6650 4250
Wire Wire Line
	6650 4250 6650 4550
Connection ~ 6650 4550
Wire Wire Line
	6650 4550 6900 4550
Wire Wire Line
	6550 4800 6650 4800
Wire Wire Line
	6650 4800 6650 5050
Connection ~ 6650 5050
Wire Wire Line
	6650 5050 6900 5050
$Comp
L Device:R R2
U 1 1 5E112342
P 5400 3050
F 0 "R2" V 5400 3050 50  0000 C CNN
F 1 "30k" V 5300 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 3050 50  0001 C CNN
F 3 "~" H 5400 3050 50  0001 C CNN
	1    5400 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E112394
P 5400 2200
F 0 "R1" V 5400 2200 50  0000 C CNN
F 1 "30k" V 5300 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 2200 50  0001 C CNN
F 3 "~" H 5400 2200 50  0001 C CNN
	1    5400 2200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E1124C3
P 6500 3050
F 0 "D4" H 6550 2950 50  0000 C CNN
F 1 "LED" H 6492 2886 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6500 3050 50  0001 C CNN
F 3 "~" H 6500 3050 50  0001 C CNN
	1    6500 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E112517
P 6550 2200
F 0 "D3" H 6500 2300 50  0000 C CNN
F 1 "LED" H 6542 2036 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6550 2200 50  0001 C CNN
F 3 "~" H 6550 2200 50  0001 C CNN
	1    6550 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3050 5150 3050
Wire Wire Line
	5150 3050 5150 2750
Connection ~ 5150 2750
Wire Wire Line
	5250 2200 5150 2200
Wire Wire Line
	5150 2200 5150 2450
Wire Wire Line
	6700 2200 6800 2200
Wire Wire Line
	6800 2200 6800 2450
Connection ~ 6800 2450
Wire Wire Line
	6800 2450 6900 2450
Wire Wire Line
	6650 3050 6700 3050
Wire Wire Line
	6700 3050 6700 2750
Connection ~ 6700 2750
Wire Wire Line
	6700 2750 6900 2750
$Comp
L Device:D D2
U 1 1 5E11FC3F
P 6550 2050
F 0 "D2" H 6500 2150 50  0000 C CNN
F 1 "1N4148" H 6550 2175 50  0001 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 6550 2050 50  0001 C CNN
F 3 "~" H 6550 2050 50  0001 C CNN
	1    6550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2050 6800 2050
Wire Wire Line
	6800 2050 6800 2200
Connection ~ 6800 2200
Wire Wire Line
	6400 2050 6300 2050
Wire Wire Line
	6300 2050 6300 2200
Wire Wire Line
	6300 2200 6400 2200
$Comp
L Device:D D5
U 1 1 5E125C1C
P 6500 3200
F 0 "D5" H 6450 3100 50  0000 C CNN
F 1 "1N4148" H 6500 3325 50  0001 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 6500 3200 50  0001 C CNN
F 3 "~" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6700 3200
Wire Wire Line
	6700 3200 6700 3050
Connection ~ 6700 3050
Wire Wire Line
	6350 3050 6300 3050
Wire Wire Line
	6300 3050 6300 3200
Wire Wire Line
	6300 3200 6350 3200
Wire Wire Line
	5550 3050 5600 3050
Connection ~ 6300 3050
Wire Wire Line
	5550 2200 5600 2200
Connection ~ 6300 2200
$Comp
L Device:Polyfuse F1
U 1 1 5E13766B
P 5600 4800
F 0 "F1" V 5375 4800 50  0000 C CNN
F 1 "30V/1A" V 5466 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_2816_7142Metric" H 5650 4600 50  0001 L CNN
F 3 "~" H 5600 4800 50  0001 C CNN
	1    5600 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4800 5850 4800
Wire Wire Line
	5450 4800 5350 4800
Wire Wire Line
	5350 4800 5350 5000
Connection ~ 6800 4050
$Comp
L Device:R R6
U 1 1 5C65B97A
P 6100 2200
F 0 "R6" V 6100 2200 50  0000 C CNN
F 1 "30k" V 6000 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 2200 50  0001 C CNN
F 3 "~" H 6100 2200 50  0001 C CNN
	1    6100 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2200 6300 2200
$Comp
L Device:R R7
U 1 1 5C65B9D8
P 6100 3050
F 0 "R7" V 6100 3050 50  0000 C CNN
F 1 "30k" V 6000 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 3050 50  0001 C CNN
F 3 "~" H 6100 3050 50  0001 C CNN
	1    6100 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3050 6300 3050
$Comp
L Device:R R8
U 1 1 5C65E71D
P 5600 4250
F 0 "R8" V 5600 4250 50  0000 C CNN
F 1 "10k" V 5500 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5530 4250 50  0001 C CNN
F 3 "~" H 5600 4250 50  0001 C CNN
	1    5600 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5C65E7A5
P 5350 4550
F 0 "D9" V 5350 4400 50  0000 C CNN
F 1 "LED" H 5342 4386 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5350 4550 50  0001 C CNN
F 3 "~" H 5350 4550 50  0001 C CNN
	1    5350 4550
	0    1    -1   0   
$EndComp
Wire Wire Line
	5350 4700 5350 4800
Connection ~ 5350 4800
Wire Wire Line
	5750 4250 5850 4250
Wire Wire Line
	5450 4250 5350 4250
Wire Wire Line
	5350 4250 5350 4400
$Comp
L Device:R R9
U 1 1 5C68A350
P 5750 2200
F 0 "R9" V 5750 2200 50  0000 C CNN
F 1 "30k" V 5650 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5680 2200 50  0001 C CNN
F 3 "~" H 5750 2200 50  0001 C CNN
	1    5750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2200 5950 2200
$Comp
L Device:R R10
U 1 1 5C69566D
P 5750 3050
F 0 "R10" V 5750 3050 50  0000 C CNN
F 1 "30k" V 5650 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5680 3050 50  0001 C CNN
F 3 "~" H 5750 3050 50  0001 C CNN
	1    5750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 3050 5950 3050
$EndSCHEMATC
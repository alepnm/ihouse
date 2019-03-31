EESchema Schematic File Version 4
LIBS:ihouse_power-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L Connector_Generic:Conn_01x16 J5
U 1 1 5D615720
P 8400 1700
F 0 "J5" H 8400 2500 50  0000 C CNN
F 1 "Conn_01x16" H 8480 1601 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8400 1700 50  0001 C CNN
F 3 "~" H 8400 1700 50  0001 C CNN
	1    8400 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 1000 8600 1000
Wire Wire Line
	8800 1100 8600 1100
Wire Wire Line
	8800 1200 8600 1200
Wire Wire Line
	8800 1300 8600 1300
Wire Wire Line
	8800 1400 8600 1400
Wire Wire Line
	8800 1500 8600 1500
Wire Wire Line
	8800 1600 8600 1600
Wire Wire Line
	8800 1700 8600 1700
Wire Wire Line
	8800 1800 8600 1800
Wire Wire Line
	8800 1900 8600 1900
Wire Wire Line
	8800 2000 8600 2000
Wire Wire Line
	8800 2100 8600 2100
Wire Wire Line
	8800 2200 8600 2200
Wire Wire Line
	8800 2300 8600 2300
Wire Wire Line
	8800 2400 8600 2400
Wire Wire Line
	8800 2500 8600 2500
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5D6AF335
P 8400 3300
F 0 "J6" H 8400 3600 50  0000 C CNN
F 1 "Conn_01x06" H 8480 3201 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8400 3300 50  0001 C CNN
F 3 "~" H 8400 3300 50  0001 C CNN
	1    8400 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8600 3100 8800 3100
Wire Wire Line
	8600 3300 8700 3300
Wire Wire Line
	8600 3400 8700 3400
Wire Wire Line
	8600 3500 8800 3500
Wire Wire Line
	8600 3600 8800 3600
$Sheet
S 6900 850  900  2900
U 5D6D54C9
F0 "MCP23017 modulis" 50
F1 "mcp_module.sch" 50
F2 "GPB0" O R 7800 2500 50 
F3 "GPB1" O R 7800 2400 50 
F4 "GPB2" O R 7800 2300 50 
F5 "GPB3" O R 7800 2200 50 
F6 "GPB4" O R 7800 2100 50 
F7 "GPB5" O R 7800 2000 50 
F8 "GPB6" O R 7800 1900 50 
F9 "GPA0" O R 7800 1000 50 
F10 "GPA1" O R 7800 1100 50 
F11 "GPA2" O R 7800 1200 50 
F12 "GPA3" O R 7800 1300 50 
F13 "GPA4" O R 7800 1400 50 
F14 "GPA5" O R 7800 1500 50 
F15 "GPA6" O R 7800 1600 50 
F16 "SCK" I L 6900 2300 50 
F17 "SDA" B L 6900 2200 50 
F18 "COM1" U L 6900 3000 50 
F19 "12VDC" I L 6900 2400 50 
F20 "12VDC1" O R 7800 3100 50 
F21 "5VDC1" O R 7800 3200 50 
F22 "5VDC" B L 6900 2700 50 
F23 "TBTX" O L 6900 3200 50 
F24 "TBRX" I L 6900 3300 50 
F25 "TBCMD" I L 6900 3400 50 
F26 "COM2" U R 7800 3400 50 
F27 "~MCPRST" I L 6900 2100 50 
F28 "MA1" I L 6900 2800 50 
F29 "MA2" O R 7800 3500 50 
F30 "MB2" O R 7800 3600 50 
F31 "MB1" I L 6900 2900 50 
F32 "M2ENA" O R 7800 1800 50 
F33 "M1ENA" O R 7800 1700 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x16 J8
U 1 1 5D6D99CC
P 8200 1700
F 0 "J8" H 8150 2500 50  0000 L CNN
F 1 "Conn_01x16" H 8280 1601 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8200 1700 50  0001 C CNN
F 3 "~" H 8200 1700 50  0001 C CNN
	1    8200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1000 8000 1000
Wire Wire Line
	7800 1100 8000 1100
Wire Wire Line
	7800 1200 8000 1200
Wire Wire Line
	7800 1300 8000 1300
Wire Wire Line
	7800 1400 8000 1400
Wire Wire Line
	7800 1500 8000 1500
Wire Wire Line
	7800 1600 8000 1600
Wire Wire Line
	7800 1700 8000 1700
Wire Wire Line
	7800 1800 8000 1800
Wire Wire Line
	7800 1900 8000 1900
Wire Wire Line
	7800 2000 8000 2000
Wire Wire Line
	7800 2100 8000 2100
Wire Wire Line
	7800 2200 8000 2200
Wire Wire Line
	7800 2300 8000 2300
Wire Wire Line
	7800 2400 8000 2400
Wire Wire Line
	7800 2500 8000 2500
$Sheet
S 8800 900  800  2850
U 5D5ECDB6
F0 "Reliu modulis" 50
F1 "relays.sch" 50
F2 "12VDC" I L 8800 3100 50 
F3 "5VDC" I L 8800 3200 50 
F4 "M1ENA" I L 8800 1700 50 
F5 "M2ENA" I L 8800 1800 50 
F6 "MA" I L 8800 3500 50 
F7 "MB" I L 8800 3600 50 
F8 "REL1" I L 8800 1000 50 
F9 "REL2" I L 8800 1100 50 
F10 "REL3" I L 8800 1200 50 
F11 "REL4" I L 8800 1300 50 
F12 "REL5" I L 8800 1400 50 
F13 "REL6" I L 8800 1500 50 
F14 "REL7" I L 8800 1600 50 
F15 "REL8" I L 8800 1900 50 
F16 "REL9" I L 8800 2000 50 
F17 "REL10" I L 8800 2100 50 
F18 "REL11" I L 8800 2200 50 
F19 "REL12" I L 8800 2300 50 
F20 "REL14" I L 8800 2500 50 
F21 "REL13" I L 8800 2400 50 
F22 "230N" O R 9600 2500 50 
F23 "230L" O R 9600 2400 50 
F24 "K2.11" O R 9600 3200 50 
F25 "K1.11" O R 9600 2900 50 
F26 "K2.14" O R 9600 3300 50 
F27 "K1.14" O R 9600 3000 50 
F28 "COM2" U L 8800 3400 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x06 J9
U 1 1 5D735F47
P 8200 3300
F 0 "J9" H 8150 3600 50  0000 L CNN
F 1 "Conn_01x06" H 8280 3201 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8200 3300 50  0001 C CNN
F 3 "~" H 8200 3300 50  0001 C CNN
	1    8200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3200 7800 3200
Wire Wire Line
	6150 3000 5850 3000
Wire Wire Line
	5850 3000 5850 3500
Wire Wire Line
	6150 2600 6050 2600
Wire Wire Line
	6050 2600 6050 2400
Wire Wire Line
	6050 2400 6750 2400
Wire Wire Line
	6750 2400 6750 2600
Wire Wire Line
	6750 2600 6650 2600
Wire Wire Line
	6900 2300 5950 2300
Wire Wire Line
	5950 2300 5950 2700
Wire Wire Line
	5950 2700 6150 2700
Wire Wire Line
	6900 2200 5850 2200
Wire Wire Line
	5850 2200 5850 2800
Wire Wire Line
	5850 2800 6150 2800
Wire Wire Line
	6900 2100 5750 2100
Wire Wire Line
	5750 2100 5750 2900
Wire Wire Line
	5750 2900 6150 2900
Wire Wire Line
	6650 3000 6750 3000
Connection ~ 6750 3000
Wire Wire Line
	6750 3000 6900 3000
Wire Wire Line
	6650 2800 6900 2800
Wire Wire Line
	6650 2900 6900 2900
Wire Wire Line
	7900 3300 8000 3300
Wire Wire Line
	7800 3500 8000 3500
Wire Wire Line
	7800 3600 8000 3600
Wire Wire Line
	7800 3100 8000 3100
$Sheet
S 2600 900  900  2850
U 5D803411
F0 "MCU plokste" 50
F1 "mcu.sch" 50
F2 "SDA" B R 3500 2850 50 
F3 "SCK" O R 3500 2750 50 
F4 "12VDC" O R 3500 2450 50 
F5 "5VDC" O R 3500 2350 50 
F6 "230L" I R 3500 1100 50 
F7 "230N" I R 3500 1200 50 
F8 "K1.14" I R 3500 1400 50 
F9 "K1.11" I R 3500 1300 50 
F10 "K2.14" I R 3500 1600 50 
F11 "K2.11" I R 3500 1500 50 
F12 "Optic" I L 2600 1750 50 
F13 "Hum1" I L 2600 2200 50 
F14 "Hum2" I L 2600 2650 50 
F15 "Hum3" I L 2600 3100 50 
F16 "VDDA" O L 2600 1650 50 
F17 "Temp" I L 2600 3550 50 
F18 "TBTX" O R 3500 3350 50 
F19 "TBRX" I R 3500 3250 50 
F20 "TBCMD" O R 3500 3150 50 
F21 "COM2" U R 3500 3050 50 
F22 "~MCPRST" O R 3500 2950 50 
F23 "COM1" U L 2600 3650 50 
F24 "MA" O R 3500 2250 50 
F25 "MB" O R 3500 2150 50 
$EndSheet
Wire Wire Line
	3500 2750 3950 2750
Wire Wire Line
	3500 2850 3850 2850
Wire Wire Line
	3500 2950 4300 2950
Wire Wire Line
	4800 3050 5000 3050
Wire Wire Line
	4200 3450 4200 3050
Wire Wire Line
	4200 3050 4300 3050
Wire Wire Line
	4800 2650 4900 2650
Wire Wire Line
	4900 2650 4900 2450
Wire Wire Line
	4900 2450 4200 2450
Wire Wire Line
	4200 2450 4200 2650
Wire Wire Line
	4200 2650 4300 2650
Wire Wire Line
	3500 2350 4050 2350
Wire Wire Line
	5000 2350 5000 2750
Wire Wire Line
	5000 2750 4800 2750
Wire Wire Line
	3500 3050 3750 3050
Connection ~ 4200 3050
Wire Wire Line
	7800 3400 7900 3400
Wire Wire Line
	8600 3200 8800 3200
Wire Wire Line
	7900 3300 7900 3400
Connection ~ 7900 3400
Wire Wire Line
	7900 3400 8000 3400
Wire Wire Line
	8700 3300 8700 3400
Connection ~ 8700 3400
Wire Wire Line
	8700 3400 8800 3400
Wire Wire Line
	6650 2700 6900 2700
Wire Wire Line
	4700 1100 5300 1100
Wire Wire Line
	4700 1200 5300 1200
Wire Wire Line
	4700 1300 5300 1300
Wire Wire Line
	4700 1400 5300 1400
Wire Wire Line
	4700 1500 5300 1500
Wire Wire Line
	4700 1600 5300 1600
Wire Wire Line
	9600 2900 10000 2900
Wire Wire Line
	9600 3000 10000 3000
Wire Wire Line
	9600 3200 10000 3200
Wire Wire Line
	9600 3300 10000 3300
Text Label 5300 1300 2    50   ~ 0
K1.11
Text Label 5300 1400 2    50   ~ 0
K1.14
Text Label 5300 1500 2    50   ~ 0
K2.11
Text Label 5300 1600 2    50   ~ 0
K2.14
Text Label 10000 2900 2    50   ~ 0
K1.11
Text Label 10000 3000 2    50   ~ 0
K1.14
Text Label 10000 3200 2    50   ~ 0
K2.11
Text Label 10000 3300 2    50   ~ 0
K2.14
Text Label 5300 1100 2    50   ~ 0
230L
Text Label 5300 1200 2    50   ~ 0
230N
Text Label 10000 2400 2    50   ~ 0
230L
Text Label 10000 2500 2    50   ~ 0
230N
Entry Wire Line
	5300 1600 5400 1700
Entry Wire Line
	5300 1500 5400 1600
Entry Wire Line
	5300 1400 5400 1500
Entry Wire Line
	5300 1300 5400 1400
Entry Wire Line
	5300 1200 5400 1300
Entry Wire Line
	5300 1100 5400 1200
Entry Wire Line
	10000 2500 10100 2600
Entry Wire Line
	10000 2400 10100 2500
Wire Wire Line
	9600 2400 10000 2400
Wire Wire Line
	9600 2500 10000 2500
Wire Bus Line
	5400 700  10100 700 
Entry Wire Line
	10000 2900 10100 3000
Entry Wire Line
	10000 3000 10100 3100
Entry Wire Line
	10000 3200 10100 3300
Entry Wire Line
	10000 3300 10100 3400
$Comp
L Connector_Generic:Conn_01x06 J11
U 1 1 5D3CA383
P 4250 1400
F 0 "J11" H 4200 1000 50  0000 L CNN
F 1 "Conn_01x06" H 4050 1750 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4250 1400 50  0001 C CNN
F 3 "~" H 4250 1400 50  0001 C CNN
	1    4250 1400
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 1100 3500 1100
Wire Wire Line
	4050 1200 3500 1200
Wire Wire Line
	4050 1300 3500 1300
Wire Wire Line
	4050 1400 3500 1400
Wire Wire Line
	4050 1500 3500 1500
Wire Wire Line
	4050 1600 3500 1600
$Comp
L Connector_Generic:Conn_01x06 J12
U 1 1 5D3EF16A
P 4500 1300
F 0 "J12" H 4450 1600 50  0000 L CNN
F 1 "Conn_01x06" H 4300 1650 50  0001 L CNN
F 2 "" H 4500 1300 50  0001 C CNN
F 3 "~" H 4500 1300 50  0001 C CNN
	1    4500 1300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C9EACBB
P 1850 1750
AR Path="/5D803411/5C9EACBB" Ref="J?"  Part="1" 
AR Path="/5C9EACBB" Ref="J14"  Part="1" 
F 0 "J14" H 1850 1950 50  0000 C CNN
F 1 "Optic" V 1950 1750 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 1850 1750 50  0001 C CNN
F 3 "~" H 1850 1750 50  0001 C CNN
	1    1850 1750
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C9F0696
P 1850 2200
AR Path="/5D803411/5C9F0696" Ref="J?"  Part="1" 
AR Path="/5C9F0696" Ref="J15"  Part="1" 
F 0 "J15" H 1850 2400 50  0000 C CNN
F 1 "Hum1" V 1950 2200 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 1850 2200 50  0001 C CNN
F 3 "~" H 1850 2200 50  0001 C CNN
	1    1850 2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C9F06CA
P 1850 2650
AR Path="/5D803411/5C9F06CA" Ref="J?"  Part="1" 
AR Path="/5C9F06CA" Ref="J16"  Part="1" 
F 0 "J16" H 1850 2850 50  0000 C CNN
F 1 "Hum2" V 1950 2650 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 1850 2650 50  0001 C CNN
F 3 "~" H 1850 2650 50  0001 C CNN
	1    1850 2650
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C9F0702
P 1850 3100
AR Path="/5D803411/5C9F0702" Ref="J?"  Part="1" 
AR Path="/5C9F0702" Ref="J17"  Part="1" 
F 0 "J17" H 1850 3300 50  0000 C CNN
F 1 "Hum3" V 1950 3100 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 1850 3100 50  0001 C CNN
F 3 "~" H 1850 3100 50  0001 C CNN
	1    1850 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 1850 2150 1850
Wire Wire Line
	2150 1850 2150 2300
Wire Wire Line
	2150 3200 2050 3200
Wire Wire Line
	2050 2750 2150 2750
Connection ~ 2150 2750
Wire Wire Line
	2150 2750 2150 3200
Wire Wire Line
	2050 3000 2250 3000
Wire Wire Line
	2250 3000 2250 2550
Wire Wire Line
	2050 2100 2250 2100
Connection ~ 2250 2100
Wire Wire Line
	2250 2100 2250 1650
Wire Wire Line
	2050 2550 2250 2550
Connection ~ 2250 2550
Wire Wire Line
	2250 2550 2250 2100
Wire Wire Line
	2050 2300 2150 2300
Connection ~ 2150 2300
Wire Wire Line
	2150 2300 2150 2750
Wire Wire Line
	2600 3650 2150 3650
Connection ~ 2150 3200
Wire Wire Line
	2050 1750 2600 1750
Wire Wire Line
	2050 2200 2600 2200
Wire Wire Line
	2050 2650 2600 2650
Wire Wire Line
	2050 3100 2600 3100
Wire Wire Line
	2050 1650 2250 1650
Wire Wire Line
	2250 1650 2600 1650
Connection ~ 2250 1650
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5CA168BB
P 1850 3550
AR Path="/5D803411/5CA168BB" Ref="J?"  Part="1" 
AR Path="/5CA168BB" Ref="J18"  Part="1" 
F 0 "J18" H 1850 3750 50  0000 C CNN
F 1 "Temp" V 1950 3550 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 1850 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 3550 2600 3550
Wire Wire Line
	2050 3650 2150 3650
Connection ~ 2150 3650
Wire Wire Line
	2150 3650 2150 3200
Wire Wire Line
	2050 3450 2250 3450
Wire Wire Line
	2250 3450 2250 3000
Connection ~ 2250 3000
Wire Wire Line
	3500 2450 4200 2450
Connection ~ 4200 2450
Wire Wire Line
	3500 2250 5100 2250
Wire Wire Line
	5100 2250 5100 2850
Wire Wire Line
	5100 2850 4800 2850
Wire Wire Line
	3500 2150 5200 2150
Wire Wire Line
	5200 2150 5200 2950
Wire Wire Line
	5200 2950 4800 2950
Wire Wire Line
	6750 2400 6900 2400
Connection ~ 6750 2400
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J7
U 1 1 5CBECF6B
P 4500 2950
F 0 "J7" H 4550 3375 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 4550 3376 50  0001 C CNN
F 2 "Connector_Multicomp:Multicomp_MC9A12-1434_2x07_P2.54mm_Vertical" H 4500 2950 50  0001 C CNN
F 3 "~" H 4500 2950 50  0001 C CNN
	1    4500 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J10
U 1 1 5CC23328
P 6350 2900
F 0 "J10" H 6400 3325 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 6400 3326 50  0001 C CNN
F 2 "Connector_Multicomp:Multicomp_MC9A12-1434_2x07_P2.54mm_Vertical" H 6350 2900 50  0001 C CNN
F 3 "~" H 6350 2900 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6900 3200
Wire Wire Line
	6900 3300 6050 3300
Wire Wire Line
	6050 3300 6050 3200
Wire Wire Line
	6050 3200 6150 3200
Wire Wire Line
	6900 3400 5950 3400
Wire Wire Line
	5950 3400 5950 3100
Wire Wire Line
	5950 3100 6150 3100
Wire Wire Line
	3500 3150 4300 3150
Wire Wire Line
	3500 3250 4300 3250
Wire Wire Line
	3500 3350 4900 3350
Wire Wire Line
	4900 3350 4900 3250
Wire Wire Line
	4900 3250 4800 3250
Wire Wire Line
	4200 3450 5000 3450
Wire Wire Line
	5850 3500 6750 3500
Wire Wire Line
	5000 3050 5000 3450
Wire Wire Line
	6750 3000 6750 3500
$Comp
L Connector_Generic:Conn_01x04 J19
U 1 1 5CF2DDF4
P 4550 3800
F 0 "J19" H 4630 3792 50  0000 L CNN
F 1 "I2C" H 4630 3701 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 4550 3800 50  0001 C CNN
F 3 "~" H 4550 3800 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3700 4050 3700
Wire Wire Line
	4050 3700 4050 2350
Connection ~ 4050 2350
Wire Wire Line
	4050 2350 5000 2350
Wire Wire Line
	4350 4000 3750 4000
Wire Wire Line
	3750 4000 3750 3050
Connection ~ 3750 3050
Wire Wire Line
	3750 3050 4200 3050
Wire Wire Line
	4350 3800 3950 3800
Wire Wire Line
	3950 3800 3950 2750
Connection ~ 3950 2750
Wire Wire Line
	3950 2750 4300 2750
Wire Wire Line
	4350 3900 3850 3900
Wire Wire Line
	3850 3900 3850 2850
Connection ~ 3850 2850
Wire Wire Line
	3850 2850 4300 2850
$Sheet
S 8800 4150 800  2050
U 5CA6F474
F0 "Papildomu IO modulis" 50
F1 "ext_module.sch" 50
F2 "SDA" B L 8800 4450 50 
F3 "SCK" I L 8800 4550 50 
F4 "12VDC" I L 8800 4650 50 
F5 "5VDC" I L 8800 5000 50 
F6 "COM" U L 8800 5300 50 
F7 "MA" I L 8800 5100 50 
F8 "MB" I L 8800 5200 50 
F9 "~MCPRST" I L 8800 4350 50 
F10 "GPB0" O R 9600 4250 50 
F11 "GPB1" O R 9600 4350 50 
F12 "GPB2" O R 9600 4450 50 
F13 "GPB3" O R 9600 4550 50 
F14 "GPB4" O R 9600 4650 50 
F15 "GPB5" O R 9600 4750 50 
F16 "GPB6" O R 9600 4850 50 
F17 "GPA0" O R 9600 4950 50 
F18 "GPA1" O R 9600 5050 50 
F19 "GPA2" O R 9600 5150 50 
F20 "GPA3" O R 9600 5250 50 
F21 "GPA4" O R 9600 5350 50 
F22 "GPA5" O R 9600 5450 50 
F23 "GPA6" O R 9600 5550 50 
F24 "M3A" O R 9600 5750 50 
F25 "M3B" O R 9600 5850 50 
F26 "M4A" O R 9600 6000 50 
F27 "M4B" O R 9600 6100 50 
F28 "INTA" O L 8800 5600 50 
F29 "INTB" O L 8800 5700 50 
$EndSheet
Wire Wire Line
	8450 5000 8800 5000
Wire Wire Line
	8450 5100 8800 5100
Wire Wire Line
	8450 5200 8800 5200
Wire Wire Line
	8450 5300 8550 5300
Wire Wire Line
	7950 5300 7850 5300
Wire Wire Line
	7850 5300 7850 5450
Wire Wire Line
	7850 5450 8550 5450
Wire Wire Line
	8550 5450 8550 5300
Connection ~ 8550 5300
Wire Wire Line
	8550 5300 8800 5300
Wire Wire Line
	7950 4900 7850 4900
Wire Wire Line
	7850 4900 7850 4650
Wire Wire Line
	7850 4650 8550 4650
Wire Wire Line
	8450 4900 8550 4900
Wire Wire Line
	8550 4900 8550 4650
Connection ~ 8550 4650
Wire Wire Line
	8550 4650 8800 4650
Wire Wire Line
	8800 4550 7750 4550
Wire Wire Line
	7750 4550 7750 5000
Wire Wire Line
	7750 5000 7950 5000
Wire Wire Line
	7950 5100 7650 5100
Wire Wire Line
	7650 5100 7650 4450
Wire Wire Line
	7650 4450 8800 4450
Wire Wire Line
	8800 4350 7550 4350
Wire Wire Line
	7550 4350 7550 5200
Wire Wire Line
	7550 5200 7950 5200
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J20
U 1 1 5CC5178D
P 8150 5100
F 0 "J20" H 8200 5425 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8200 5426 50  0001 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 8150 5100 50  0001 C CNN
F 3 "~" H 8150 5100 50  0001 C CNN
	1    8150 5100
	1    0    0    -1  
$EndComp
Wire Bus Line
	5400 700  5400 1750
Wire Bus Line
	10100 700  10100 3450
$EndSCHEMATC

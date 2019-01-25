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
F 2 "digikey-footprints:SOIC-28_W7.5mm" H 2800 2100 60  0001 L CNN
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
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1288 1050 50  0001 C CNN
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
F 1 "15k" V 2100 1150 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 1200 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1538 1350 50  0001 C CNN
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
	2900 3000 3200 3000
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
F 0 "D13" V 1750 950 50  0000 L CNN
F 1 "BAS32" V 1850 900 50  0000 L CNN
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
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E96
P 1500 3550
AR Path="/5F2E1E96" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E96" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E96" Ref="R35"  Part="1" 
F 0 "R35" V 1500 3500 50  0000 L CNN
F 1 "1k" V 1400 3500 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 3550 50  0001 C CNN
F 3 "~" H 1500 3550 50  0001 C CNN
	1    1500 3550
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5F2E1E9D
P 1750 3550
AR Path="/5F2E1E9D" Ref="R?"  Part="1" 
AR Path="/5F287616/5F2E1E9D" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5F2E1E9D" Ref="R36"  Part="1" 
F 0 "R36" V 1750 3500 50  0000 L CNN
F 1 "1k" V 1650 3500 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1680 3550 50  0001 C CNN
F 3 "~" H 1750 3550 50  0001 C CNN
	1    1750 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 3700 1500 3800
Wire Wire Line
	1750 3700 1750 3950
Wire Wire Line
	1500 3400 1500 3300
Wire Wire Line
	1500 3300 1750 3300
Wire Wire Line
	1750 3300 2000 3300
Wire Wire Line
	1750 3300 1750 3400
Connection ~ 1750 3300
Text Label 2000 3300 2    50   ~ 0
5VDC
Wire Wire Line
	2900 2300 3200 2300
Text Label 3200 1300 2    50   ~ 0
EA0
Text Label 3200 1400 2    50   ~ 0
EA1
Text Label 3200 1500 2    50   ~ 0
EA2
Text Label 3200 1600 2    50   ~ 0
EA3
Text Label 3200 1700 2    50   ~ 0
EA4
Text Label 3200 1800 2    50   ~ 0
EA5
Text Label 3200 1900 2    50   ~ 0
EA6
Text Label 3200 2000 2    50   ~ 0
EA7
Text Label 3200 2100 2    50   ~ 0
EA8
Text Label 3200 2200 2    50   ~ 0
EA9
Connection ~ 1500 3800
Connection ~ 1750 3950
Wire Wire Line
	1150 3950 1750 3950
Wire Wire Line
	1150 3800 1500 3800
Connection ~ 1250 1500
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
Text HLabel 1150 3800 0    50   Input ~ 0
SCL
Text HLabel 1150 3950 0    50   Input ~ 0
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
Wire Wire Line
	2500 6650 2500 6750
Wire Wire Line
	2500 6750 3000 6750
Text Label 2800 6750 2    50   ~ 0
COM
Wire Wire Line
	2500 4100 2500 4250
Wire Wire Line
	3000 6350 3000 6450
Wire Wire Line
	3000 6450 3000 6750
Wire Wire Line
	3000 6350 2900 6350
Wire Wire Line
	3000 6450 2900 6450
Connection ~ 3000 6450
Wire Wire Line
	2900 6150 3200 6150
Wire Wire Line
	2900 6050 3200 6050
Wire Wire Line
	2500 4100 3200 4100
Text Label 3200 4100 2    50   ~ 0
5VDC
$Comp
L ihouse-rescue:dk_Interface-I-O-Expanders_MCP23017-E_SP-ihouse-rescue U?
U 1 1 5CBD5F69
P 2600 5050
AR Path="/5CBD5F69" Ref="U?"  Part="1" 
AR Path="/5F287616/5CBD5F69" Ref="U?"  Part="1" 
AR Path="/5C5DACB2/5CBD5F69" Ref="U19"  Part="1" 
F 0 "U19" H 2900 5850 60  0000 C CNN
F 1 "MCP23017" H 2350 5850 60  0000 C CNN
F 2 "digikey-footprints:SOIC-28_W7.5mm" H 2800 5250 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 2800 5350 60  0001 L CNN
F 4 "MCP23017-E/SP-ND" H 2800 5450 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP23017-E/SP" H 2800 5550 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2800 5650 60  0001 L CNN "Category"
F 7 "Interface - I/O Expanders" H 2800 5750 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 2800 5850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP23017-E-SP/MCP23017-E-SP-ND/894272" H 2800 5950 60  0001 L CNN "DK_Detail_Page"
F 10 "IC I/O EXPANDER I2C 16B 28SDIP" H 2800 6050 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 2800 6150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2800 6250 60  0001 L CNN "Status"
	1    2600 5050
	-1   0    0    -1  
$EndComp
Text Label 3200 6050 2    50   ~ 0
SDA
Text Label 3200 6150 2    50   ~ 0
SCL
Wire Wire Line
	2100 4650 1700 4650
Text Label 1700 4650 0    50   ~ 0
~MCPRST
Wire Wire Line
	1750 3950 3200 3950
Wire Wire Line
	1500 3800 3200 3800
Wire Wire Line
	2100 4750 1150 4750
Wire Wire Line
	2100 4850 1150 4850
Text Label 3200 2300 2    50   ~ 0
EA10
Text Label 3200 2400 2    50   ~ 0
EA11
Text Label 3200 2500 2    50   ~ 0
EA12
Text Label 3200 2600 2    50   ~ 0
EA13
Text Label 3200 2700 2    50   ~ 0
EA14
Text Label 3200 2800 2    50   ~ 0
EA15
Wire Wire Line
	2900 4450 3200 4450
Wire Wire Line
	2900 4550 3200 4550
Wire Wire Line
	2900 4650 3200 4650
Wire Wire Line
	2900 4750 3200 4750
Wire Wire Line
	2900 4850 3200 4850
Wire Wire Line
	2900 4950 3200 4950
Wire Wire Line
	2900 5050 3200 5050
Wire Wire Line
	2900 5150 3200 5150
Wire Wire Line
	2900 5250 3200 5250
Wire Wire Line
	2900 5350 3200 5350
Wire Wire Line
	2900 5450 3200 5450
Wire Wire Line
	2900 5550 3200 5550
Wire Wire Line
	2900 5650 3200 5650
Wire Wire Line
	2900 5750 3200 5750
Wire Wire Line
	2900 5850 3200 5850
Wire Wire Line
	2900 5950 3200 5950
Entry Wire Line
	3200 4450 3300 4550
Entry Wire Line
	3200 4550 3300 4650
Entry Wire Line
	3200 4650 3300 4750
Entry Wire Line
	3200 4750 3300 4850
Entry Wire Line
	3200 4850 3300 4950
Entry Wire Line
	3200 4950 3300 5050
Entry Wire Line
	3200 5050 3300 5150
Entry Wire Line
	3200 5150 3300 5250
Entry Wire Line
	3200 5250 3300 5350
Entry Wire Line
	3200 5350 3300 5450
Entry Wire Line
	3200 5450 3300 5550
Entry Wire Line
	3200 5550 3300 5650
Entry Wire Line
	3200 5650 3300 5750
Entry Wire Line
	3200 5750 3300 5850
Entry Wire Line
	3200 5850 3300 5950
Entry Wire Line
	3200 5950 3300 6050
Text Label 3200 4450 2    50   ~ 0
EB0
Text Label 3200 4550 2    50   ~ 0
EB1
Text Label 3200 4650 2    50   ~ 0
EB2
Text Label 3200 4750 2    50   ~ 0
EB3
Text Label 3200 4850 2    50   ~ 0
EB4
Text Label 3200 4950 2    50   ~ 0
EB5
Text Label 3200 5050 2    50   ~ 0
EB6
Text Label 3200 5150 2    50   ~ 0
EB7
Text Label 3200 5250 2    50   ~ 0
EB8
Text Label 3200 5350 2    50   ~ 0
EB9
Text Label 3200 5450 2    50   ~ 0
EB10
Text Label 3200 5550 2    50   ~ 0
EB11
Text Label 3200 5650 2    50   ~ 0
EB12
Text Label 3200 5750 2    50   ~ 0
EB13
Text Label 3200 5850 2    50   ~ 0
EB14
Text Label 3200 5950 2    50   ~ 0
EB15
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5CD7BC74
P 3200 6500
AR Path="/5CD7BC74" Ref="R?"  Part="1" 
AR Path="/5F287616/5CD7BC74" Ref="R?"  Part="1" 
AR Path="/5C5DACB2/5CD7BC74" Ref="R37"  Part="1" 
F 0 "R37" V 3200 6450 50  0000 L CNN
F 1 "1k" V 3050 6450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 6500 50  0001 C CNN
F 3 "~" H 3200 6500 50  0001 C CNN
	1    3200 6500
	-1   0    0    1   
$EndComp
Entry Wire Line
	3200 6900 3300 7000
Text Label 3200 6900 1    50   ~ 0
5VDC
Entry Wire Line
	3200 4100 3300 4200
Wire Wire Line
	2900 6250 3200 6250
Wire Wire Line
	3200 6250 3200 6350
Entry Wire Line
	3200 6050 3300 6150
Entry Wire Line
	3200 6150 3300 6250
Entry Wire Line
	3200 2900 3300 3000
Entry Wire Line
	3200 3000 3300 3100
Entry Wire Line
	3200 3800 3300 3900
Entry Wire Line
	3200 3950 3300 4050
Text Label 3200 2900 2    50   ~ 0
SDA
Text Label 3200 3000 2    50   ~ 0
SCL
Text Label 3200 3800 2    50   ~ 0
SCL
Text Label 3200 3950 2    50   ~ 0
SDA
Wire Wire Line
	3200 6650 3200 6900
Wire Wire Line
	2100 1600 1850 1600
Wire Wire Line
	1850 1600 1850 1950
Wire Wire Line
	1850 1950 1150 1950
Wire Wire Line
	2100 1700 1950 1700
Wire Wire Line
	1950 1700 1950 2050
Wire Wire Line
	1950 2050 1150 2050
Text HLabel 1150 2050 0    50   Input ~ 0
INTA1
Text HLabel 1150 1950 0    50   Input ~ 0
INTB1
Text HLabel 1150 4850 0    50   Input ~ 0
INTA2
Text HLabel 1150 4750 0    50   Input ~ 0
INTB2
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C55BB7C
P 1950 4100
AR Path="/5C55BB7C" Ref="C?"  Part="1" 
AR Path="/5F287616/5C55BB7C" Ref="C?"  Part="1" 
AR Path="/5C5DACB2/5C55BB7C" Ref="C13"  Part="1" 
F 0 "C13" V 2100 3900 50  0000 L CNN
F 1 "0.1" V 2100 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1988 3950 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 4100 2500 4100
Connection ~ 2500 4100
Wire Wire Line
	1800 4100 1500 4100
Wire Bus Line
	3300 950  3300 7100
Text Label 1500 4100 0    50   ~ 0
COM
$EndSCHEMATC

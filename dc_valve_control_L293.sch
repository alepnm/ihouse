EESchema Schematic File Version 4
LIBS:ihouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L ihouse-rescue:Motor_Motor_DC-ihouse-rescue M?
U 1 1 5E4BCB5D
P 13500 1750
F 0 "M?" H 13658 1746 50  0001 L CNN
F 1 "Motor_DC" H 13658 1655 50  0001 L CNN
F 2 "" H 13500 1660 50  0001 C CNN
F 3 "~" H 13500 1660 50  0001 C CNN
	1    13500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 1450 13500 1550
Wire Wire Line
	13200 1450 13250 1450
Wire Wire Line
	13250 1450 13500 1450
Wire Notes Line
	12600 1200 13750 1200
Wire Notes Line
	13750 1200 13750 2350
Wire Notes Line
	13750 2350 12600 2350
Wire Notes Line
	12600 2350 12600 1200
Wire Wire Line
	13500 2150 13500 2050
Wire Wire Line
	13200 2150 13250 2150
Wire Wire Line
	13250 2150 13500 2150
Wire Wire Line
	12450 1450 12750 1450
Wire Wire Line
	12750 1450 12800 1450
Wire Wire Line
	12450 2150 12750 2150
Wire Wire Line
	12750 2150 12800 2150
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5D53CA4D
P 13000 2000
F 0 "D?" H 13000 2216 50  0001 C CNN
F 1 "D" H 13000 2125 50  0001 C CNN
F 2 "" H 13000 2000 50  0001 C CNN
F 3 "~" H 13000 2000 50  0001 C CNN
	1    13000 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	12850 2000 12750 2000
Wire Wire Line
	12750 2000 12750 2150
Connection ~ 12750 2150
Wire Wire Line
	13150 2000 13250 2000
Wire Wire Line
	13250 2000 13250 2150
Connection ~ 13250 2150
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5C305AB4
P 13000 1600
F 0 "D?" H 13000 1816 50  0001 C CNN
F 1 "D" H 13000 1725 50  0001 C CNN
F 2 "" H 13000 1600 50  0001 C CNN
F 3 "~" H 13000 1600 50  0001 C CNN
	1    13000 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	13150 1600 13250 1600
Wire Wire Line
	13250 1600 13250 1450
Connection ~ 13250 1450
Wire Wire Line
	12850 1600 12750 1600
Wire Wire Line
	12750 1600 12750 1450
Connection ~ 12750 1450
$Comp
L ihouse-rescue:Switch_SW_Push_Open-ihouse-rescue SW?
U 1 1 5C305AB5
P 13000 1450
F 0 "SW?" H 13000 1665 50  0001 C CNN
F 1 "RHome" H 13000 1574 50  0000 C CNN
F 2 "" H 13000 1650 50  0001 C CNN
F 3 "" H 13000 1650 50  0001 C CNN
	1    13000 1450
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Switch_SW_Push_Open-ihouse-rescue SW?
U 1 1 5E4BCB3E
P 13000 2150
F 0 "SW?" H 13000 2365 50  0001 C CNN
F 1 "LHome" H 13000 2050 50  0000 C CNN
F 2 "" H 13000 2350 50  0001 C CNN
F 3 "" H 13000 2350 50  0001 C CNN
	1    13000 2150
	1    0    0    -1  
$EndComp
Text HLabel 1300 1400 0    50   Input ~ 0
COM
$Comp
L ihouse-rescue:dk_Interface-I-O-Expanders_MCP23017-E_SP-ihouse-rescue U?
U 1 1 5E5E7C23
P 2750 2700
F 0 "U?" H 2700 3600 60  0000 C CNN
F 1 "MCP23017" H 2500 3500 60  0000 C CNN
F 2 "digikey-footprints:DIP-28_W7.62mm" H 2950 2900 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 2950 3000 60  0001 L CNN
F 4 "MCP23017-E/SP-ND" H 2950 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP23017-E/SP" H 2950 3200 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2950 3300 60  0001 L CNN "Category"
F 7 "Interface - I/O Expanders" H 2950 3400 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 2950 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP23017-E-SP/MCP23017-E-SP-ND/894272" H 2950 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "IC I/O EXPANDER I2C 16B 28SDIP" H 2950 3700 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 2950 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2950 3900 60  0001 L CNN "Status"
	1    2750 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 2100 3350 2100
Wire Wire Line
	3050 2200 3350 2200
Wire Wire Line
	3050 2300 3350 2300
Wire Wire Line
	3050 2400 3350 2400
Wire Wire Line
	3050 2500 3350 2500
Wire Wire Line
	3050 2600 3350 2600
Wire Wire Line
	3050 2700 3350 2700
Wire Wire Line
	3050 2800 3350 2800
Wire Wire Line
	2650 4300 2650 4400
Wire Wire Line
	2650 4400 3150 4400
Text Label 2950 4400 2    50   ~ 0
COM
Wire Wire Line
	2650 1750 2650 1900
Text HLabel 1300 1750 0    50   Input ~ 0
5VDC
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5E6B0AA9
P 1400 2000
F 0 "C?" H 1150 2050 50  0000 L CNN
F 1 "0.1" H 1150 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1438 1850 50  0001 C CNN
F 3 "~" H 1400 2000 50  0001 C CNN
	1    1400 2000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5E6BEB39
P 2150 2000
F 0 "R?" V 2150 1950 50  0000 L CNN
F 1 "R" H 2250 2050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 2080 2000 50  0001 C CNN
F 3 "~" H 2150 2000 50  0001 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5E6BEB7F
P 1650 2300
F 0 "C?" V 1800 2150 50  0000 L CNN
F 1 "0.1" V 1800 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1688 2150 50  0001 C CNN
F 3 "~" H 1650 2300 50  0001 C CNN
	1    1650 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2300 1900 2300
Wire Wire Line
	1900 2300 2150 2300
Wire Wire Line
	2150 2300 2250 2300
Connection ~ 1900 2300
Wire Wire Line
	1150 2300 1400 2300
Wire Wire Line
	1400 2300 1500 2300
Wire Wire Line
	1400 2300 1400 2150
Wire Wire Line
	1400 1850 1400 1750
Connection ~ 1400 1750
Wire Wire Line
	1300 1750 1400 1750
Wire Wire Line
	1400 1750 1900 1750
Wire Wire Line
	1900 1750 2150 1750
Wire Wire Line
	2150 1750 2650 1750
Connection ~ 1400 2300
Entry Wire Line
	3350 2100 3450 2200
Entry Wire Line
	3350 2200 3450 2300
Entry Wire Line
	3350 2300 3450 2400
Entry Wire Line
	3350 2400 3450 2500
Entry Wire Line
	3350 2500 3450 2600
Entry Wire Line
	3350 2600 3450 2700
Entry Wire Line
	3350 2700 3450 2800
Entry Wire Line
	3350 2800 3450 2900
Entry Wire Line
	3650 2400 3750 2500
Entry Wire Line
	3650 2200 3750 2300
Entry Wire Line
	3650 2000 3750 2100
Entry Wire Line
	3650 1800 3750 1900
Wire Wire Line
	3050 3900 3150 3900
Wire Wire Line
	3150 3900 3150 4000
Wire Wire Line
	3150 4000 3150 4100
Wire Wire Line
	3150 4100 3150 4400
Wire Wire Line
	3150 4000 3050 4000
Connection ~ 3150 4000
Wire Wire Line
	3150 4100 3050 4100
Connection ~ 3150 4100
Wire Wire Line
	3050 3800 3250 3800
Wire Wire Line
	3050 3700 3350 3700
Text HLabel 1300 4200 0    50   Input ~ 0
SDA
Text HLabel 1300 4100 0    50   Input ~ 0
SCK
Wire Wire Line
	2250 2400 2000 2400
Wire Wire Line
	2000 2400 2000 2700
Wire Wire Line
	2000 2700 1300 2700
Wire Wire Line
	2250 2500 2100 2500
Wire Wire Line
	2100 2500 2100 2800
Wire Wire Line
	2100 2800 1300 2800
Text HLabel 1300 2700 0    50   Input ~ 0
~INTB
Text HLabel 1300 2800 0    50   Input ~ 0
~INTA
Wire Wire Line
	1900 2150 1900 2300
Wire Wire Line
	1900 2300 1900 2600
Wire Wire Line
	1900 2600 1300 2600
Text HLabel 1300 2600 0    50   Input ~ 0
~MCPRST
$Comp
L ihouse-rescue:Device_D-ihouse-rescue D?
U 1 1 5C305AC0
P 1900 2000
F 0 "D?" V 1800 1800 50  0000 L CNN
F 1 "D" V 1900 1800 50  0000 L CNN
F 2 "Diodes_SMD:D_MiniMELF" H 1900 2000 50  0001 C CNN
F 3 "~" H 1900 2000 50  0001 C CNN
	1    1900 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 1750 1900 1850
Connection ~ 1900 1750
Wire Wire Line
	2150 2300 2150 2150
Connection ~ 2150 2300
Wire Wire Line
	2150 1750 2150 1850
Connection ~ 2150 1750
Wire Wire Line
	7300 3450 7050 3450
Wire Wire Line
	7800 3450 8050 3450
Wire Wire Line
	7300 3550 7050 3550
Wire Wire Line
	7800 3550 8050 3550
Wire Wire Line
	7300 3650 7050 3650
Wire Wire Line
	7800 3650 8050 3650
Wire Wire Line
	7300 3750 7050 3750
Wire Wire Line
	7800 3750 8050 3750
Text Label 7050 3450 0    50   ~ 0
V1A1
Text Label 7050 3550 0    50   ~ 0
V2A1
Text Label 7050 3650 0    50   ~ 0
V3A1
Text Label 7050 3750 0    50   ~ 0
V4A1
Text Label 8050 3450 2    50   ~ 0
V1A2
Text Label 8050 3550 2    50   ~ 0
V2A2
Text Label 8050 3650 2    50   ~ 0
V3A2
Text Label 8050 3750 2    50   ~ 0
V4A2
Wire Bus Line
	3450 1600 3650 1600
Entry Wire Line
	3350 2900 3450 3000
Entry Wire Line
	3350 3000 3450 3100
Entry Wire Line
	3350 3100 3450 3200
Entry Wire Line
	3350 3200 3450 3300
Wire Wire Line
	3050 2900 3350 2900
Wire Wire Line
	3050 3000 3350 3000
Wire Wire Line
	3050 3100 3350 3100
Wire Wire Line
	3050 3200 3350 3200
Text Label 3350 2900 2    50   ~ 0
EI0
Text Label 3350 3000 2    50   ~ 0
EI1
Text Label 3350 3100 2    50   ~ 0
EI2
Text Label 3350 3200 2    50   ~ 0
EI3
$Comp
L ihouse-rescue:Device_R_Pack04-ihouse-rescue RN?
U 1 1 5F926454
P 4300 3700
F 0 "RN?" H 3900 3700 50  0000 L CNN
F 1 "R_Pack04" H 4488 3655 50  0001 L CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 4575 3700 50  0001 C CNN
F 3 "~" H 4300 3700 50  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R_Pack04-ihouse-rescue RN?
U 1 1 5F938A8A
P 4300 5150
F 0 "RN?" H 3900 5150 50  0000 L CNN
F 1 "R_Pack04" H 4488 5105 50  0001 L CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 4575 5150 50  0001 C CNN
F 3 "~" H 4300 5150 50  0001 C CNN
	1    4300 5150
	1    0    0    -1  
$EndComp
$Comp
L ihouse-rescue:Device_R_Pack04-ihouse-rescue RN?
U 1 1 5C305AC3
P 5600 4750
F 0 "RN?" V 5300 4700 50  0000 L CNN
F 1 "R_Pack04" H 5788 4705 50  0001 L CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 5875 4750 50  0001 C CNN
F 3 "~" H 5600 4750 50  0001 C CNN
	1    5600 4750
	0    1    1    0   
$EndComp
$Comp
L ihouse-rescue:Device_R_Pack04-ihouse-rescue RN?
U 1 1 5C305AC4
P 5600 4200
F 0 "RN?" V 5300 4150 50  0000 L CNN
F 1 "R_Pack04" H 5788 4155 50  0001 L CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 5875 4200 50  0001 C CNN
F 3 "~" H 5600 4200 50  0001 C CNN
	1    5600 4200
	0    1    1    0   
$EndComp
Entry Wire Line
	3650 3900 3750 4000
Entry Wire Line
	3650 4000 3750 4100
Entry Wire Line
	3650 4100 3750 4200
Entry Wire Line
	3650 4200 3750 4300
Entry Wire Line
	3650 4450 3750 4550
Entry Wire Line
	3650 4550 3750 4650
Entry Wire Line
	3650 4650 3750 4750
Entry Wire Line
	3650 4750 3750 4850
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305AC5
P 4600 3700
F 0 "C?" V 4750 3550 50  0001 L CNN
F 1 "0.1" V 4750 3700 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 4638 3550 50  0001 C CNN
F 3 "~" H 4600 3700 50  0001 C CNN
	1    4600 3700
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305AC6
P 4800 3700
F 0 "C?" V 4950 3550 50  0001 L CNN
F 1 "0.1" V 4950 3700 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 4838 3550 50  0001 C CNN
F 3 "~" H 4800 3700 50  0001 C CNN
	1    4800 3700
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305AC7
P 5000 3700
F 0 "C?" V 5150 3550 50  0001 L CNN
F 1 "0.1" V 5150 3700 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 5038 3550 50  0001 C CNN
F 3 "~" H 5000 3700 50  0001 C CNN
	1    5000 3700
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305AC8
P 5200 3700
F 0 "C?" V 5350 3550 50  0001 L CNN
F 1 "0.1" V 5350 3700 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 5238 3550 50  0001 C CNN
F 3 "~" H 5200 3700 50  0001 C CNN
	1    5200 3700
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305AC9
P 4600 5150
F 0 "C?" V 4750 5000 50  0001 L CNN
F 1 "0.1" V 4750 5150 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 4638 5000 50  0001 C CNN
F 3 "~" H 4600 5150 50  0001 C CNN
	1    4600 5150
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305ACA
P 4800 5150
F 0 "C?" V 4950 5000 50  0001 L CNN
F 1 "0.1" V 4950 5150 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 4838 5000 50  0001 C CNN
F 3 "~" H 4800 5150 50  0001 C CNN
	1    4800 5150
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5C305ACB
P 5000 5150
F 0 "C?" V 5150 5000 50  0001 L CNN
F 1 "0.1" V 5150 5150 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 5038 5000 50  0001 C CNN
F 3 "~" H 5000 5150 50  0001 C CNN
	1    5000 5150
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_C-ihouse-rescue C?
U 1 1 5FE97A9D
P 5200 5150
F 0 "C?" V 5350 5000 50  0001 L CNN
F 1 "0.1" V 5350 5150 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 5238 5000 50  0001 C CNN
F 3 "~" H 5200 5150 50  0001 C CNN
	1    5200 5150
	-1   0    0    1   
$EndComp
Entry Wire Line
	3350 3300 3450 3400
Entry Wire Line
	3350 3400 3450 3500
Entry Wire Line
	3350 3500 3450 3600
Entry Wire Line
	3350 3600 3450 3700
Wire Wire Line
	3350 3300 3050 3300
Wire Wire Line
	3050 3400 3350 3400
Wire Wire Line
	3050 3500 3350 3500
Wire Wire Line
	3050 3600 3350 3600
Text Label 3350 3300 2    50   ~ 0
EI4
Text Label 3350 3400 2    50   ~ 0
EI5
Text Label 3350 3500 2    50   ~ 0
EI6
Text Label 3350 3600 2    50   ~ 0
EI7
Text Label 3750 4000 0    50   ~ 0
EI0
Text Label 3750 4100 0    50   ~ 0
EI1
Text Label 3750 4200 0    50   ~ 0
EI2
Text Label 3750 4300 0    50   ~ 0
EI3
Text Label 3750 4550 0    50   ~ 0
EI4
Text Label 3750 4650 0    50   ~ 0
EI5
Text Label 3750 4750 0    50   ~ 0
EI6
Text Label 3750 4850 0    50   ~ 0
EI7
$Comp
L ihouse-rescue:Connector_Generic_Conn_02x05_Counter_Clockwise-ihouse-rescue J?
U 1 1 6052B122
P 7500 3650
F 0 "J?" H 7550 4067 50  0000 C CNN
F 1 "Valves" H 7550 3976 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-10A_2x05x4.20mm_Straight" H 7500 3650 50  0001 C CNN
F 3 "~" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4200 1650 4200
Wire Wire Line
	1650 4200 2100 4200
Wire Wire Line
	2100 4200 2100 4650
Wire Wire Line
	2100 4650 3350 4650
Wire Wire Line
	3350 4650 3350 3700
Wire Wire Line
	1300 4100 1500 4100
Wire Wire Line
	1500 4100 2200 4100
Wire Wire Line
	2200 4100 2200 4550
Wire Wire Line
	2200 4550 3250 4550
Wire Wire Line
	3250 4550 3250 3800
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C2D8E69
P 1500 3850
F 0 "R?" V 1500 3800 50  0000 L CNN
F 1 "R" V 1400 3850 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 1430 3850 50  0001 C CNN
F 3 "~" H 1500 3850 50  0001 C CNN
	1    1500 3850
	-1   0    0    1   
$EndComp
$Comp
L ihouse-rescue:Device_R-ihouse-rescue R?
U 1 1 5C2D8F41
P 1650 3850
F 0 "R?" V 1650 3800 50  0000 L CNN
F 1 "R" V 1550 3850 50  0001 L CNN
F 2 "Resistors_SMD:R_0805" V 1580 3850 50  0001 C CNN
F 3 "~" H 1650 3850 50  0001 C CNN
	1    1650 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 4000 1500 4100
Connection ~ 1500 4100
Wire Wire Line
	1650 4000 1650 4200
Connection ~ 1650 4200
Wire Wire Line
	1500 3700 1500 3600
Wire Wire Line
	1500 3600 1650 3600
Wire Wire Line
	1650 3600 1900 3600
Wire Wire Line
	1650 3600 1650 3700
Connection ~ 1650 3600
Text Label 1900 3600 2    50   ~ 0
5VDC
$Comp
L Driver_Motor:L293 U?
U 1 1 5C3032F0
P 4700 2100
F 0 "U?" H 4400 3200 50  0000 C CNN
F 1 "L293" H 4400 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4400 2800 50  0001 C CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293 U?
U 1 1 5C32BB33
P 7550 2100
F 0 "U?" H 7250 3200 50  0000 C CNN
F 1 "L293" H 7250 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7800 1350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 7250 2800 50  0001 C CNN
	1    7550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1500 4100 1500
Wire Wire Line
	4100 1500 4100 2100
Wire Wire Line
	4100 2100 4200 2100
Wire Wire Line
	4200 2300 4000 2300
Wire Wire Line
	4000 2300 4000 1700
Wire Wire Line
	4000 1700 4200 1700
Wire Wire Line
	7050 1500 6950 1500
Wire Wire Line
	6950 1500 6950 2100
Wire Wire Line
	6950 2100 7050 2100
Wire Wire Line
	7050 2300 6850 2300
Wire Wire Line
	6850 2300 6850 1700
Wire Wire Line
	6850 1700 7050 1700
Wire Wire Line
	4100 2100 3750 2100
Connection ~ 4100 2100
Wire Wire Line
	4000 2300 3750 2300
Connection ~ 4000 2300
Wire Wire Line
	4200 1900 3750 1900
Wire Wire Line
	4200 2500 3750 2500
Wire Wire Line
	7050 2500 6600 2500
Wire Wire Line
	7050 1900 6600 1900
Wire Wire Line
	4500 2900 4500 3000
Wire Wire Line
	4500 3000 4600 3000
Wire Wire Line
	4900 3000 4900 2900
Wire Wire Line
	4800 2900 4800 3000
Connection ~ 4800 3000
Wire Wire Line
	4800 3000 4900 3000
Wire Wire Line
	4600 2900 4600 3000
Connection ~ 4600 3000
Wire Wire Line
	4600 3000 4800 3000
Wire Wire Line
	7350 2900 7350 3000
Wire Wire Line
	7350 3000 7450 3000
Wire Wire Line
	7750 3000 7750 2900
Wire Wire Line
	7450 2900 7450 3000
Connection ~ 7450 3000
Wire Wire Line
	7450 3000 7650 3000
Wire Wire Line
	7650 2900 7650 3000
Connection ~ 7650 3000
Wire Wire Line
	7650 3000 7750 3000
Wire Wire Line
	6850 2300 6600 2300
Connection ~ 6850 2300
Wire Wire Line
	6950 2100 6600 2100
Connection ~ 6950 2100
Text Label 3750 2100 0    50   ~ 0
DIRA
Text Label 3750 2300 0    50   ~ 0
DIRB
Text Label 6600 2100 0    50   ~ 0
DIRA
Text Label 6600 2300 0    50   ~ 0
DIRB
Text Label 3750 1900 0    50   ~ 0
VL1
Text Label 3750 2500 0    50   ~ 0
VL2
Text Label 6600 1900 0    50   ~ 0
VL3
Text Label 6600 2500 0    50   ~ 0
VL4
Text Label 3350 2100 2    50   ~ 0
VL1
Text Label 3350 2200 2    50   ~ 0
VL2
Text Label 3350 2300 2    50   ~ 0
VL3
Text Label 3350 2400 2    50   ~ 0
VL4
Text Label 3350 2500 2    50   ~ 0
DIRA
Text Label 3350 2600 2    50   ~ 0
DIRB
$Comp
L Device:D D?
U 1 1 5C4CFF0C
P 5300 2650
F 0 "D?" V 5400 2750 50  0000 R CNN
F 1 "10MQ100" V 5255 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5300 2650 50  0001 C CNN
F 3 "~" H 5300 2650 50  0001 C CNN
	1    5300 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C4D0072
P 5450 1250
F 0 "D?" V 5550 1350 50  0000 R CNN
F 1 "10MQ100" V 5405 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5450 1250 50  0001 C CNN
F 3 "~" H 5450 1250 50  0001 C CNN
	1    5450 1250
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C4D00D8
P 5600 2650
F 0 "D?" V 5700 2750 50  0000 R CNN
F 1 "10MQ100" V 5555 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5600 2650 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
	1    5600 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C4D011E
P 5750 1250
F 0 "D?" V 5850 1350 50  0000 R CNN
F 1 "10MQ100" V 5705 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5750 1250 50  0001 C CNN
F 3 "~" H 5750 1250 50  0001 C CNN
	1    5750 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 1100 5450 1000
Wire Wire Line
	5450 1000 5600 1000
Wire Wire Line
	5750 1000 5750 1100
Text Label 5200 3000 2    50   ~ 0
COM
Text Label 8050 3000 2    50   ~ 0
COM
Text Label 4950 1000 0    50   ~ 0
12VDC
$Comp
L Device:D D?
U 1 1 5C56B942
P 5300 1250
F 0 "D?" V 5400 1350 50  0000 R CNN
F 1 "10MQ100" V 5255 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5300 1250 50  0001 C CNN
F 3 "~" H 5300 1250 50  0001 C CNN
	1    5300 1250
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C56B948
P 5450 2650
F 0 "D?" V 5550 2750 50  0000 R CNN
F 1 "10MQ100" V 5405 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5450 2650 50  0001 C CNN
F 3 "~" H 5450 2650 50  0001 C CNN
	1    5450 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C56B94E
P 5600 1250
F 0 "D?" V 5700 1350 50  0000 R CNN
F 1 "10MQ100" V 5555 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5600 1250 50  0001 C CNN
F 3 "~" H 5600 1250 50  0001 C CNN
	1    5600 1250
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C56B954
P 5750 2650
F 0 "D?" V 5850 2750 50  0000 R CNN
F 1 "10MQ100" V 5705 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 5750 2650 50  0001 C CNN
F 3 "~" H 5750 2650 50  0001 C CNN
	1    5750 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2800 5450 3000
Wire Wire Line
	5450 3000 5600 3000
Wire Wire Line
	5750 3000 5750 2800
Wire Wire Line
	5450 3000 5300 3000
Connection ~ 5450 3000
Connection ~ 4900 3000
$Comp
L Device:D D?
U 1 1 5C76E3A3
P 8150 1250
F 0 "D?" V 8250 1350 50  0000 R CNN
F 1 "10MQ100" V 8105 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8150 1250 50  0001 C CNN
F 3 "~" H 8150 1250 50  0001 C CNN
	1    8150 1250
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C76E3A9
P 8300 1250
F 0 "D?" V 8400 1350 50  0000 R CNN
F 1 "10MQ100" V 8255 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8300 1250 50  0001 C CNN
F 3 "~" H 8300 1250 50  0001 C CNN
	1    8300 1250
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C76E3AF
P 8450 1250
F 0 "D?" V 8550 1350 50  0000 R CNN
F 1 "10MQ100" V 8405 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8450 1250 50  0001 C CNN
F 3 "~" H 8450 1250 50  0001 C CNN
	1    8450 1250
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C76E3B5
P 8600 1250
F 0 "D?" V 8700 1350 50  0000 R CNN
F 1 "10MQ100" V 8555 1171 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8600 1250 50  0001 C CNN
F 3 "~" H 8600 1250 50  0001 C CNN
	1    8600 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1100 8300 1000
Wire Wire Line
	8300 1000 8450 1000
Wire Wire Line
	8600 1000 8600 1100
Text Label 7800 1000 0    50   ~ 0
12VDC
$Comp
L Device:D D?
U 1 1 5C76E3D3
P 8150 2650
F 0 "D?" V 8250 2750 50  0000 R CNN
F 1 "10MQ100" V 8105 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8150 2650 50  0001 C CNN
F 3 "~" H 8150 2650 50  0001 C CNN
	1    8150 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C76E3D9
P 8300 2650
F 0 "D?" V 8400 2750 50  0000 R CNN
F 1 "10MQ100" V 8255 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8300 2650 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C76E3DF
P 8450 2650
F 0 "D?" V 8550 2750 50  0000 R CNN
F 1 "10MQ100" V 8405 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8450 2650 50  0001 C CNN
F 3 "~" H 8450 2650 50  0001 C CNN
	1    8450 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5C76E3E5
P 8600 2650
F 0 "D?" V 8700 2750 50  0000 R CNN
F 1 "10MQ100" V 8555 2571 50  0001 R CNN
F 2 "Diodes_SMD:D_SMA" H 8600 2650 50  0001 C CNN
F 3 "~" H 8600 2650 50  0001 C CNN
	1    8600 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2800 8300 3000
Wire Wire Line
	8300 3000 8450 3000
Wire Wire Line
	8600 3000 8600 2800
Wire Wire Line
	8300 3000 8150 3000
Connection ~ 8300 3000
Connection ~ 7750 3000
Text Label 6100 1500 2    50   ~ 0
V1A1
Text Label 6100 1700 2    50   ~ 0
V1A2
Text Label 6100 2100 2    50   ~ 0
V2A1
Text Label 6100 2300 2    50   ~ 0
V2A2
Text Label 8950 1500 2    50   ~ 0
V3A1
Text Label 8950 1700 2    50   ~ 0
V3A2
Text Label 8950 2100 2    50   ~ 0
V4A1
Text Label 8950 2300 2    50   ~ 0
V4A2
Wire Bus Line
	3650 3150 6500 3150
Connection ~ 3650 3150
Entry Wire Line
	6500 1800 6600 1900
Entry Wire Line
	6500 2000 6600 2100
Entry Wire Line
	6500 2200 6600 2300
Entry Wire Line
	6500 2400 6600 2500
Wire Wire Line
	5200 1500 5300 1500
Wire Wire Line
	5200 1700 5450 1700
Wire Wire Line
	5300 1100 5300 1000
Wire Wire Line
	5300 1000 5450 1000
Connection ~ 5450 1000
Wire Wire Line
	5600 1100 5600 1000
Connection ~ 5600 1000
Wire Wire Line
	5600 1000 5750 1000
Wire Wire Line
	5200 2300 5750 2300
Wire Wire Line
	5200 2100 5600 2100
Wire Wire Line
	5300 2800 5300 3000
Connection ~ 5300 3000
Wire Wire Line
	5300 3000 4900 3000
Wire Wire Line
	5600 2800 5600 3000
Connection ~ 5600 3000
Wire Wire Line
	5600 3000 5750 3000
Wire Wire Line
	5300 2500 5300 1500
Connection ~ 5300 1500
Wire Wire Line
	5300 1500 6100 1500
Wire Wire Line
	5300 1500 5300 1400
Wire Wire Line
	5450 1400 5450 1700
Connection ~ 5450 1700
Wire Wire Line
	5450 1700 6100 1700
Wire Wire Line
	5450 1700 5450 2500
Wire Wire Line
	5600 2500 5600 2100
Connection ~ 5600 2100
Wire Wire Line
	5600 2100 6100 2100
Wire Wire Line
	5600 2100 5600 1400
Wire Wire Line
	5750 1400 5750 2300
Connection ~ 5750 2300
Wire Wire Line
	5750 2300 6100 2300
Wire Wire Line
	5750 2300 5750 2500
Wire Wire Line
	8050 2100 8450 2100
Wire Wire Line
	8050 2300 8600 2300
Wire Wire Line
	8050 1500 8150 1500
Wire Wire Line
	8050 1700 8300 1700
Wire Wire Line
	8150 1400 8150 1500
Connection ~ 8150 1500
Wire Wire Line
	8150 1500 8950 1500
Wire Wire Line
	8150 1500 8150 2500
Wire Wire Line
	8150 2800 8150 3000
Connection ~ 8150 3000
Wire Wire Line
	8150 3000 7750 3000
Wire Wire Line
	8450 3000 8450 2800
Connection ~ 8450 3000
Wire Wire Line
	8450 3000 8600 3000
Wire Wire Line
	8300 2500 8300 1700
Connection ~ 8300 1700
Wire Wire Line
	8300 1700 8950 1700
Wire Wire Line
	8300 1400 8300 1700
Wire Wire Line
	8450 2500 8450 2100
Connection ~ 8450 2100
Wire Wire Line
	8450 2100 8950 2100
Wire Wire Line
	8450 2100 8450 1400
Wire Wire Line
	8600 1400 8600 2300
Connection ~ 8600 2300
Wire Wire Line
	8600 2300 8950 2300
Wire Wire Line
	8600 2300 8600 2500
Wire Wire Line
	8450 1100 8450 1000
Connection ~ 8450 1000
Wire Wire Line
	8300 1000 8150 1000
Wire Wire Line
	8150 1000 8150 1100
Connection ~ 8300 1000
Wire Wire Line
	8450 1000 8600 1000
Connection ~ 5300 1000
Wire Wire Line
	4800 1100 4800 1000
Wire Wire Line
	4800 1000 5300 1000
Connection ~ 8150 1000
Wire Wire Line
	7650 1100 7650 1000
Wire Wire Line
	7650 1000 8150 1000
Wire Wire Line
	3750 4000 4100 4000
Wire Wire Line
	3750 4100 4200 4100
Wire Wire Line
	3750 4200 4300 4200
Wire Wire Line
	3750 4300 4400 4300
Wire Wire Line
	4100 3900 4100 4000
Connection ~ 4100 4000
Wire Wire Line
	4100 4000 4600 4000
Wire Wire Line
	4200 3900 4200 4100
Connection ~ 4200 4100
Wire Wire Line
	4200 4100 4800 4100
Wire Wire Line
	4300 3900 4300 4200
Connection ~ 4300 4200
Wire Wire Line
	4300 4200 5000 4200
Wire Wire Line
	4400 3900 4400 4300
Connection ~ 4400 4300
Wire Wire Line
	4400 4300 5200 4300
Wire Wire Line
	3750 4550 4400 4550
Wire Wire Line
	3750 4650 4300 4650
Wire Wire Line
	3750 4750 4200 4750
Wire Wire Line
	3750 4850 4100 4850
Wire Wire Line
	4100 4950 4100 4850
Connection ~ 4100 4850
Wire Wire Line
	4100 4850 4600 4850
Wire Wire Line
	4200 4950 4200 4750
Connection ~ 4200 4750
Wire Wire Line
	4200 4750 4800 4750
Wire Wire Line
	4300 4950 4300 4650
Connection ~ 4300 4650
Wire Wire Line
	4300 4650 5000 4650
Wire Wire Line
	4400 4950 4400 4550
Connection ~ 4400 4550
Wire Wire Line
	4400 4550 5200 4550
Wire Wire Line
	4100 5350 4100 5450
Wire Wire Line
	4100 5450 4200 5450
Wire Wire Line
	4400 5450 4400 5350
Wire Wire Line
	4300 5350 4300 5450
Connection ~ 4300 5450
Wire Wire Line
	4300 5450 4400 5450
Wire Wire Line
	4200 5350 4200 5450
Connection ~ 4200 5450
Wire Wire Line
	4200 5450 4300 5450
Wire Wire Line
	4100 3500 4100 3400
Wire Wire Line
	4100 3400 4200 3400
Wire Wire Line
	4400 3400 4400 3500
Wire Wire Line
	4300 3500 4300 3400
Connection ~ 4300 3400
Wire Wire Line
	4300 3400 4400 3400
Wire Wire Line
	4200 3500 4200 3400
Connection ~ 4200 3400
Wire Wire Line
	4200 3400 4300 3400
Wire Wire Line
	5800 4000 6100 4000
Wire Wire Line
	5800 4100 6100 4100
Wire Wire Line
	5800 4200 6100 4200
Wire Wire Line
	5800 4300 6100 4300
Wire Wire Line
	5800 4550 6100 4550
Wire Wire Line
	5800 4650 6100 4650
Wire Wire Line
	5800 4750 6100 4750
Wire Wire Line
	5800 4850 6100 4850
Text Label 6100 4000 2    50   ~ 0
V1A1
Text Label 6100 4100 2    50   ~ 0
V1A2
Text Label 6100 4200 2    50   ~ 0
V2A1
Text Label 6100 4300 2    50   ~ 0
V2A2
Text Label 6100 4550 2    50   ~ 0
V3A1
Text Label 6100 4650 2    50   ~ 0
V3A2
Text Label 6100 4750 2    50   ~ 0
V4A1
Text Label 6100 4850 2    50   ~ 0
V4A2
Wire Wire Line
	4400 5450 4600 5450
Connection ~ 4400 5450
Wire Wire Line
	4400 3400 4600 3400
Connection ~ 4400 3400
Text Label 5450 3400 2    50   ~ 0
COM
Text Label 5450 5450 2    50   ~ 0
COM
Wire Wire Line
	4600 3850 4600 4000
Connection ~ 4600 4000
Wire Wire Line
	4600 4000 5400 4000
Wire Wire Line
	4800 3850 4800 4100
Connection ~ 4800 4100
Wire Wire Line
	4800 4100 5400 4100
Wire Wire Line
	5000 3850 5000 4200
Connection ~ 5000 4200
Wire Wire Line
	5000 4200 5400 4200
Wire Wire Line
	5200 3850 5200 4300
Connection ~ 5200 4300
Wire Wire Line
	5200 4300 5400 4300
Wire Wire Line
	4600 3550 4600 3400
Connection ~ 4600 3400
Wire Wire Line
	4600 3400 4800 3400
Wire Wire Line
	4800 3550 4800 3400
Connection ~ 4800 3400
Wire Wire Line
	4800 3400 5000 3400
Wire Wire Line
	5000 3550 5000 3400
Connection ~ 5000 3400
Wire Wire Line
	5000 3400 5200 3400
Wire Wire Line
	5200 3550 5200 3400
Connection ~ 5200 3400
Wire Wire Line
	5200 3400 5450 3400
Wire Wire Line
	4600 5300 4600 5450
Connection ~ 4600 5450
Wire Wire Line
	4600 5450 4800 5450
Wire Wire Line
	4800 5300 4800 5450
Connection ~ 4800 5450
Wire Wire Line
	4800 5450 5000 5450
Wire Wire Line
	5000 5300 5000 5450
Connection ~ 5000 5450
Wire Wire Line
	5000 5450 5200 5450
Wire Wire Line
	5200 5300 5200 5450
Connection ~ 5200 5450
Wire Wire Line
	5200 5450 5450 5450
Wire Wire Line
	4600 5000 4600 4850
Connection ~ 4600 4850
Wire Wire Line
	4600 4850 5400 4850
Wire Wire Line
	4800 5000 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	4800 4750 5400 4750
Wire Wire Line
	5000 5000 5000 4650
Connection ~ 5000 4650
Wire Wire Line
	5000 4650 5400 4650
Wire Wire Line
	5200 5000 5200 4550
Connection ~ 5200 4550
Wire Wire Line
	5200 4550 5400 4550
Wire Wire Line
	4600 1100 4600 850 
Wire Wire Line
	7450 1100 7450 850 
Text Label 7450 850  3    50   ~ 0
5VDC
Text Label 4600 850  3    50   ~ 0
5VDC
$Comp
L Regulator_Linear:LM1117-5.0 U?
U 1 1 5D2ACC10
P 2400 1000
F 0 "U?" H 2400 1242 50  0000 C CNN
F 1 "LM1117-5.0" H 2400 1151 50  0000 C CNN
F 2 "" H 2400 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 2400 1000 50  0001 C CNN
	1    2400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1000 1300 1000
Text HLabel 1300 1000 0    50   Input ~ 0
12VDC
Wire Wire Line
	2700 1000 3350 1000
Text Label 3350 1000 2    50   ~ 0
5VDC
Wire Wire Line
	2400 1300 2400 1400
Wire Wire Line
	1300 1400 2400 1400
Wire Wire Line
	2400 1400 3350 1400
Connection ~ 2400 1400
Text Label 3350 1400 2    50   ~ 0
COM
Text Label 1150 2300 0    50   ~ 0
COM
Wire Bus Line
	6500 1750 6500 3150
Wire Bus Line
	3650 1600 3650 3150
Wire Bus Line
	3650 3150 3650 6100
Wire Bus Line
	3450 1600 3450 3700
$EndSCHEMATC

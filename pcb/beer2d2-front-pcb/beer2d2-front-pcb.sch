EESchema Schematic File Version 2
LIBS:power
LIBS:analog-ic
LIBS:avr-mcu
LIBS:bluegiga
LIBS:connector
LIBS:freescale-ic
LIBS:ftdi-ic
LIBS:maxim-ic
LIBS:micrel-ic
LIBS:microchip-ic
LIBS:sharp-relay
LIBS:sparkfun
LIBS:standard
LIBS:stmicro-mcu
LIBS:ti-ic
LIBS:7400
LIBS:beer2d2-front-pcb-cache
EELAYER 27 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 2
Title "beer2d2 (working title) head control"
Date "13 nov 2013"
Rev "0.1"
Comp "Wiley Cousins, LLC."
Comment1 "shared under the terms of the Creative Commons Attribution Share-Alike 3.0 license"
Comment2 "open source hardware"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P_TQFP IC1
U 1 1 528159C5
P 3850 2450
F 0 "IC1" H 3150 3600 60  0000 C CNN
F 1 "ATMEGA168P" H 4200 1250 60  0000 C CNN
F 2 "~" H 3850 2450 60  0000 C CNN
F 3 "~" H 3850 2450 60  0000 C CNN
	1    3850 2450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52817F13
P 2300 2350
F 0 "C2" H 1700 2350 60  0000 C CNN
F 1 "1uF" H 1950 2350 60  0000 C CNN
F 2 "~" H 2300 2350 60  0001 C CNN
F 3 "~" H 2300 2350 60  0001 C CNN
	1    2300 2350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 52817F22
P 2550 2050
F 0 "C3" H 1700 2050 60  0000 C CNN
F 1 "1uF" H 1950 2050 60  0000 C CNN
F 2 "~" H 2550 2050 60  0001 C CNN
F 3 "~" H 2550 2050 60  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52817FB3
P 2300 2150
F 0 "C1" H 1700 2150 60  0000 C CNN
F 1 "1uF" H 1950 2150 60  0000 C CNN
F 2 "~" H 2300 2150 60  0001 C CNN
F 3 "~" H 2300 2150 60  0001 C CNN
	1    2300 2150
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 52818008
P 2550 2450
F 0 "C4" H 1700 2450 60  0000 C CNN
F 1 "1uF" H 1950 2450 60  0000 C CNN
F 2 "~" H 2550 2450 60  0001 C CNN
F 3 "~" H 2550 2450 60  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 52818102
P 2650 2250
F 0 "#PWR01" H 2650 2350 30  0001 C CNN
F 1 "VCC" H 2650 2350 30  0000 C CNN
F 2 "" H 2650 2250 60  0000 C CNN
F 3 "" H 2650 2250 60  0000 C CNN
	1    2650 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 2050 2850 2050
Wire Wire Line
	2400 2150 2850 2150
Wire Wire Line
	2400 2350 2850 2350
Wire Wire Line
	2650 2450 2850 2450
Wire Wire Line
	2750 2250 2650 2250
Wire Wire Line
	2750 2050 2750 2450
Connection ~ 2750 2150
Connection ~ 2750 2050
Connection ~ 2750 2350
Connection ~ 2750 2250
Connection ~ 2750 2450
Wire Wire Line
	2100 2450 2450 2450
Wire Wire Line
	2100 2050 2450 2050
Wire Wire Line
	2100 2150 2200 2150
Connection ~ 2100 2150
Wire Wire Line
	2100 2350 2200 2350
Connection ~ 2100 2350
$Comp
L GND #PWR02
U 1 1 528181C0
P 2100 1950
F 0 "#PWR02" H 2100 1950 30  0001 C CNN
F 1 "GND" H 2100 1880 30  0001 C CNN
F 2 "" H 2100 1950 60  0000 C CNN
F 3 "" H 2100 1950 60  0000 C CNN
	1    2100 1950
	-1   0    0    1   
$EndComp
Connection ~ 2100 2050
Wire Wire Line
	2100 1950 2100 2450
$Comp
L GND #PWR03
U 1 1 5281821E
P 2650 1750
F 0 "#PWR03" H 2650 1750 30  0001 C CNN
F 1 "GND" H 2650 1680 30  0001 C CNN
F 2 "" H 2650 1750 60  0000 C CNN
F 3 "" H 2650 1750 60  0000 C CNN
	1    2650 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1750 2850 1750
Wire Wire Line
	2750 1650 2750 1850
Wire Wire Line
	2750 1650 2850 1650
Wire Wire Line
	2750 1850 2850 1850
Connection ~ 2750 1750
Text Label 2400 1450 0    60   ~ 0
AVR_RST
Wire Wire Line
	2400 1450 2850 1450
Text Label 2300 5950 0    60   ~ 0
C6
Text Label 2500 2950 0    60   ~ 0
C5
Text Label 2500 3050 0    60   ~ 0
C4
Text Label 2500 3150 0    60   ~ 0
C3
Text Label 2500 3250 0    60   ~ 0
C2
Text Label 2500 3350 0    60   ~ 0
C1
Text Label 2500 3450 0    60   ~ 0
C0
Wire Wire Line
	2300 5950 2650 5950
Wire Wire Line
	1950 2950 2850 2950
Wire Wire Line
	1950 3050 2850 3050
Wire Wire Line
	1950 3150 2850 3150
Wire Wire Line
	2500 3250 2850 3250
Wire Wire Line
	2500 3350 2850 3350
Wire Wire Line
	2500 3450 2850 3450
Text Label 5200 2200 2    60   ~ 0
R7
Wire Wire Line
	5200 2950 4850 2950
Wire Wire Line
	5200 2850 4850 2850
Wire Wire Line
	4850 2700 5200 2700
Wire Wire Line
	5200 2600 4850 2600
Wire Wire Line
	4850 2500 5200 2500
Wire Wire Line
	5200 2400 4850 2400
Wire Wire Line
	4850 2300 5200 2300
Wire Wire Line
	5200 2200 4850 2200
NoConn ~ 4850 3350
NoConn ~ 4850 3450
NoConn ~ 2850 2650
Text Label 5300 1450 2    60   ~ 0
TLC_SDA
Text Label 5300 1550 2    60   ~ 0
TLC_SCK
NoConn ~ 4850 1800
NoConn ~ 4850 1700
Wire Wire Line
	4850 1450 5300 1450
Wire Wire Line
	5300 1550 4850 1550
$Comp
L TLC5971_SOP IC3
U 1 1 528186F3
P 8800 2100
F 0 "IC3" H 8600 2950 60  0000 C CNN
F 1 "TLC5971_SOP" H 8800 2850 60  0000 C CNN
F 2 "~" H 8800 2100 60  0001 C CNN
F 3 "~" H 8800 2100 60  0001 C CNN
F 4 "TI" H 8500 1350 60  0001 C CNN "Manufacturer"
F 5 "TLC5971PWP" H 8900 1350 60  0001 C CNN "Part"
	1    8800 2100
	1    0    0    -1  
$EndComp
NoConn ~ 8300 2650
NoConn ~ 8300 2550
Text Label 7850 2350 0    60   ~ 0
TLC_SDA
Wire Wire Line
	7850 2350 8300 2350
Text Label 7850 2450 0    60   ~ 0
TLC_SCK
Wire Wire Line
	7850 2450 8300 2450
$Comp
L R R1
U 1 1 52818796
P 8050 2150
F 0 "R1" H 7400 2150 60  0000 C CNN
F 1 "2.2k" H 7650 2150 60  0000 C CNN
F 2 "~" H 8050 2150 60  0001 C CNN
F 3 "~" H 8050 2150 60  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 528187A5
P 7800 2150
F 0 "#PWR04" H 7800 2150 30  0001 C CNN
F 1 "GND" H 7800 2080 30  0001 C CNN
F 2 "" H 7800 2150 60  0000 C CNN
F 3 "" H 7800 2150 60  0000 C CNN
	1    7800 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2150 7900 2150
Wire Wire Line
	8200 2150 8300 2150
$Comp
L C C6
U 1 1 52818818
P 8000 1750
F 0 "C6" H 8600 1750 60  0000 C CNN
F 1 "0.1uF" H 8350 1750 60  0000 C CNN
F 2 "~" H 8000 1750 60  0001 C CNN
F 3 "~" H 8000 1750 60  0001 C CNN
	1    8000 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5281885E
P 7800 1950
F 0 "#PWR05" H 7800 1950 30  0001 C CNN
F 1 "GND" H 7800 1880 30  0001 C CNN
F 2 "" H 7800 1950 60  0000 C CNN
F 3 "" H 7800 1950 60  0000 C CNN
	1    7800 1950
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 5281886D
P 8000 1550
F 0 "C5" H 7400 1550 60  0000 C CNN
F 1 "1uF" H 7700 1550 60  0000 C CNN
F 2 "~" H 8000 1550 60  0001 C CNN
F 3 "~" H 8000 1550 60  0001 C CNN
	1    8000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1950 8300 1950
Wire Wire Line
	7850 1550 7850 1950
Wire Wire Line
	7850 1550 7900 1550
Wire Wire Line
	7850 1750 7900 1750
Connection ~ 7850 1750
Connection ~ 7850 1950
Wire Wire Line
	8100 1750 8300 1750
Wire Wire Line
	8100 1550 8300 1550
$Comp
L VCC #PWR06
U 1 1 528189F5
P 8200 1500
F 0 "#PWR06" H 8200 1600 30  0001 C CNN
F 1 "VCC" H 8200 1600 30  0000 C CNN
F 2 "" H 8200 1500 60  0000 C CNN
F 3 "" H 8200 1500 60  0000 C CNN
	1    8200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1500 8200 1750
Connection ~ 8200 1550
Connection ~ 8200 1750
$Comp
L GND #PWR07
U 1 1 52818A78
P 8800 3000
F 0 "#PWR07" H 8800 3000 30  0001 C CNN
F 1 "GND" H 8800 2930 30  0001 C CNN
F 2 "" H 8800 3000 60  0000 C CNN
F 3 "" H 8800 3000 60  0000 C CNN
	1    8800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3000 8800 2900
Text Label 1950 2950 0    60   ~ 0
AVR_SCK
Text Label 1950 3050 0    60   ~ 0
AVR_MISO
Text Label 1950 3150 0    60   ~ 0
AVR_MOSI
$Comp
L AVR_ISP P1
U 1 1 5282C838
P 3800 4250
F 0 "P1" H 3600 4500 60  0000 C CNN
F 1 "AVR_ISP" H 3850 4000 60  0000 C CNN
F 2 "~" H 3800 4250 60  0001 C CNN
F 3 "~" H 3800 4250 60  0001 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
Text Label 2800 4250 0    60   ~ 0
AVR_SCK
Text Label 2800 4150 0    60   ~ 0
AVR_MISO
Text Label 4800 4250 2    60   ~ 0
AVR_MOSI
$Comp
L VCC #PWR08
U 1 1 5282CA44
P 4350 4100
F 0 "#PWR08" H 4350 4200 30  0001 C CNN
F 1 "VCC" H 4350 4200 30  0000 C CNN
F 2 "" H 4350 4100 60  0000 C CNN
F 3 "" H 4350 4100 60  0000 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5282CA53
P 4350 4450
F 0 "#PWR09" H 4350 4450 30  0001 C CNN
F 1 "GND" H 4350 4380 30  0001 C CNN
F 2 "" H 4350 4450 60  0000 C CNN
F 3 "" H 4350 4450 60  0000 C CNN
	1    4350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4450 4350 4350
Wire Wire Line
	4350 4350 4250 4350
Wire Wire Line
	4250 4150 4350 4150
Wire Wire Line
	4350 4150 4350 4100
Wire Wire Line
	4800 4250 4250 4250
Wire Wire Line
	2800 4150 3350 4150
Wire Wire Line
	2800 4250 3350 4250
Text Label 2800 4350 0    60   ~ 0
AVR_RST
Wire Wire Line
	2800 4350 3350 4350
$Comp
L VCC_REG IC2
U 1 1 5282D6A1
P 7700 5950
F 0 "IC2" H 7600 6150 60  0000 C CNN
F 1 "VCC_REG" H 7700 5750 60  0000 C CNN
F 2 "~" H 7700 5950 60  0000 C CNN
F 3 "~" H 7700 5950 60  0000 C CNN
	1    7700 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5282D791
P 8200 5950
F 0 "#PWR010" H 8200 5950 30  0001 C CNN
F 1 "GND" H 8200 5880 30  0001 C CNN
F 2 "" H 8200 5950 60  0000 C CNN
F 3 "" H 8200 5950 60  0000 C CNN
	1    8200 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 5950 8100 5950
Text Label 8550 6050 2    60   ~ 0
VIN
$Comp
L VCC #PWR011
U 1 1 5282D883
P 8350 5850
F 0 "#PWR011" H 8350 5950 30  0001 C CNN
F 1 "VCC" H 8350 5950 30  0000 C CNN
F 2 "" H 8350 5850 60  0000 C CNN
F 3 "" H 8350 5850 60  0000 C CNN
	1    8350 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 5850 8100 5850
Wire Wire Line
	8100 6050 8800 6050
Connection ~ 8200 6050
$Comp
L GND #PWR012
U 1 1 5282DBC2
P 8200 6350
F 0 "#PWR012" H 8200 6350 30  0001 C CNN
F 1 "GND" H 8200 6280 30  0001 C CNN
F 2 "" H 8200 6350 60  0000 C CNN
F 3 "" H 8200 6350 60  0000 C CNN
	1    8200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6350 8200 6250
$Comp
L GND #PWR013
U 1 1 5282DCBA
P 8200 5550
F 0 "#PWR013" H 8200 5550 30  0001 C CNN
F 1 "GND" H 8200 5480 30  0001 C CNN
F 2 "" H 8200 5550 60  0000 C CNN
F 3 "" H 8200 5550 60  0000 C CNN
	1    8200 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 5550 8200 5650
$Comp
L DCIN J5
U 1 1 5282DFCA
P 9050 6000
F 0 "J5" H 9000 5800 60  0000 C CNN
F 1 "DCIN" H 9050 6200 60  0000 C CNN
F 2 "~" H 9050 6000 60  0000 C CNN
F 3 "~" H 9050 6000 60  0000 C CNN
	1    9050 6000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 5282E09C
P 8700 5950
F 0 "#PWR014" H 8700 5950 30  0001 C CNN
F 1 "GND" H 8700 5880 30  0001 C CNN
F 2 "" H 8700 5950 60  0000 C CNN
F 3 "" H 8700 5950 60  0000 C CNN
	1    8700 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5950 8700 5950
Wire Notes Line
	7250 1100 7250 4850
Text Notes 7300 1050 0    100  ~ 0
RGB control (PSIs and eye)
$Comp
L 4PIN_FEMALE J3
U 1 1 5282F47A
P 8800 3600
F 0 "J3" H 8750 3900 60  0000 C CNN
F 1 "PSI_BACK" H 8800 3300 60  0000 C CNN
F 2 "~" H 8750 3500 60  0001 C CNN
F 3 "~" H 8750 3500 60  0001 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
Text Label 9650 1550 2    60   ~ 0
RED0
Text Label 9650 1650 2    60   ~ 0
GRN0
Text Label 9650 1750 2    60   ~ 0
BLU0
Text Label 9650 1850 2    60   ~ 0
RED1
Text Label 9650 1950 2    60   ~ 0
GRN1
Text Label 9650 2050 2    60   ~ 0
BLU1
Text Label 9650 2150 2    60   ~ 0
RED2
Text Label 9650 2250 2    60   ~ 0
GRN2
Text Label 9650 2350 2    60   ~ 0
BLU2
Text Label 9650 2450 2    60   ~ 0
RED3
Text Label 9650 2550 2    60   ~ 0
GRN3
Text Label 9650 2650 2    60   ~ 0
BLU3
Wire Wire Line
	9650 2650 9300 2650
Wire Wire Line
	9300 2550 9650 2550
Wire Wire Line
	9650 2450 9300 2450
Wire Wire Line
	9300 2350 9650 2350
Wire Wire Line
	9650 2250 9300 2250
Wire Wire Line
	9300 2150 9650 2150
Wire Wire Line
	9650 2050 9300 2050
Wire Wire Line
	9300 1950 9650 1950
Wire Wire Line
	9650 1850 9300 1850
Wire Wire Line
	9300 1750 9650 1750
Wire Wire Line
	9650 1650 9300 1650
Wire Wire Line
	9300 1550 9650 1550
Text Label 9200 3550 2    60   ~ 0
VLED
Text Label 9200 3450 2    60   ~ 0
RED1
Text Label 9200 3650 2    60   ~ 0
GRN1
Text Label 9200 3750 2    60   ~ 0
BLU1
Wire Wire Line
	9200 3750 8900 3750
Wire Wire Line
	9200 3650 8900 3650
Wire Wire Line
	9200 3550 8900 3550
Wire Wire Line
	9200 3450 8900 3450
$Comp
L 4PIN_FEMALE J1
U 1 1 528306CF
P 7950 3600
F 0 "J1" H 7900 3900 60  0000 C CNN
F 1 "PSI_FRONT" H 7950 3300 60  0000 C CNN
F 2 "~" H 7900 3500 60  0001 C CNN
F 3 "~" H 7900 3500 60  0001 C CNN
	1    7950 3600
	1    0    0    -1  
$EndComp
Text Label 8350 3550 2    60   ~ 0
VLED
Text Label 8350 3450 2    60   ~ 0
RED0
Text Label 8350 3650 2    60   ~ 0
GRN0
Text Label 8350 3750 2    60   ~ 0
BLU0
Wire Wire Line
	8350 3750 8050 3750
Wire Wire Line
	8350 3650 8050 3650
Wire Wire Line
	8350 3550 8050 3550
Wire Wire Line
	8350 3450 8050 3450
$Comp
L 4PIN_FEMALE J4
U 1 1 528308FE
P 8800 4400
F 0 "J4" H 8750 4700 60  0000 C CNN
F 1 "RGB_EXTRA" H 8800 4100 60  0000 C CNN
F 2 "~" H 8750 4300 60  0001 C CNN
F 3 "~" H 8750 4300 60  0001 C CNN
	1    8800 4400
	1    0    0    -1  
$EndComp
Text Label 9200 4350 2    60   ~ 0
VLED
Text Label 9200 4250 2    60   ~ 0
RED3
Text Label 9200 4450 2    60   ~ 0
GRN3
Text Label 9200 4550 2    60   ~ 0
BLU3
Wire Wire Line
	9200 4550 8900 4550
Wire Wire Line
	9200 4450 8900 4450
Wire Wire Line
	9200 4350 8900 4350
Wire Wire Line
	9200 4250 8900 4250
$Comp
L 4PIN_FEMALE J2
U 1 1 5283090C
P 7950 4400
F 0 "J2" H 7900 4700 60  0000 C CNN
F 1 "EYE_FRONT" H 7950 4100 60  0000 C CNN
F 2 "~" H 7900 4300 60  0001 C CNN
F 3 "~" H 7900 4300 60  0001 C CNN
	1    7950 4400
	1    0    0    -1  
$EndComp
Text Label 8350 4350 2    60   ~ 0
VLED
Text Label 8350 4250 2    60   ~ 0
RED2
Text Label 8350 4450 2    60   ~ 0
GRN2
Text Label 8350 4550 2    60   ~ 0
BLU2
Wire Wire Line
	8350 4550 8050 4550
Wire Wire Line
	8350 4450 8050 4450
Wire Wire Line
	8350 4350 8050 4350
Wire Wire Line
	8350 4250 8050 4250
Wire Notes Line
	7250 1100 9750 1100
Wire Notes Line
	9750 1100 9750 4850
Wire Notes Line
	9750 4850 7250 4850
Text Notes 7350 5350 0    100  ~ 0
power
Wire Notes Line
	7300 5400 7300 6500
Wire Notes Line
	7300 6500 9300 6500
Wire Notes Line
	9300 6500 9300 5400
Wire Notes Line
	9300 5400 7300 5400
Text Notes 1600 1100 0    100  ~ 0
microcontroller
Wire Notes Line
	1500 1150 1500 4650
Wire Notes Line
	1500 4650 5450 4650
Wire Notes Line
	5450 4650 5450 1150
Wire Notes Line
	5450 1150 1500 1150
Text Label 4300 5950 2    60   ~ 0
R7
Text Label 4300 6050 2    60   ~ 0
R6
Text Label 4300 6150 2    60   ~ 0
R5
Text Label 4300 6250 2    60   ~ 0
R4
Text Label 4300 6350 2    60   ~ 0
R3
Text Label 4300 6450 2    60   ~ 0
R2
Text Label 4300 6550 2    60   ~ 0
R1
Text Label 4300 6650 2    60   ~ 0
R0
Wire Wire Line
	4300 6650 3950 6650
Wire Wire Line
	4300 6550 3950 6550
Wire Wire Line
	3950 6450 4300 6450
Wire Wire Line
	4300 6350 3950 6350
Wire Wire Line
	3950 6250 4300 6250
Wire Wire Line
	4300 6150 3950 6150
Wire Wire Line
	3950 6050 4300 6050
Wire Wire Line
	4300 5950 3950 5950
Text Label 2300 6050 0    60   ~ 0
C5
Text Label 2300 6150 0    60   ~ 0
C4
Text Label 2300 6250 0    60   ~ 0
C3
Text Label 2300 6350 0    60   ~ 0
C2
Text Label 2300 6450 0    60   ~ 0
C1
Text Label 2300 6550 0    60   ~ 0
C0
Wire Wire Line
	2300 6350 2650 6350
Wire Wire Line
	2300 6450 2650 6450
Wire Wire Line
	2300 6550 2650 6550
Wire Wire Line
	2300 6250 2650 6250
Wire Wire Line
	2300 6150 2650 6150
Wire Wire Line
	2650 6050 2300 6050
Text Notes 2200 5550 0    100  ~ 0
front led panel
Wire Notes Line
	2150 5600 2150 7000
Wire Notes Line
	2150 7000 4450 7000
Wire Notes Line
	4450 7000 4450 5600
Wire Notes Line
	4450 5600 2150 5600
NoConn ~ 4850 1900
NoConn ~ 4850 2000
Connection ~ 8200 5850
$Comp
L C_POL C7
U 1 1 5282BC10
P 8200 5750
F 0 "C7" V 8250 5600 60  0000 C CNN
F 1 "0.1uF" V 8250 5350 60  0000 C CNN
F 2 "~" H 8200 5750 60  0001 C CNN
F 3 "~" H 8200 5750 60  0001 C CNN
	1    8200 5750
	0    -1   -1   0   
$EndComp
$Comp
L C_POL C8
U 1 1 5282BCA1
P 8200 6150
F 0 "C8" V 8250 6300 60  0000 C CNN
F 1 "0.33uF" V 8250 6550 60  0000 C CNN
F 2 "~" H 8200 6150 60  0001 C CNN
F 3 "~" H 8200 6150 60  0001 C CNN
	1    8200 6150
	0    1    1    0   
$EndComp
Text Label 5200 2300 2    60   ~ 0
R6
Text Label 5200 2400 2    60   ~ 0
R5
Text Label 5200 2500 2    60   ~ 0
R4
Text Label 5200 2600 2    60   ~ 0
R3
Text Label 5200 2700 2    60   ~ 0
R2
Text Label 5200 2850 2    60   ~ 0
R1
Text Label 5200 2950 2    60   ~ 0
R0
Text Label 2500 2750 0    60   ~ 0
C6
Wire Wire Line
	2500 2750 2850 2750
$Sheet
S 2650 5750 1300 1100
U 52828585
F0 "beer2d2 front LED panel" 50
F1 "beer2d2-front-pcb_leds.sch" 50
F2 "AVR_C0" I L 2650 6550 60 
F3 "AVR_R0" I R 3950 6650 60 
F4 "AVR_R1" I R 3950 6550 60 
F5 "AVR_R2" I R 3950 6450 60 
F6 "AVR_R3" I R 3950 6350 60 
F7 "AVR_R4" I R 3950 6250 60 
F8 "AVR_R5" I R 3950 6150 60 
F9 "AVR_R6" I R 3950 6050 60 
F10 "AVR_R7" I R 3950 5950 60 
F11 "AVR_C1" I L 2650 6450 60 
F12 "AVR_C2" I L 2650 6350 60 
F13 "AVR_C3" I L 2650 6250 60 
F14 "AVR_C4" I L 2650 6150 60 
F15 "AVR_C5" I L 2650 6050 60 
F16 "AVR_C6" I L 2650 5950 60 
$EndSheet
Text Label 7550 2900 0    60   ~ 0
VLED
$Comp
L VCC #PWR015
U 1 1 5282EC24
P 7950 2900
F 0 "#PWR015" H 7950 3000 30  0001 C CNN
F 1 "VCC" H 7950 3000 30  0000 C CNN
F 2 "" H 7950 2900 60  0000 C CNN
F 3 "" H 7950 2900 60  0000 C CNN
	1    7950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2900 7550 2900
$EndSCHEMATC

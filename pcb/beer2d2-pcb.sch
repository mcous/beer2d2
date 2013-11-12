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
LIBS:beer2d2-pcb-cache
EELAYER 27 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "beer2d2 (working title) head control"
Date "12 nov 2013"
Rev "0.1"
Comp "Wiley Cousins, LLC."
Comment1 "shared under the terms of the Creative Commons Attribution Share-Alike 3.0 license"
Comment2 "open source hardware"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P_TQFP IC?
U 1 1 528159C5
P 3000 2650
F 0 "IC?" H 2300 3800 60  0000 C CNN
F 1 "ATMEGA328P_TQFP" H 3350 1450 60  0000 C CNN
F 2 "~" H 3000 2650 60  0000 C CNN
F 3 "~" H 3000 2650 60  0000 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52817F13
P 1450 2550
F 0 "C?" H 850 2550 60  0000 C CNN
F 1 "1uF" H 1100 2550 60  0000 C CNN
F 2 "~" H 1450 2550 60  0001 C CNN
F 3 "~" H 1450 2550 60  0001 C CNN
	1    1450 2550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52817F22
P 1700 2250
F 0 "C?" H 850 2250 60  0000 C CNN
F 1 "1uF" H 1100 2250 60  0000 C CNN
F 2 "~" H 1700 2250 60  0001 C CNN
F 3 "~" H 1700 2250 60  0001 C CNN
	1    1700 2250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52817FB3
P 1450 2350
F 0 "C?" H 850 2350 60  0000 C CNN
F 1 "1uF" H 1100 2350 60  0000 C CNN
F 2 "~" H 1450 2350 60  0001 C CNN
F 3 "~" H 1450 2350 60  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52818008
P 1700 2650
F 0 "C?" H 850 2650 60  0000 C CNN
F 1 "1uF" H 1100 2650 60  0000 C CNN
F 2 "~" H 1700 2650 60  0001 C CNN
F 3 "~" H 1700 2650 60  0001 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 52818102
P 1800 2450
F 0 "#PWR?" H 1800 2550 30  0001 C CNN
F 1 "VCC" H 1800 2550 30  0000 C CNN
F 2 "" H 1800 2450 60  0000 C CNN
F 3 "" H 1800 2450 60  0000 C CNN
	1    1800 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 2250 1800 2250
Wire Wire Line
	2000 2350 1550 2350
Wire Wire Line
	1550 2550 2000 2550
Wire Wire Line
	1800 2650 2000 2650
Wire Wire Line
	1900 2450 1800 2450
Wire Wire Line
	1900 2250 1900 2650
Connection ~ 1900 2350
Connection ~ 1900 2250
Connection ~ 1900 2550
Connection ~ 1900 2450
Connection ~ 1900 2650
Wire Wire Line
	1250 2650 1600 2650
Wire Wire Line
	1250 2250 1600 2250
Wire Wire Line
	1350 2350 1250 2350
Connection ~ 1250 2350
Wire Wire Line
	1350 2550 1250 2550
Connection ~ 1250 2550
$Comp
L GND #PWR?
U 1 1 528181C0
P 1250 2150
F 0 "#PWR?" H 1250 2150 30  0001 C CNN
F 1 "GND" H 1250 2080 30  0001 C CNN
F 2 "" H 1250 2150 60  0000 C CNN
F 3 "" H 1250 2150 60  0000 C CNN
	1    1250 2150
	-1   0    0    1   
$EndComp
Connection ~ 1250 2250
Wire Wire Line
	1250 2150 1250 2650
$Comp
L GND #PWR?
U 1 1 5281821E
P 1800 1950
F 0 "#PWR?" H 1800 1950 30  0001 C CNN
F 1 "GND" H 1800 1880 30  0001 C CNN
F 2 "" H 1800 1950 60  0000 C CNN
F 3 "" H 1800 1950 60  0000 C CNN
	1    1800 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 1950 2000 1950
Wire Wire Line
	1900 1850 1900 2050
Wire Wire Line
	1900 1850 2000 1850
Wire Wire Line
	1900 2050 2000 2050
Connection ~ 1900 1950
Text Label 1550 1650 0    60   ~ 0
AVR_RST
Wire Wire Line
	1550 1650 2000 1650
Text Label 1650 2950 0    60   ~ 0
COL6
Text Label 1650 3150 0    60   ~ 0
COL5
Text Label 1650 3250 0    60   ~ 0
COL4
Text Label 1650 3350 0    60   ~ 0
COL3
Text Label 1650 3450 0    60   ~ 0
COL2
Text Label 1650 3550 0    60   ~ 0
COL1
Text Label 1650 3650 0    60   ~ 0
COL0
Wire Wire Line
	1650 2950 2000 2950
Wire Wire Line
	1650 3150 2000 3150
Wire Wire Line
	1650 3250 2000 3250
Wire Wire Line
	1650 3350 2000 3350
Wire Wire Line
	1650 3450 2000 3450
Wire Wire Line
	1650 3550 2000 3550
Wire Wire Line
	1650 3650 2000 3650
Text Label 4350 2400 2    60   ~ 0
ROW7
Text Label 4350 2500 2    60   ~ 0
ROW6
Text Label 4350 2600 2    60   ~ 0
ROW5
Text Label 4350 2700 2    60   ~ 0
ROW4
Text Label 4350 2800 2    60   ~ 0
ROW3
Text Label 4350 2900 2    60   ~ 0
ROW2
Text Label 4350 3050 2    60   ~ 0
ROW1
Text Label 4350 3150 2    60   ~ 0
ROW0
Wire Wire Line
	4350 3150 4000 3150
Wire Wire Line
	4350 3050 4000 3050
Wire Wire Line
	4000 2900 4350 2900
Wire Wire Line
	4350 2800 4000 2800
Wire Wire Line
	4000 2700 4350 2700
Wire Wire Line
	4350 2600 4000 2600
Wire Wire Line
	4000 2500 4350 2500
Wire Wire Line
	4350 2400 4000 2400
NoConn ~ 4000 3550
NoConn ~ 4000 3650
Text Label 4350 2000 2    60   ~ 0
RED0
Text Label 4350 2200 2    60   ~ 0
BLU0
Text Label 4350 1900 2    60   ~ 0
BLU1
Text Label 4350 1650 2    60   ~ 0
RED1
Text Label 4350 1750 2    60   ~ 0
GRN1
Text Label 4350 2100 2    60   ~ 0
GRN0
Wire Wire Line
	4350 2200 4000 2200
Wire Wire Line
	4350 2100 4000 2100
Wire Wire Line
	4350 2000 4000 2000
Wire Wire Line
	4350 1900 4000 1900
Wire Wire Line
	4350 1750 4000 1750
Wire Wire Line
	4350 1650 4000 1650
$EndSCHEMATC

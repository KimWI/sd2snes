EESchema Schematic File Version 2  date Sat 27 Mar 2010 11:02:39 PM CET
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:snescart
LIBS:misc-74
LIBS:vreg
LIBS:lpc1754
LIBS:sdcard
LIBS:sd_card
LIBS:cy62148ev30
LIBS:mt45w8mw16
LIBS:cs4344
LIBS:sd2snes-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 4 6
Title "sd2snes Mark II"
Date "27 mar 2010"
Rev "A"
Comp "Maximilian Rehkopf"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	10700 3000 10700 2900
Wire Wire Line
	10700 5700 10700 5600
Wire Wire Line
	8050 6450 8050 6200
Wire Wire Line
	8800 3350 9150 3350
Wire Wire Line
	8800 2650 9150 2650
Wire Wire Line
	7350 3050 7000 3050
Wire Wire Line
	7000 2250 7000 2350
Wire Wire Line
	7000 2350 7350 2350
Connection ~ 3500 4650
Connection ~ 1600 4650
Wire Wire Line
	1600 4650 1600 4800
Connection ~ 1600 6250
Wire Wire Line
	1600 6400 1600 6250
Wire Wire Line
	3500 6800 3500 6950
Connection ~ 3500 3200
Wire Wire Line
	3500 3250 3500 3200
Wire Wire Line
	3500 3650 3500 3750
Connection ~ 1600 3200
Wire Wire Line
	1600 3650 1600 3750
Wire Wire Line
	1600 3250 1600 3200
Wire Wire Line
	3500 2100 3500 2200
Connection ~ 1600 1650
Wire Wire Line
	1600 1700 1600 1650
Wire Wire Line
	3950 6050 3950 6250
Wire Wire Line
	3950 6250 3250 6250
Wire Wire Line
	1850 6250 1150 6250
Wire Wire Line
	1150 6250 1150 6050
Connection ~ 1750 4650
Wire Wire Line
	1750 4650 1750 4850
Wire Wire Line
	1750 4850 1850 4850
Wire Wire Line
	3950 2950 3950 3200
Wire Wire Line
	3950 3200 3200 3200
Wire Wire Line
	3950 1450 3950 1650
Wire Wire Line
	3950 1650 3200 1650
Wire Wire Line
	1150 1450 1150 1650
Wire Wire Line
	1150 1650 1900 1650
Wire Wire Line
	1150 2950 1150 3200
Wire Wire Line
	1150 3200 1900 3200
Wire Wire Line
	1150 4450 1150 4650
Wire Wire Line
	1150 4650 1850 4650
Wire Wire Line
	3250 4650 3950 4650
Wire Wire Line
	3950 4650 3950 4450
Wire Wire Line
	1850 6450 1750 6450
Wire Wire Line
	1750 6450 1750 6250
Connection ~ 1750 6250
Wire Wire Line
	3500 1700 3500 1650
Connection ~ 3500 1650
Wire Wire Line
	1600 2100 1600 2200
Wire Wire Line
	1600 6800 1600 6950
Wire Wire Line
	3500 6400 3500 6250
Connection ~ 3500 6250
Wire Wire Line
	1600 5200 1600 5350
Wire Wire Line
	3500 4800 3500 4650
Wire Wire Line
	3500 5200 3500 5350
Wire Wire Line
	8800 2350 9150 2350
Wire Wire Line
	9150 2350 9150 2450
Wire Wire Line
	7350 2650 7000 2650
Wire Wire Line
	7350 3350 7000 3350
Wire Wire Line
	8800 3050 9150 3050
Wire Wire Line
	8050 4900 8050 4700
Wire Wire Line
	10700 6200 10700 6100
Wire Wire Line
	10700 3500 10700 3400
$Comp
L GND #PWR010
U 1 1 4BADC749
P 10700 6200
F 0 "#PWR010" H 10700 6200 30  0001 C CNN
F 1 "GND" H 10700 6130 30  0001 C CNN
	1    10700 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4BADC745
P 10700 3500
F 0 "#PWR011" H 10700 3500 30  0001 C CNN
F 1 "GND" H 10700 3430 30  0001 C CNN
	1    10700 3500
	1    0    0    -1  
$EndComp
$Comp
L C C33
U 1 1 4BADC720
P 10700 5900
F 0 "C33" H 10750 6000 50  0000 L CNN
F 1 "100n" H 10750 5800 50  0000 L CNN
	1    10700 5900
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 4BADC719
P 10700 3200
F 0 "C32" H 10750 3300 50  0000 L CNN
F 1 "100n" H 10750 3100 50  0000 L CNN
	1    10700 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 4BADC711
P 10700 5600
F 0 "#PWR012" H 10700 5560 30  0001 C CNN
F 1 "+3.3V" H 10700 5710 30  0000 C CNN
	1    10700 5600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 4BADC709
P 10700 2900
F 0 "#PWR013" H 10700 2990 20  0001 C CNN
F 1 "+5V" H 10700 2990 30  0000 C CNN
	1    10700 2900
	1    0    0    -1  
$EndComp
Text GLabel 9150 3350 2    60   Input ~ 0
CIC_RESET
Text GLabel 9150 3050 2    60   Input ~ 0
CIC_DATA1
Text GLabel 9150 2650 2    60   Input ~ 0
CIC_DATA0
Text GLabel 7000 3350 0    60   Input ~ 0
CIC_MCLR
Text GLabel 7000 3050 0    60   Input ~ 0
CIC_STATUS
Text GLabel 7000 2650 0    60   Input ~ 0
CIC_CLK
$Comp
L GND #PWR014
U 1 1 4BAD0CFA
P 8050 6450
F 0 "#PWR014" H 8050 6450 30  0001 C CNN
F 1 "GND" H 8050 6380 30  0001 C CNN
	1    8050 6450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 4BAD0CEA
P 8050 4700
F 0 "#PWR015" H 8050 4660 30  0001 C CNN
F 1 "+3.3V" H 8050 4810 30  0000 C CNN
	1    8050 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4BAD0C41
P 9150 2450
F 0 "#PWR016" H 9150 2450 30  0001 C CNN
F 1 "GND" H 9150 2380 30  0001 C CNN
	1    9150 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4BABCB69
P 3500 5350
F 0 "#PWR017" H 3500 5350 30  0001 C CNN
F 1 "GND" H 3500 5280 30  0001 C CNN
	1    3500 5350
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4BABCB68
P 3500 5000
F 0 "C7" H 3550 5100 50  0000 L CNN
F 1 "4.7u" H 3550 4900 50  0000 L CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4BABCB5C
P 1600 5000
F 0 "C3" H 1650 5100 50  0000 L CNN
F 1 "4.7u" H 1650 4900 50  0000 L CNN
	1    1600 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4BABCB5B
P 1600 5350
F 0 "#PWR018" H 1600 5350 30  0001 C CNN
F 1 "GND" H 1600 5280 30  0001 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 4BABCAF4
P 1600 6950
F 0 "#PWR019" H 1600 6950 30  0001 C CNN
F 1 "GND" H 1600 6880 30  0001 C CNN
	1    1600 6950
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 4BABCAD2
P 3500 6600
F 0 "C8" H 3550 6700 50  0000 L CNN
F 1 "4.7u" H 3550 6500 50  0000 L CNN
	1    3500 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 4BABCA9D
P 3500 6950
F 0 "#PWR020" H 3500 6950 30  0001 C CNN
F 1 "GND" H 3500 6880 30  0001 C CNN
	1    3500 6950
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4BABCA9C
P 1600 6600
F 0 "C4" H 1650 6700 50  0000 L CNN
F 1 "4.7u" H 1650 6500 50  0000 L CNN
	1    1600 6600
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 4BABC94E
P 3500 3450
F 0 "C6" H 3550 3550 50  0000 L CNN
F 1 "100u" H 3550 3350 50  0000 L CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 4BABC94D
P 3500 3750
F 0 "#PWR021" H 3500 3750 30  0001 C CNN
F 1 "GND" H 3500 3680 30  0001 C CNN
	1    3500 3750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4BABC93A
P 1600 3450
F 0 "C2" H 1650 3550 50  0000 L CNN
F 1 "10u" H 1650 3350 50  0000 L CNN
	1    1600 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 4BABC939
P 1600 3750
F 0 "#PWR022" H 1600 3750 30  0001 C CNN
F 1 "GND" H 1600 3680 30  0001 C CNN
	1    1600 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 4BABC8F2
P 3500 2200
F 0 "#PWR023" H 3500 2200 30  0001 C CNN
F 1 "GND" H 3500 2130 30  0001 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 4BABC8EF
P 1600 2200
F 0 "#PWR024" H 1600 2200 30  0001 C CNN
F 1 "GND" H 1600 2130 30  0001 C CNN
	1    1600 2200
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 4BABC8DF
P 3500 1900
F 0 "C5" H 3550 2000 50  0000 L CNN
F 1 "100u" H 3550 1800 50  0000 L CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4BABC8D1
P 1600 1900
F 0 "C1" H 1650 2000 50  0000 L CNN
F 1 "10u" H 1650 1800 50  0000 L CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
Text Notes 2250 750  0    60   ~ 0
Power Supply
Text Notes 7800 4350 0    60   ~ 0
Audio DAC
Text Notes 7850 1750 0    60   ~ 0
CIC Clone
$Comp
L +5V #PWR025
U 1 1 4BABC073
P 7000 2250
F 0 "#PWR025" H 7000 2340 20  0001 C CNN
F 1 "+5V" H 7000 2340 30  0000 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
$Comp
L CS4344 U14
U 1 1 4BAA9331
P 8050 5550
F 0 "U14" H 7700 5950 60  0000 C CNN
F 1 "CS4344" H 8250 5150 60  0000 C CNN
	1    8050 5550
	1    0    0    -1  
$EndComp
$Comp
L PIC12F629 U15
U 1 1 4BAA92DB
P 8100 2850
F 0 "U15" H 8050 2850 60  0000 C CNN
F 1 "PIC12F629" H 8100 3600 60  0000 C CNN
	1    8100 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 4B6ED41C
P 2550 6950
F 0 "#PWR026" H 2550 6950 30  0001 C CNN
F 1 "GND" H 2550 6880 30  0001 C CNN
	1    2550 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 4B6ED418
P 2550 5350
F 0 "#PWR027" H 2550 5350 30  0001 C CNN
F 1 "GND" H 2550 5280 30  0001 C CNN
	1    2550 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 4B6ED414
P 2550 3750
F 0 "#PWR028" H 2550 3750 30  0001 C CNN
F 1 "GND" H 2550 3680 30  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 4B6ED410
P 2550 2200
F 0 "#PWR029" H 2550 2200 30  0001 C CNN
F 1 "GND" H 2550 2130 30  0001 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 4B6ED26C
P 1150 6050
F 0 "#PWR030" H 1150 6010 30  0001 C CNN
F 1 "+3.3V" H 1150 6160 30  0000 C CNN
	1    1150 6050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR031
U 1 1 4B6ED268
P 1150 4450
F 0 "#PWR031" H 1150 4410 30  0001 C CNN
F 1 "+3.3V" H 1150 4560 30  0000 C CNN
	1    1150 4450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR032
U 1 1 4B6ED264
P 1150 2950
F 0 "#PWR032" H 1150 2910 30  0001 C CNN
F 1 "+3.3V" H 1150 3060 30  0000 C CNN
	1    1150 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR033
U 1 1 4B6ED25F
P 3950 1450
F 0 "#PWR033" H 3950 1410 30  0001 C CNN
F 1 "+3.3V" H 3950 1560 30  0000 C CNN
	1    3950 1450
	1    0    0    -1  
$EndComp
$Comp
L +2.5V #PWR034
U 1 1 4B6ED246
P 3950 6050
F 0 "#PWR034" H 3950 6000 20  0001 C CNN
F 1 "+2.5V" H 3950 6150 30  0000 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
$Comp
L +1.8V #PWR035
U 1 1 4B6ED23A
P 3950 4450
F 0 "#PWR035" H 3950 4590 20  0001 C CNN
F 1 "+1.8V" H 3950 4560 30  0000 C CNN
	1    3950 4450
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR036
U 1 1 4B6ED22A
P 3950 2950
F 0 "#PWR036" H 3950 3090 20  0001 C CNN
F 1 "+1.2V" H 3950 3060 30  0000 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR037
U 1 1 4B6ED1A9
P 1150 1450
F 0 "#PWR037" H 1150 1540 20  0001 C CNN
F 1 "+5V" H 1150 1540 30  0000 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
$Comp
L MCP1824-SOT23-Fixed U9
U 1 1 4B6ED144
P 2550 4750
F 0 "U9" H 2550 4750 60  0000 C CNN
F 1 "MCP1824-1.8" H 2550 4950 60  0000 C CNN
	1    2550 4750
	1    0    0    -1  
$EndComp
$Comp
L MCP1824-SOT23-Fixed U10
U 1 1 4B6ED134
P 2550 6350
F 0 "U10" H 2550 6350 60  0000 C CNN
F 1 "MCP1824-2.5" H 2550 6550 60  0000 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
$Comp
L LT1117 U8
U 1 1 4B6ECEEA
P 2550 3200
F 0 "U8" H 2550 3200 60  0000 C CNN
F 1 "LT1117-1.2" H 2550 3350 60  0000 C CNN
	1    2550 3200
	1    0    0    -1  
$EndComp
$Comp
L LT1117 U7
U 1 1 4B6ECEE5
P 2550 1650
F 0 "U7" H 2550 1650 60  0000 C CNN
F 1 "LT1117-3.3" H 2550 1800 60  0000 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
$EndSCHEMATC

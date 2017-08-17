EESchema Schematic File Version 2
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
LIBS:clock_2-cache
EELAYER 25 0
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
L CONN_01X03 J1
U 1 1 59889F63
P 3650 2400
F 0 "J1" H 3650 2600 50  0000 C CNN
F 1 "VCC_DATA_GND" V 3750 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3650 2400 50  0001 C CNN
F 3 "" H 3650 2400 50  0001 C CNN
	1    3650 2400
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 5989854E
P 3650 4600
F 0 "J2" H 3650 4800 50  0000 C CNN
F 1 "VCC_DATA_GND" V 3750 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3650 4600 50  0001 C CNN
F 3 "" H 3650 4600 50  0001 C CNN
	1    3650 4600
	0    -1   1    0   
$EndComp
$Comp
L WS2812B LED1
U 1 1 599478F1
P 3650 3300
F 0 "LED1" H 3650 2900 60  0000 C CNN
F 1 "WS2812B" H 3650 3700 60  0000 C CNN
F 2 "WS2812B:WS2812B" V 3600 3300 60  0001 C CNN
F 3 "" V 3600 3300 60  0000 C CNN
	1    3650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4950 3250 4950
Wire Wire Line
	3250 4950 3250 4300
Wire Wire Line
	3250 4300 3550 4300
Wire Wire Line
	3550 3850 3550 4400
Wire Wire Line
	3800 4950 4050 4950
Wire Wire Line
	4050 4950 4050 4300
Wire Wire Line
	4050 4300 3750 4300
Wire Wire Line
	3750 3850 3750 4400
Wire Wire Line
	3650 2600 3650 2800
Wire Wire Line
	3650 2800 4200 2800
Wire Wire Line
	4200 2800 4200 3100
Wire Wire Line
	4200 3100 4150 3100
Wire Wire Line
	3150 3100 3150 2800
Wire Wire Line
	3150 2800 3550 2800
Wire Wire Line
	3550 2800 3550 2600
Wire Wire Line
	3750 2600 3750 2750
Wire Wire Line
	3750 2750 4250 2750
Wire Wire Line
	4250 2750 4250 3850
Wire Wire Line
	4250 3500 4150 3500
Wire Wire Line
	3150 3500 3150 3800
Wire Wire Line
	3150 3800 3650 3800
Wire Wire Line
	3650 3800 3650 4400
Wire Wire Line
	4250 3850 3750 3850
Connection ~ 4250 3500
Connection ~ 3750 4300
Wire Wire Line
	3550 3850 3000 3850
Wire Wire Line
	3000 3850 3000 3100
Wire Wire Line
	3000 3100 3150 3100
Connection ~ 3550 4300
$EndSCHEMATC

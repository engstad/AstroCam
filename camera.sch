EESchema Schematic File Version 2
LIBS:AstroCam-rescue
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
LIBS:camera
LIBS:AstroCam-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L ICX825AQA U10
U 1 1 557B0BF2
P 7750 2900
F 0 "U10" H 7350 3700 60  0000 C CNN
F 1 "ICX825AQA" H 7750 2900 60  0000 C CNN
F 2 "camera:ICX825" H 7750 2900 60  0001 C CNN
F 3 "" H 7750 2900 60  0000 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
Text Label 8400 3050 0    60   ~ 0
GND
Text Label 8400 3150 0    60   ~ 0
GND
Text Label 8400 3250 0    60   ~ 0
GND
Text Label 8400 3350 0    60   ~ 0
GND
Text Label 8400 3450 0    60   ~ 0
GND
Text Label 7850 1950 1    60   ~ 0
GND
Text Label 2350 1000 0    60   ~ 0
12V
Text Label 8400 2800 0    60   ~ 0
SUB
Text Label 7600 3800 3    60   ~ 0
VT1
Text Label 7700 3800 3    60   ~ 0
VT2
Text Label 7800 3800 3    60   ~ 0
VT3
Text Label 7900 3800 3    60   ~ 0
VT4
Wire Wire Line
	8400 2900 9200 2900
$Comp
L CP1_Small C37
U 1 1 557B16E0
P 9000 3100
F 0 "C37" H 9010 3170 50  0000 L CNN
F 1 "3.3/20V" H 9010 3020 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 9000 3100 60  0001 C CNN
F 3 "" H 9000 3100 60  0000 C CNN
	1    9000 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 2900 9000 3000
Wire Wire Line
	9000 3200 9000 3300
Text Label 9000 3300 3    60   ~ 0
GND
Connection ~ 9000 2900
Text Label 9200 2900 0    60   ~ 0
-7V
Text HLabel 6550 2300 0    60   Input ~ 0
RG_A
Text HLabel 6550 3000 0    60   Input ~ 0
RG_B
Wire Wire Line
	6550 2300 6700 2300
$Comp
L C_Small C31
U 1 1 557B19FB
P 6800 2300
F 0 "C31" H 6810 2370 50  0000 L CNN
F 1 "0.1" H 6810 2220 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6800 2300 60  0001 C CNN
F 3 "" H 6800 2300 60  0000 C CNN
	1    6800 2300
	0    1    1    0   
$EndComp
$Comp
L C_Small C32
U 1 1 557B1A55
P 6800 3000
F 0 "C32" H 6810 3070 50  0000 L CNN
F 1 "0.1" H 6810 2920 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6800 3000 60  0001 C CNN
F 3 "" H 6800 3000 60  0000 C CNN
	1    6800 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3000 6700 3000
Wire Wire Line
	6900 3000 7050 3000
Wire Wire Line
	6900 2300 7050 2300
Text HLabel 6550 2400 0    60   Input ~ 0
LH1_1
Text HLabel 6550 2500 0    60   Input ~ 0
H1S_1
Text HLabel 6550 2600 0    60   Input ~ 0
H1T_1
Text HLabel 6550 2700 0    60   Input ~ 0
H2S_1
Text HLabel 6550 2800 0    60   Input ~ 0
H2T_1
Wire Wire Line
	6550 2400 7050 2400
Wire Wire Line
	6550 2500 7050 2500
Wire Wire Line
	6550 2600 7050 2600
Wire Wire Line
	6550 2700 7050 2700
Wire Wire Line
	6550 2800 7050 2800
Text HLabel 6550 3100 0    60   Input ~ 0
LH1_2
Text HLabel 6550 3200 0    60   Input ~ 0
H1S_2
Text HLabel 6550 3300 0    60   Input ~ 0
H1T_2
Text HLabel 6550 3400 0    60   Input ~ 0
H2S_2
Text HLabel 6550 3500 0    60   Input ~ 0
H2T_2
Wire Wire Line
	6550 3100 7050 3100
Wire Wire Line
	6550 3200 7050 3200
Wire Wire Line
	6550 3300 7050 3300
Wire Wire Line
	6550 3400 7050 3400
Wire Wire Line
	6550 3500 7050 3500
Wire Wire Line
	7600 1550 7600 1950
Wire Wire Line
	6900 1550 7600 1550
Text Label 6900 1550 2    60   ~ 0
12V
$Comp
L C_Small C33
U 1 1 557B1E47
P 7050 1750
F 0 "C33" H 7060 1820 50  0000 L CNN
F 1 "0.01" H 7060 1670 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 7050 1750 60  0001 C CNN
F 3 "" H 7050 1750 60  0000 C CNN
	1    7050 1750
	-1   0    0    1   
$EndComp
$Comp
L CP1_Small C34
U 1 1 557B1EB1
P 7250 1750
F 0 "C34" H 7260 1820 50  0000 L CNN
F 1 "3.3/20V" H 7260 1670 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 7250 1750 60  0001 C CNN
F 3 "" H 7250 1750 60  0000 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1550 7050 1650
Connection ~ 7050 1550
Wire Wire Line
	7250 1550 7250 1650
Connection ~ 7250 1550
Wire Wire Line
	7050 1850 7050 1900
Wire Wire Line
	7050 1900 7250 1900
Wire Wire Line
	7250 1900 7250 1850
Wire Wire Line
	7150 1900 7150 1950
Connection ~ 7150 1900
Text Label 7150 1950 3    60   ~ 0
GND
Wire Wire Line
	7700 1950 7700 1550
Wire Wire Line
	7700 1550 8400 1550
Text Label 8400 1550 0    60   ~ 0
12V
$Comp
L CP1_Small C36
U 1 1 557B2356
P 8200 1750
F 0 "C36" H 8210 1820 50  0000 L CNN
F 1 "3.3/20V" H 8210 1670 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 8200 1750 60  0001 C CNN
F 3 "" H 8200 1750 60  0000 C CNN
	1    8200 1750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C35
U 1 1 557B23B2
P 8000 1750
F 0 "C35" H 8010 1820 50  0000 L CNN
F 1 "0.01" H 8010 1670 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 8000 1750 60  0001 C CNN
F 3 "" H 8000 1750 60  0000 C CNN
	1    8000 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 1550 8000 1650
Connection ~ 8000 1550
Wire Wire Line
	8200 1550 8200 1650
Connection ~ 8200 1550
Wire Wire Line
	8000 1850 8000 1900
Wire Wire Line
	8000 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1850
Wire Wire Line
	8100 1900 8100 1950
Connection ~ 8100 1900
Text Label 8100 1950 3    60   ~ 0
GND
Wire Wire Line
	8400 2400 9200 2400
Text HLabel 9200 2400 2    60   Input ~ 0
CCD_OUT1
Text HLabel 9200 2550 2    60   Input ~ 0
CCD_OUT2
Wire Wire Line
	9200 2550 8400 2550
Wire Wire Line
	2700 1000 2250 1000
Text HLabel 2250 1000 0    60   Input ~ 0
12V
Text HLabel 2250 1350 0    60   Input ~ 0
-7V
Text HLabel 2250 1700 0    60   Input ~ 0
GND
Wire Wire Line
	2250 1350 2700 1350
Wire Wire Line
	2250 1700 2700 1700
Text Label 2300 1350 0    60   ~ 0
-7V
Text Label 2300 1700 0    60   ~ 0
GND
Text HLabel 3250 1000 0    60   Input ~ 0
5V0
Wire Wire Line
	3250 1000 3600 1000
Text Label 3600 1000 0    60   ~ 0
5V0
Text HLabel 1600 4050 0    60   Input ~ 0
XV4
Text HLabel 1600 3950 0    60   Input ~ 0
XV1
Text HLabel 1600 3850 0    60   Input ~ 0
XSGV3
Text HLabel 1600 3650 0    60   Input ~ 0
XV3
Wire Wire Line
	1600 3550 2700 3550
Text HLabel 1600 3550 0    60   Input ~ 0
XSGV2
Text HLabel 1600 3350 0    60   Input ~ 0
XV2
Text HLabel 1600 3150 0    60   Input ~ 0
XSHT
Wire Wire Line
	1600 3650 2700 3650
Connection ~ 5200 3150
Wire Wire Line
	5200 3150 5200 3250
Text Label 5350 3150 0    60   ~ 0
SUB
Connection ~ 4850 3550
Wire Wire Line
	5200 3550 5200 3450
Connection ~ 4850 3150
Wire Wire Line
	4850 3250 4850 3150
$Comp
L R_Small R19
U 1 1 557B140C
P 5200 3350
F 0 "R19" H 5230 3370 50  0000 L CNN
F 1 "1M0" H 5230 3310 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 5200 3350 60  0001 C CNN
F 3 "" H 5200 3350 60  0000 C CNN
	1    5200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3550 5200 3550
Wire Wire Line
	4850 3450 4850 3550
$Comp
L C_Small C30
U 1 1 557B1390
P 4850 3350
F 0 "C30" H 4860 3420 50  0000 L CNN
F 1 "2.2uF" H 4860 3270 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 4850 3350 60  0001 C CNN
F 3 "" H 4850 3350 60  0000 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3150 5350 3150
$Comp
L C_Small C29
U 1 1 557B1301
P 4650 3150
F 0 "C29" H 4660 3220 50  0000 L CNN
F 1 "0.1uF" H 4660 3070 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 4650 3150 60  0001 C CNN
F 3 "" H 4650 3150 60  0000 C CNN
	1    4650 3150
	0    -1   -1   0   
$EndComp
Text Label 3900 4050 0    60   ~ 0
VT4
Text Label 3900 3950 0    60   ~ 0
VT1
Text Label 3900 3750 0    60   ~ 0
VT3
NoConn ~ 3900 3650
Text Label 3900 3450 0    60   ~ 0
VT2
Text Label 4500 3550 0    60   ~ 0
GND
Wire Wire Line
	4350 3450 4350 3550
$Comp
L R_Small R18
U 1 1 557B11DC
P 4350 3350
F 0 "R18" H 4380 3370 50  0000 L CNN
F 1 "100k" H 4380 3310 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 4350 3350 60  0001 C CNN
F 3 "" H 4350 3350 60  0000 C CNN
	1    4350 3350
	1    0    0    -1  
$EndComp
Connection ~ 4350 3150
Text Label 4350 2750 0    60   ~ 0
12V
Wire Wire Line
	4350 2850 4350 2750
Wire Wire Line
	4350 3050 4350 3250
$Comp
L D_Small D2
U 1 1 557B1121
P 4350 2950
F 0 "D2" H 4300 3030 50  0000 L CNN
F 1 "D" H 4200 2870 50  0000 L CNN
F 2 "w_smd_diode:sod123" V 4350 2950 60  0001 C CNN
F 3 "" V 4350 2950 60  0000 C CNN
	1    4350 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3150 4550 3150
Wire Wire Line
	3900 3150 4000 3150
$Comp
L CP1_Small C28
U 1 1 557B105F
P 4100 3150
F 0 "C28" H 4110 3220 50  0000 L CNN
F 1 "1/35V" H 4110 3070 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 4100 3150 60  0001 C CNN
F 3 "" H 4100 3150 60  0000 C CNN
	1    4100 3150
	0    1    1    0   
$EndComp
Connection ~ 2600 5100
Wire Wire Line
	2600 5050 2600 5100
Connection ~ 2600 4750
Wire Wire Line
	3300 5100 3300 4750
Wire Wire Line
	2350 5100 3300 5100
$Comp
L C_Small C27
U 1 1 557B0EEE
P 2600 4950
F 0 "C27" H 2610 5020 50  0000 L CNN
F 1 "0.1u" H 2610 4870 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2600 4950 60  0001 C CNN
F 3 "" H 2600 4950 60  0000 C CNN
	1    2600 4950
	-1   0    0    1   
$EndComp
Text Label 2200 4750 2    60   ~ 0
12V
Wire Wire Line
	2600 4750 2200 4750
Wire Wire Line
	2600 4500 2600 4850
Wire Wire Line
	2700 4500 2600 4500
Wire Wire Line
	2350 4600 2350 5100
Connection ~ 2350 4350
Wire Wire Line
	2350 4350 2350 4400
$Comp
L C_Small C26
U 1 1 557B0E82
P 2350 4500
F 0 "C26" H 2360 4570 50  0000 L CNN
F 1 "0.1u" H 2360 4420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2350 4500 60  0001 C CNN
F 3 "" H 2350 4500 60  0000 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
Text Label 2250 4350 2    60   ~ 0
-7V
Wire Wire Line
	2250 4350 2700 4350
Wire Wire Line
	1600 3850 2700 3850
Wire Wire Line
	1600 3950 2700 3950
Wire Wire Line
	1600 4050 2700 4050
Wire Wire Line
	1600 3150 2700 3150
Wire Wire Line
	1600 3350 2700 3350
Text Label 2700 3750 2    60   ~ 0
GND
Text Label 2700 3450 2    60   ~ 0
GND
NoConn ~ 3900 3350
Text Label 3300 2900 1    60   ~ 0
5V0
Text Label 2900 5100 0    60   ~ 0
GND
$Comp
L CXD3400N U9
U 1 1 557B0C28
P 3300 3850
F 0 "U9" H 2850 4700 50  0000 L CNN
F 1 "CXD3400N" H 3450 3050 50  0000 L CNN
F 2 "w_smd_dil:tssop-20" H 3300 3850 60  0001 C CNN
F 3 "" H 3300 3850 60  0000 C CNN
	1    3300 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC

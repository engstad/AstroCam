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
Sheet 3 4
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
L ICX825AQA U11
U 1 1 557B0BF2
P 7750 2900
F 0 "U11" H 7350 3700 60  0000 C CNN
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
$Comp
L CXD3400N U10
U 1 1 557B0C28
P 3300 2950
F 0 "U10" H 2850 3800 50  0000 L CNN
F 1 "CXD3400N" H 3450 2150 50  0000 L CNN
F 2 "w_smd_dil:tssop-20" H 3300 2950 60  0001 C CNN
F 3 "" H 3300 2950 60  0000 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
Text Label 2900 4200 0    60   ~ 0
GND
Text Label 3300 2000 1    60   ~ 0
5V0
Text Label 2350 1000 0    60   ~ 0
12V
NoConn ~ 3900 2450
Text Label 2700 2550 2    60   ~ 0
GND
Text Label 2700 2850 2    60   ~ 0
GND
Wire Wire Line
	1600 2450 2700 2450
Wire Wire Line
	1600 2250 2700 2250
Wire Wire Line
	1600 3150 2700 3150
Wire Wire Line
	1600 3050 2700 3050
Wire Wire Line
	1600 2950 2700 2950
Wire Wire Line
	2250 3450 2700 3450
Text Label 2250 3450 2    60   ~ 0
-7V
$Comp
L C_Small C36
U 1 1 557B0E82
P 2350 3600
F 0 "C36" H 2360 3670 50  0000 L CNN
F 1 "0.1u" H 2360 3520 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2350 3600 60  0001 C CNN
F 3 "" H 2350 3600 60  0000 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3450 2350 3500
Connection ~ 2350 3450
Wire Wire Line
	2350 3700 2350 4200
Wire Wire Line
	2700 3600 2600 3600
Wire Wire Line
	2600 3600 2600 3950
Wire Wire Line
	2600 3850 2200 3850
Text Label 2200 3850 2    60   ~ 0
12V
$Comp
L C_Small C37
U 1 1 557B0EEE
P 2600 4050
F 0 "C37" H 2610 4120 50  0000 L CNN
F 1 "0.1u" H 2610 3970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2600 4050 60  0001 C CNN
F 3 "" H 2600 4050 60  0000 C CNN
	1    2600 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 4200 3300 4200
Wire Wire Line
	3300 4200 3300 3850
Connection ~ 2600 3850
Wire Wire Line
	2600 4150 2600 4200
Connection ~ 2600 4200
$Comp
L CP1_Small C38
U 1 1 557B105F
P 4100 2250
F 0 "C38" H 4110 2320 50  0000 L CNN
F 1 "1/35V" H 4110 2170 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 4100 2250 60  0001 C CNN
F 3 "" H 4100 2250 60  0000 C CNN
	1    4100 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2250 4000 2250
Wire Wire Line
	4200 2250 4550 2250
$Comp
L D_Small D4
U 1 1 557B1121
P 4350 2050
F 0 "D4" H 4300 2130 50  0000 L CNN
F 1 "D" H 4200 1970 50  0000 L CNN
F 2 "w_smd_diode:sod123" V 4350 2050 60  0001 C CNN
F 3 "" V 4350 2050 60  0000 C CNN
	1    4350 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2150 4350 2350
Wire Wire Line
	4350 1950 4350 1850
Text Label 4350 1850 0    60   ~ 0
12V
Connection ~ 4350 2250
$Comp
L R_Small R27
U 1 1 557B11DC
P 4350 2450
F 0 "R27" H 4380 2470 50  0000 L CNN
F 1 "100k" H 4380 2410 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 4350 2450 60  0001 C CNN
F 3 "" H 4350 2450 60  0000 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2550 4350 2650
Text Label 4500 2650 0    60   ~ 0
GND
Text Label 3900 2550 0    60   ~ 0
VT2
NoConn ~ 3900 2750
Text Label 3900 2850 0    60   ~ 0
VT3
Text Label 3900 3050 0    60   ~ 0
VT1
Text Label 3900 3150 0    60   ~ 0
VT4
$Comp
L C_Small C39
U 1 1 557B1301
P 4650 2250
F 0 "C39" H 4660 2320 50  0000 L CNN
F 1 "0.1uF" H 4660 2170 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 4650 2250 60  0001 C CNN
F 3 "" H 4650 2250 60  0000 C CNN
	1    4650 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 2250 5350 2250
$Comp
L C_Small C40
U 1 1 557B1390
P 4850 2450
F 0 "C40" H 4860 2520 50  0000 L CNN
F 1 "2.2uF" H 4860 2370 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 4850 2450 60  0001 C CNN
F 3 "" H 4850 2450 60  0000 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2550 4850 2650
Wire Wire Line
	4350 2650 5200 2650
$Comp
L R_Small R28
U 1 1 557B140C
P 5200 2450
F 0 "R28" H 5230 2470 50  0000 L CNN
F 1 "1M0" H 5230 2410 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 5200 2450 60  0001 C CNN
F 3 "" H 5200 2450 60  0000 C CNN
	1    5200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2350 4850 2250
Connection ~ 4850 2250
Wire Wire Line
	5200 2650 5200 2550
Connection ~ 4850 2650
Text Label 8400 2800 0    60   ~ 0
SUB
Text Label 5350 2250 0    60   ~ 0
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
L CP1_Small C47
U 1 1 557B16E0
P 9000 3100
F 0 "C47" H 9010 3170 50  0000 L CNN
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
L C_Small C41
U 1 1 557B19FB
P 6800 2300
F 0 "C41" H 6810 2370 50  0000 L CNN
F 1 "0.1" H 6810 2220 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6800 2300 60  0001 C CNN
F 3 "" H 6800 2300 60  0000 C CNN
	1    6800 2300
	0    1    1    0   
$EndComp
$Comp
L C_Small C42
U 1 1 557B1A55
P 6800 3000
F 0 "C42" H 6810 3070 50  0000 L CNN
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
L C_Small C43
U 1 1 557B1E47
P 7050 1750
F 0 "C43" H 7060 1820 50  0000 L CNN
F 1 "0.01" H 7060 1670 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 7050 1750 60  0001 C CNN
F 3 "" H 7050 1750 60  0000 C CNN
	1    7050 1750
	-1   0    0    1   
$EndComp
$Comp
L CP1_Small C44
U 1 1 557B1EB1
P 7250 1750
F 0 "C44" H 7260 1820 50  0000 L CNN
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
L CP1_Small C46
U 1 1 557B2356
P 8200 1750
F 0 "C46" H 8210 1820 50  0000 L CNN
F 1 "3.3/20V" H 8210 1670 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 8200 1750 60  0001 C CNN
F 3 "" H 8200 1750 60  0000 C CNN
	1    8200 1750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C45
U 1 1 557B23B2
P 8000 1750
F 0 "C45" H 8010 1820 50  0000 L CNN
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
$Comp
L PWR_FLAG #FLG5
U 1 1 557FC97D
P 2700 1000
F 0 "#FLG5" H 2700 1095 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 1180 50  0000 C CNN
F 2 "" H 2700 1000 60  0000 C CNN
F 3 "" H 2700 1000 60  0000 C CNN
	1    2700 1000
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG6
U 1 1 557FC9B3
P 2700 1350
F 0 "#FLG6" H 2700 1445 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 1530 50  0000 C CNN
F 2 "" H 2700 1350 60  0000 C CNN
F 3 "" H 2700 1350 60  0000 C CNN
	1    2700 1350
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG7
U 1 1 557FC9E9
P 2700 1700
F 0 "#FLG7" H 2700 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 1880 50  0000 C CNN
F 2 "" H 2700 1700 60  0000 C CNN
F 3 "" H 2700 1700 60  0000 C CNN
	1    2700 1700
	-1   0    0    1   
$EndComp
Text HLabel 3250 1000 0    60   Input ~ 0
5V0
Wire Wire Line
	3250 1000 3600 1000
Text Label 3600 1000 0    60   ~ 0
5V0
$Comp
L PWR_FLAG #FLG8
U 1 1 557FCCCA
P 3600 1000
F 0 "#FLG8" H 3600 1095 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 1180 50  0000 C CNN
F 2 "" H 3600 1000 60  0000 C CNN
F 3 "" H 3600 1000 60  0000 C CNN
	1    3600 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2250 5200 2350
Connection ~ 5200 2250
Wire Wire Line
	1600 2750 2700 2750
Text HLabel 1600 2250 0    60   Input ~ 0
XSHT
Text HLabel 1600 2450 0    60   Input ~ 0
XV2
Text HLabel 1600 2650 0    60   Input ~ 0
XSGV2
Wire Wire Line
	1600 2650 2700 2650
Text HLabel 1600 2750 0    60   Input ~ 0
XV3
Text HLabel 1600 2950 0    60   Input ~ 0
XSGV3
Text HLabel 1600 3050 0    60   Input ~ 0
XV1
Text HLabel 1600 3150 0    60   Input ~ 0
XV4
$EndSCHEMATC

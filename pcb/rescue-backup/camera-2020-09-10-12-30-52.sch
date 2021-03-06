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
$Comp
L CP1_Small C37
U 1 1 557B16E0
P 9000 3100
F 0 "C37" H 9010 3170 50  0000 L CNN
F 1 "3.3/20V" H 9010 3020 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_4x5.3" H 9000 3100 60  0001 C CNN
F 3 "" H 9000 3100 60  0000 C CNN
	1    9000 3100
	-1   0    0    1   
$EndComp
Text Label 9000 3300 3    60   ~ 0
GND
Text Label 9200 2900 0    60   ~ 0
-7V
$Comp
L C_Small C31
U 1 1 557B19FB
P 6200 2300
F 0 "C31" H 6210 2370 50  0000 L CNN
F 1 "0.1" H 6210 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6200 2300 60  0001 C CNN
F 3 "" H 6200 2300 60  0000 C CNN
	1    6200 2300
	0    1    1    0   
$EndComp
$Comp
L C_Small C32
U 1 1 557B1A55
P 6200 3000
F 0 "C32" H 6210 3070 50  0000 L CNN
F 1 "0.1" H 6210 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6200 3000 60  0001 C CNN
F 3 "" H 6200 3000 60  0000 C CNN
	1    6200 3000
	0    1    1    0   
$EndComp
Text Label 6900 1550 2    60   ~ 0
12V
$Comp
L C_Small C33
U 1 1 557B1E47
P 7050 1750
F 0 "C33" H 7060 1820 50  0000 L CNN
F 1 "0.01" H 7060 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7050 1750 60  0001 C CNN
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
F 2 "Capacitors_SMD:c_elec_4x5.3" H 7250 1750 60  0001 C CNN
F 3 "" H 7250 1750 60  0000 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Text Label 7150 1950 3    60   ~ 0
GND
Text Label 8400 1550 0    60   ~ 0
12V
$Comp
L CP1_Small C36
U 1 1 557B2356
P 8250 1750
F 0 "C36" H 8260 1820 50  0000 L CNN
F 1 "3.3/20V" H 8260 1670 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_4x5.3" H 8250 1750 60  0001 C CNN
F 3 "" H 8250 1750 60  0000 C CNN
	1    8250 1750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C35
U 1 1 557B23B2
P 8050 1750
F 0 "C35" H 8060 1820 50  0000 L CNN
F 1 "0.01" H 8060 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8050 1750 60  0001 C CNN
F 3 "" H 8050 1750 60  0000 C CNN
	1    8050 1750
	-1   0    0    1   
$EndComp
Text Label 8150 1950 3    60   ~ 0
GND
Text Label 5500 4250 0    60   ~ 0
SUB
$Comp
L R_Small R19
U 1 1 557B140C
P 5350 4450
F 0 "R19" H 5380 4470 50  0000 L CNN
F 1 "1M0" H 5380 4410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5350 4450 60  0001 C CNN
F 3 "" H 5350 4450 60  0000 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C30
U 1 1 557B1390
P 5000 4450
F 0 "C30" H 5010 4520 50  0000 L CNN
F 1 "2200pF" H 5010 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5000 4450 60  0001 C CNN
F 3 "" H 5000 4450 60  0000 C CNN
	1    5000 4450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C29
U 1 1 557B1301
P 4800 4250
F 0 "C29" V 4950 4200 50  0000 L CNN
F 1 "0.1uF" V 4700 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4800 4250 60  0001 C CNN
F 3 "" H 4800 4250 60  0000 C CNN
	1    4800 4250
	0    -1   -1   0   
$EndComp
Text Label 3900 5150 0    60   ~ 0
VT4
Text Label 3900 5050 0    60   ~ 0
VT1
Text Label 3900 4850 0    60   ~ 0
VT3
NoConn ~ 3900 4750
Text Label 3900 4550 0    60   ~ 0
VT2
Text Label 4650 4650 0    60   ~ 0
GND
$Comp
L R_Small R18
U 1 1 557B11DC
P 4500 4450
F 0 "R18" H 4530 4470 50  0000 L CNN
F 1 "100k" H 4530 4410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4500 4450 60  0001 C CNN
F 3 "" H 4500 4450 60  0000 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Text Label 4500 3850 0    60   ~ 0
12V
$Comp
L D_Small D2
U 1 1 557B1121
P 4500 4050
F 0 "D2" H 4450 4130 50  0000 L CNN
F 1 "D" H 4500 3950 50  0000 L CNN
F 2 "Diodes_SMD:SOD-123" V 4500 4050 60  0001 C CNN
F 3 "" V 4500 4050 60  0000 C CNN
	1    4500 4050
	0    -1   -1   0   
$EndComp
$Comp
L CP1_Small C28
U 1 1 557B105F
P 4250 4250
F 0 "C28" V 4100 4150 50  0000 L CNN
F 1 "1u/35V" V 4400 4100 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_4x5.3" H 4250 4250 60  0001 C CNN
F 3 "" H 4250 4250 60  0000 C CNN
	1    4250 4250
	0    1    1    0   
$EndComp
$Comp
L C_Small C27
U 1 1 557B0EEE
P 2600 5900
F 0 "C27" H 2610 5970 50  0000 L CNN
F 1 "0.1u" H 2610 5820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2600 5900 60  0001 C CNN
F 3 "" H 2600 5900 60  0000 C CNN
	1    2600 5900
	1    0    0    -1  
$EndComp
Text Label 1600 5600 2    60   ~ 0
12V
$Comp
L C_Small C26
U 1 1 557B0E82
P 2250 5900
F 0 "C26" H 2260 5970 50  0000 L CNN
F 1 "0.1u" H 2260 5820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2250 5900 60  0001 C CNN
F 3 "" H 2250 5900 60  0000 C CNN
	1    2250 5900
	1    0    0    -1  
$EndComp
Text Label 1600 5450 2    60   ~ 0
-7V
Text Label 2700 4850 2    60   ~ 0
GND
Text Label 2700 4550 2    60   ~ 0
GND
NoConn ~ 3900 4450
Text Label 3300 4000 1    60   ~ 0
3V3
Text Label 2900 6200 0    60   ~ 0
GND
$Comp
L CXD3400N U9
U 1 1 557B0C28
P 3300 4950
F 0 "U9" H 2850 5800 50  0000 L CNN
F 1 "CXD3400N" H 3450 4150 50  0000 L CNN
F 2 "w_smd_dil:tssop-20" H 3300 4950 60  0001 C CNN
F 3 "" H 3300 4950 60  0000 C CNN
	1    3300 4950
	1    0    0    -1  
$EndComp
Text Label 1850 4250 0    60   ~ 0
XSHT
Text Label 1850 4450 0    60   ~ 0
XV2
Text Label 1850 4650 0    60   ~ 0
XSGV2
Text Label 1850 4750 0    60   ~ 0
XV3
Text Label 1850 4950 0    60   ~ 0
XSGV3
Text Label 1850 5050 0    60   ~ 0
XV1
Text Label 1850 5150 0    60   ~ 0
XV4
Text Label 6550 2300 0    60   ~ 0
RG_1
Text Label 6550 2400 0    60   ~ 0
LH1_1
Text Label 6550 2500 0    60   ~ 0
H1S_1
Text Label 6550 2600 0    60   ~ 0
H1T_1
Text Label 6550 2700 0    60   ~ 0
H2S_1
Text Label 6550 2800 0    60   ~ 0
H2T_1
Text Label 6550 3000 0    60   ~ 0
RG_2
Text Label 6550 3100 0    60   ~ 0
LH1_2
Text Label 6550 3200 0    60   ~ 0
H1S_2
Text Label 6550 3300 0    60   ~ 0
H1T_2
Text Label 6550 3400 0    60   ~ 0
H2S_2
Text Label 6550 3500 0    60   ~ 0
H2T_2
Text Label 4650 750  0    60   ~ 0
12V
Text Label 4650 850  0    60   ~ 0
-7V
Text Label 4650 950  0    60   ~ 0
GND
Text Label 4650 1050 0    60   ~ 0
3V3
Text Label 4650 1650 0    60   ~ 0
XSHT
Text Label 4650 1250 0    60   ~ 0
XV1
Text Label 4650 1350 0    60   ~ 0
XV2
Text Label 4650 1450 0    60   ~ 0
XV3
Text Label 4650 1550 0    60   ~ 0
XV4
Text Label 4650 1750 0    60   ~ 0
XSGV2
Text Label 4650 1850 0    60   ~ 0
XSGV3
Text Label 4650 1950 0    60   ~ 0
CCD_OUT1
Text Label 4650 1150 0    60   ~ 0
CCD_OUT2
$Comp
L CONN_01X14 P10
U 1 1 5584CE51
P 4450 1400
F 0 "P10" H 4450 2150 50  0000 C CNN
F 1 "CONN_01X14" V 4550 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14" H 4450 1400 60  0001 C CNN
F 3 "" H 4450 1400 60  0000 C CNN
	1    4450 1400
	-1   0    0    -1  
$EndComp
Text Label 8400 2400 0    60   ~ 0
VOUT1
Text Label 8400 2550 0    60   ~ 0
VOUT2
$Comp
L R R11
U 1 1 55907BE8
P 6250 5600
F 0 "R11" V 6330 5600 50  0000 C CNN
F 1 "10K" V 6250 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6180 5600 30  0001 C CNN
F 3 "" H 6250 5600 30  0000 C CNN
	1    6250 5600
	1    0    0    -1  
$EndComp
Text Label 6250 5950 2    60   ~ 0
GND
$Comp
L R R10
U 1 1 55907DEB
P 6250 4850
F 0 "R10" V 6330 4850 50  0000 C CNN
F 1 "10K" V 6250 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6180 4850 30  0001 C CNN
F 3 "" H 6250 4850 30  0000 C CNN
	1    6250 4850
	1    0    0    -1  
$EndComp
Text Label 6250 4500 0    60   ~ 0
12V
$Comp
L R R12
U 1 1 55907F9A
P 6650 5600
F 0 "R12" V 6730 5600 50  0000 C CNN
F 1 "1.17K" V 6650 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6580 5600 30  0001 C CNN
F 3 "" H 6650 5600 30  0000 C CNN
	1    6650 5600
	1    0    0    -1  
$EndComp
Text Label 6650 5950 2    60   ~ 0
GND
Text Label 6650 4500 0    60   ~ 0
VOUT1
Text Label 7100 4500 0    60   ~ 0
12V
$Comp
L R R13
U 1 1 55908254
P 7100 5600
F 0 "R13" V 7180 5600 50  0000 C CNN
F 1 "1.74K" V 7100 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7030 5600 30  0001 C CNN
F 3 "" H 7100 5600 30  0000 C CNN
	1    7100 5600
	1    0    0    -1  
$EndComp
Text Label 7100 5950 2    60   ~ 0
GND
Text Label 7300 5150 0    60   ~ 0
CCD_OUT1
$Comp
L R R15
U 1 1 55909FBD
P 8350 5600
F 0 "R15" V 8430 5600 50  0000 C CNN
F 1 "10K" V 8350 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 5600 30  0001 C CNN
F 3 "" H 8350 5600 30  0000 C CNN
	1    8350 5600
	1    0    0    -1  
$EndComp
Text Label 8350 5950 2    60   ~ 0
GND
$Comp
L R R14
U 1 1 55909FC8
P 8350 4850
F 0 "R14" V 8430 4850 50  0000 C CNN
F 1 "10K" V 8350 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 4850 30  0001 C CNN
F 3 "" H 8350 4850 30  0000 C CNN
	1    8350 4850
	1    0    0    -1  
$EndComp
Text Label 8350 4500 0    60   ~ 0
12V
$Comp
L R R20
U 1 1 55909FD0
P 8750 5600
F 0 "R20" V 8830 5600 50  0000 C CNN
F 1 "1.17K" V 8750 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8680 5600 30  0001 C CNN
F 3 "" H 8750 5600 30  0000 C CNN
	1    8750 5600
	1    0    0    -1  
$EndComp
Text Label 8750 5950 2    60   ~ 0
GND
Text Label 8750 4500 0    60   ~ 0
VOUT2
Text Label 9200 4500 0    60   ~ 0
12V
$Comp
L R R21
U 1 1 55909FDB
P 9200 5600
F 0 "R21" V 9280 5600 50  0000 C CNN
F 1 "1.74K" V 9200 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9130 5600 30  0001 C CNN
F 3 "" H 9200 5600 30  0000 C CNN
	1    9200 5600
	1    0    0    -1  
$EndComp
Text Label 9200 5950 2    60   ~ 0
GND
Text Label 9400 5150 0    60   ~ 0
CCD_OUT2
$Comp
L Q_NPN_BEC Q1
U 1 1 5590D88C
P 6550 5150
F 0 "Q1" H 6850 5200 50  0000 R CNN
F 1 "2SC5095" H 7050 5100 50  0000 R CNN
F 2 "w_smd_trans:sot323" H 6750 5250 29  0001 C CNN
F 3 "" H 6550 5150 60  0000 C CNN
	1    6550 5150
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BEC Q2
U 1 1 5590DA54
P 7000 4800
F 0 "Q2" H 7300 4850 50  0000 R CNN
F 1 "MT3S20TU" H 7600 4750 50  0000 R CNN
F 2 "w_smd_trans:sot323" H 7200 4900 29  0001 C CNN
F 3 "" H 7000 4800 60  0000 C CNN
	1    7000 4800
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BEC Q3
U 1 1 5590FE91
P 8650 5150
F 0 "Q3" H 8950 5200 50  0000 R CNN
F 1 "2SC5095" H 9150 5100 50  0000 R CNN
F 2 "w_smd_trans:sot323" H 8850 5250 29  0001 C CNN
F 3 "" H 8650 5150 60  0000 C CNN
	1    8650 5150
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BEC Q4
U 1 1 5590FF55
P 9100 4800
F 0 "Q4" H 9400 4850 50  0000 R CNN
F 1 "MT3S20TU" H 9700 4750 50  0000 R CNN
F 2 "w_smd_trans:sot323" H 9300 4900 29  0001 C CNN
F 3 "" H 9100 4800 60  0000 C CNN
	1    9100 4800
	1    0    0    -1  
$EndComp
Text Label 8350 5150 0    60   ~ 0
B2
Text Label 6250 5150 0    60   ~ 0
B1
Text Label 6650 5400 0    60   ~ 0
E1
Text Label 8750 5450 0    60   ~ 0
E2
Text Label 950  1500 2    60   ~ 0
3V3
$Comp
L C C12
U 1 1 559128B3
P 2850 1800
F 0 "C12" H 2875 1900 50  0000 L CNN
F 1 "0.1u" H 2875 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2888 1650 30  0001 C CNN
F 3 "" H 2850 1800 60  0000 C CNN
	1    2850 1800
	0    1    1    0   
$EndComp
Text Label 950  2000 2    60   ~ 0
GND
$Comp
L R R22
U 1 1 55912D09
P 1850 2800
F 0 "R22" V 1930 2800 50  0000 C CNN
F 1 "10.0k" V 1850 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1780 2800 30  0001 C CNN
F 3 "" H 1850 2800 30  0000 C CNN
	1    1850 2800
	1    0    0    -1  
$EndComp
Text Label 950  1050 2    60   ~ 0
5V0
$Comp
L C C13
U 1 1 55913283
P 3650 1800
F 0 "C13" H 3675 1900 50  0000 L CNN
F 1 "0.1u" H 3675 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3688 1650 30  0001 C CNN
F 3 "" H 3650 1800 60  0000 C CNN
	1    3650 1800
	0    -1   -1   0   
$EndComp
Text Label 2650 650  0    60   ~ 0
GND
Text Label 2550 2650 0    60   ~ 0
H1
Text Label 2550 2750 0    60   ~ 0
H2
Text Label 2550 2850 0    60   ~ 0
HL
Text Label 2550 2950 0    60   ~ 0
RG
Text Label 6200 900  2    60   ~ 0
H1
Text Label 6200 1000 2    60   ~ 0
H2
Text Label 6200 1100 2    60   ~ 0
HL
Text Label 6200 1200 2    60   ~ 0
RG
Text Label 4650 2050 0    60   ~ 0
5V0
$Comp
L PWR_FLAG #FLG07
U 1 1 55BCEC20
P 1100 1050
F 0 "#FLG07" H 1100 1145 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 1230 50  0000 C CNN
F 2 "" H 1100 1050 60  0000 C CNN
F 3 "" H 1100 1050 60  0000 C CNN
	1    1100 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 55BCECC8
P 1100 2000
F 0 "#PWR08" H 1100 1750 50  0001 C CNN
F 1 "GND" H 1100 1850 50  0000 C CNN
F 2 "" H 1100 2000 60  0000 C CNN
F 3 "" H 1100 2000 60  0000 C CNN
	1    1100 2000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 55BCED26
P 1100 1500
F 0 "#FLG09" H 1100 1595 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 1680 50  0000 C CNN
F 2 "" H 1100 1500 60  0000 C CNN
F 3 "" H 1100 1500 60  0000 C CNN
	1    1100 1500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG010
U 1 1 55BCEEAC
P 1850 5600
F 0 "#FLG010" H 1850 5695 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 5780 50  0000 C CNN
F 2 "" H 1850 5600 60  0000 C CNN
F 3 "" H 1850 5600 60  0000 C CNN
	1    1850 5600
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 55BCEF2D
P 1850 5450
F 0 "#FLG011" H 1850 5545 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 5630 50  0000 C CNN
F 2 "" H 1850 5450 60  0000 C CNN
F 3 "" H 1850 5450 60  0000 C CNN
	1    1850 5450
	1    0    0    -1  
$EndComp
Text Label 3850 2650 0    60   ~ 0
OH1
Text Label 3850 2750 0    60   ~ 0
OH2
Text Label 3850 2850 0    60   ~ 0
OHL
Text Label 3850 2950 0    60   ~ 0
ORG
$Comp
L CONN_01X04 P4
U 1 1 55C648A0
P 6400 1050
F 0 "P4" H 6400 1300 50  0000 C CNN
F 1 "CONN_01X04" V 6500 1050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 6400 1400 60  0000 C CNN
F 3 "" H 6400 1050 60  0000 C CNN
	1    6400 1050
	1    0    0    -1  
$EndComp
$Comp
L TXB0104 U4
U 1 1 55C83413
P 3250 2700
F 0 "U4" H 3250 2300 60  0000 C CNN
F 1 "TXB0104" H 3250 2700 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3250 2650 60  0001 C CNN
F 3 "" H 3250 2650 60  0000 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 55C85818
P 2600 1800
F 0 "#PWR012" H 2600 1550 50  0001 C CNN
F 1 "GND" H 2600 1650 50  0000 C CNN
F 2 "" H 2600 1800 60  0000 C CNN
F 3 "" H 2600 1800 60  0000 C CNN
	1    2600 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 55C85872
P 3900 1800
F 0 "#PWR013" H 3900 1550 50  0001 C CNN
F 1 "GND" H 3900 1650 50  0000 C CNN
F 2 "" H 3900 1800 60  0000 C CNN
F 3 "" H 3900 1800 60  0000 C CNN
	1    3900 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2900 9200 2900
Wire Wire Line
	9000 2900 9000 3000
Wire Wire Line
	9000 3200 9000 3300
Connection ~ 9000 2900
Wire Wire Line
	5800 2300 6100 2300
Wire Wire Line
	5800 3000 6100 3000
Wire Wire Line
	6300 3000 7050 3000
Wire Wire Line
	6300 2300 7050 2300
Wire Wire Line
	4100 2400 7050 2400
Wire Wire Line
	4850 2500 7050 2500
Wire Wire Line
	4850 2600 7050 2600
Wire Wire Line
	4450 2700 7050 2700
Wire Wire Line
	4450 2800 7050 2800
Wire Wire Line
	4100 3100 7050 3100
Wire Wire Line
	7600 1550 7600 1950
Wire Wire Line
	6900 1550 7600 1550
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
Wire Wire Line
	7700 1950 7700 1550
Wire Wire Line
	7700 1550 8400 1550
Wire Wire Line
	8050 1550 8050 1650
Connection ~ 8050 1550
Wire Wire Line
	8250 1550 8250 1650
Connection ~ 8250 1550
Wire Wire Line
	8050 1850 8050 1900
Wire Wire Line
	8050 1900 8250 1900
Wire Wire Line
	8250 1900 8250 1850
Wire Wire Line
	8150 1900 8150 1950
Connection ~ 8150 1900
Wire Wire Line
	1600 4650 2700 4650
Wire Wire Line
	1600 4750 2700 4750
Connection ~ 5350 4250
Wire Wire Line
	5350 4250 5350 4350
Connection ~ 5000 4650
Wire Wire Line
	5350 4650 5350 4550
Connection ~ 5000 4250
Wire Wire Line
	5000 4350 5000 4250
Wire Wire Line
	4500 4650 5350 4650
Wire Wire Line
	5000 4550 5000 4650
Wire Wire Line
	4900 4250 5500 4250
Wire Wire Line
	4500 4550 4500 4650
Connection ~ 4500 4250
Wire Wire Line
	4500 3950 4500 3850
Wire Wire Line
	4500 4150 4500 4350
Wire Wire Line
	4350 4250 4700 4250
Wire Wire Line
	3900 4250 4150 4250
Connection ~ 2600 6200
Wire Wire Line
	2600 6000 2600 6200
Connection ~ 2600 5600
Wire Wire Line
	3300 6200 3300 5850
Wire Wire Line
	2250 6200 3300 6200
Wire Wire Line
	1600 5600 2700 5600
Wire Wire Line
	2600 5600 2600 5800
Wire Wire Line
	2250 6000 2250 6200
Connection ~ 2250 5450
Wire Wire Line
	2250 5450 2250 5800
Wire Wire Line
	1600 4950 2700 4950
Wire Wire Line
	1600 5050 2700 5050
Wire Wire Line
	1600 5150 2700 5150
Wire Wire Line
	1600 4250 2700 4250
Wire Wire Line
	1600 4450 2700 4450
Wire Wire Line
	6250 5150 6350 5150
Wire Wire Line
	6650 4500 6650 4950
Wire Wire Line
	6650 4800 6800 4800
Wire Wire Line
	7100 4500 7100 4600
Connection ~ 6650 4800
Wire Wire Line
	6250 5000 6250 5450
Wire Wire Line
	6250 5750 6250 5950
Connection ~ 6250 5150
Wire Wire Line
	6250 4500 6250 4700
Wire Wire Line
	6650 5750 6650 5950
Wire Wire Line
	6650 5350 6650 5450
Wire Wire Line
	7100 5000 7100 5450
Wire Wire Line
	7100 5750 7100 5950
Wire Wire Line
	7100 5150 7300 5150
Connection ~ 7100 5150
Wire Wire Line
	8350 5150 8450 5150
Wire Wire Line
	8750 4500 8750 4950
Wire Wire Line
	8750 4800 8900 4800
Wire Wire Line
	9200 4500 9200 4600
Connection ~ 8750 4800
Wire Wire Line
	8350 5000 8350 5450
Wire Wire Line
	8350 5750 8350 5950
Connection ~ 8350 5150
Wire Wire Line
	8350 4500 8350 4700
Wire Wire Line
	8750 5750 8750 5950
Wire Wire Line
	8750 5350 8750 5450
Wire Wire Line
	9200 5000 9200 5450
Wire Wire Line
	9200 5750 9200 5950
Wire Wire Line
	9200 5150 9400 5150
Connection ~ 9200 5150
Wire Wire Line
	3100 1500 3100 2150
Wire Wire Line
	3400 1050 3400 2150
Wire Wire Line
	2650 700  2650 650 
Wire Wire Line
	950  1050 3400 1050
Connection ~ 1100 1050
Wire Wire Line
	950  1500 3100 1500
Connection ~ 1100 1500
Wire Wire Line
	1600 5450 2700 5450
Connection ~ 1850 5450
Connection ~ 1850 5600
Wire Wire Line
	4850 3200 7050 3200
Wire Wire Line
	4850 3300 7050 3300
Wire Wire Line
	4450 3400 7050 3400
Wire Wire Line
	4450 3500 7050 3500
Wire Wire Line
	4850 2500 4850 3300
Connection ~ 4850 2550
Connection ~ 4850 2600
Connection ~ 4850 3200
Connection ~ 4450 2700
Connection ~ 4450 2800
Connection ~ 4450 3400
Wire Wire Line
	5800 2300 5800 3000
Wire Wire Line
	4100 2400 4100 3100
Wire Wire Line
	2650 2650 2550 2650
Wire Wire Line
	2650 2750 2550 2750
Wire Wire Line
	2650 2850 2550 2850
Wire Wire Line
	2650 2950 2550 2950
Wire Wire Line
	3000 1800 3100 1800
Connection ~ 3100 1800
Wire Wire Line
	3500 1800 3400 1800
Connection ~ 3400 1800
Wire Wire Line
	2700 1800 2600 1800
Wire Wire Line
	3800 1800 3900 1800
Wire Wire Line
	3850 2950 5800 2950
Connection ~ 5800 2950
Wire Wire Line
	3850 2850 4100 2850
Connection ~ 4100 2850
Wire Wire Line
	3850 2650 4850 2650
Connection ~ 4850 2650
Wire Wire Line
	3850 2750 4450 2750
Connection ~ 4450 2750
Wire Wire Line
	4450 2700 4450 3500
$Comp
L GND #PWR014
U 1 1 55C87008
P 1850 2950
F 0 "#PWR014" H 1850 2700 50  0001 C CNN
F 1 "GND" H 1850 2800 50  0000 C CNN
F 2 "" H 1850 2950 60  0000 C CNN
F 3 "" H 1850 2950 60  0000 C CNN
	1    1850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2650 1850 2450
Wire Wire Line
	1550 2450 2650 2450
$Comp
L CONN_01X01 P5
U 1 1 55C872A7
P 6400 1600
F 0 "P5" H 6400 1700 50  0000 C CNN
F 1 "CONN_01X01" V 6500 1600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 6400 1600 60  0001 C CNN
F 3 "" H 6400 1600 60  0000 C CNN
	1    6400 1600
	1    0    0    -1  
$EndComp
Text Label 6200 1600 2    60   ~ 0
ENH
Connection ~ 1850 2450
Text Label 1550 2450 2    60   ~ 0
ENH
Wire Wire Line
	1100 2000 950  2000
$Comp
L GND #PWR015
U 1 1 55C8767C
P 3250 3250
F 0 "#PWR015" H 3250 3000 50  0001 C CNN
F 1 "GND" H 3250 3100 50  0000 C CNN
F 2 "" H 3250 3250 60  0000 C CNN
F 3 "" H 3250 3250 60  0000 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC

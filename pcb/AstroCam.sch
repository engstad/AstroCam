EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1400 1500 1000 1350
U 557696AD
F0 "power-supply" 60
F1 "power.sch" 60
$EndSheet
$Sheet
S 4650 1600 1100 1250
U 557AFA5B
F0 "camera" 60
F1 "camera.sch" 60
F2 "XSHT" I L 4650 2150 50 
F3 "XV2" I L 4650 2350 50 
F4 "XSGV2" I L 4650 2450 50 
F5 "XV3" I L 4650 2550 50 
F6 "XSGV3" I L 4650 2650 50 
F7 "XV1" I L 4650 2250 50 
F8 "XV4" I L 4650 2750 50 
F9 "CCD_OUT1" O R 5750 1700 50 
F10 "CCD_OUT2" O R 5750 2000 50 
F11 "CCD_H1" I L 4650 1650 50 
F12 "CCD_H2" I L 4650 1750 50 
F13 "CCD_HL" I L 4650 1850 50 
F14 "CCD_RG" I L 4650 1950 50 
$EndSheet
$Sheet
S 6700 1150 1300 2100
U 557AD230
F0 "h-driver" 60
F1 "h-driver.sch" 60
F2 "ADC_VD" I L 6700 2350 50 
F3 "ADC_HD" I L 6700 2450 50 
F4 "ADC_SCK" I L 6700 2850 50 
F5 "ADC_SDATA" I L 6700 2950 50 
F6 "ADC_SL" I L 6700 3050 50 
F7 "ADC_INA" I L 6700 1700 50 
F8 "ADC_INB" I L 6700 2000 50 
F9 "ADC_OUT_A0+" O R 8000 2200 50 
F10 "ADC_OUT_A0-" O R 8000 2300 50 
F11 "ADC_OUT_A1+" O R 8000 2400 50 
F12 "ADC_OUT_A1-" O R 8000 2500 50 
F13 "ADC_OUT_B0+" O R 8000 2600 50 
F14 "ADC_OUT_B0-" O R 8000 2700 50 
F15 "ADC_OUT_B1+" O R 8000 2800 50 
F16 "ADC_OUT_B1-" O R 8000 2900 50 
F17 "ADC_OUT_TCLK+" O R 8000 3000 50 
F18 "ADC_OUT_TCKL-" O R 8000 3100 50 
F19 "ADC_CLI" I L 6700 2550 50 
$EndSheet
Wire Wire Line
	5750 1700 6700 1700
Wire Wire Line
	5750 2000 6700 2000
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 60C360FB
P 9600 2500
F 0 "J4" H 9650 1975 50  0000 C CNN
F 1 "PMOD" H 9650 2066 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Horizontal" H 9600 2500 50  0001 C CNN
F 3 "~" H 9600 2500 50  0001 C CNN
	1    9600 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	9400 2700 9250 2700
Wire Wire Line
	9900 2700 9950 2700
$Comp
L power:GND #PWR0179
U 1 1 60C383A6
P 9250 2600
F 0 "#PWR0179" H 9250 2350 50  0001 C CNN
F 1 "GND" V 9255 2472 50  0000 R CNN
F 2 "" H 9250 2600 50  0001 C CNN
F 3 "" H 9250 2600 50  0001 C CNN
	1    9250 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0196
U 1 1 60C383FA
P 9950 2600
F 0 "#PWR0196" H 9950 2350 50  0001 C CNN
F 1 "GND" V 9955 2472 50  0000 R CNN
F 2 "" H 9950 2600 50  0001 C CNN
F 3 "" H 9950 2600 50  0001 C CNN
	1    9950 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0197
U 1 1 60C38ADF
P 9250 2700
F 0 "#PWR0197" H 9250 2550 50  0001 C CNN
F 1 "+3V3" V 9250 2850 50  0000 L CNN
F 2 "" H 9250 2700 50  0001 C CNN
F 3 "" H 9250 2700 50  0001 C CNN
	1    9250 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0198
U 1 1 60C38FE6
P 9950 2700
F 0 "#PWR0198" H 9950 2550 50  0001 C CNN
F 1 "+3V3" V 9950 2800 50  0000 L CNN
F 2 "" H 9950 2700 50  0001 C CNN
F 3 "" H 9950 2700 50  0001 C CNN
	1    9950 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2300 9400 2300
Wire Wire Line
	8000 2200 9400 2200
Wire Wire Line
	8000 2400 9400 2400
Wire Wire Line
	8000 2500 9400 2500
Wire Wire Line
	9900 2500 10550 2500
Wire Wire Line
	10550 2500 10550 3000
Wire Wire Line
	10550 3000 8000 3000
Wire Wire Line
	8000 3100 10650 3100
Wire Wire Line
	10650 3100 10650 2400
Wire Wire Line
	10650 2400 9900 2400
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J5
U 1 1 60C41877
P 9600 3800
F 0 "J5" H 9650 3275 50  0000 C CNN
F 1 "PMOD" H 9650 3366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Horizontal" H 9600 3800 50  0001 C CNN
F 3 "~" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	8000 2600 8750 2600
Wire Wire Line
	8750 2600 8750 3500
Wire Wire Line
	8750 3500 9400 3500
Wire Wire Line
	8000 2700 8650 2700
Wire Wire Line
	8650 2700 8650 3600
Wire Wire Line
	8650 3600 9400 3600
Wire Wire Line
	8000 2800 8550 2800
Wire Wire Line
	8550 2800 8550 3700
Wire Wire Line
	8550 3700 9400 3700
Wire Wire Line
	8000 2900 8450 2900
Wire Wire Line
	8450 2900 8450 3800
Wire Wire Line
	8450 3800 9400 3800
Wire Wire Line
	9250 2600 9400 2600
Wire Wire Line
	9900 2600 9950 2600
$Comp
L power:GND #PWR0200
U 1 1 60C4C8E5
P 9950 3900
F 0 "#PWR0200" H 9950 3650 50  0001 C CNN
F 1 "GND" V 9955 3772 50  0000 R CNN
F 2 "" H 9950 3900 50  0001 C CNN
F 3 "" H 9950 3900 50  0001 C CNN
	1    9950 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0204
U 1 1 60C4C8EB
P 9950 4000
F 0 "#PWR0204" H 9950 3850 50  0001 C CNN
F 1 "+3V3" V 9950 4100 50  0000 L CNN
F 2 "" H 9950 4000 50  0001 C CNN
F 3 "" H 9950 4000 50  0001 C CNN
	1    9950 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0205
U 1 1 60C4DE1E
P 9350 3900
F 0 "#PWR0205" H 9350 3650 50  0001 C CNN
F 1 "GND" V 9355 3772 50  0000 R CNN
F 2 "" H 9350 3900 50  0001 C CNN
F 3 "" H 9350 3900 50  0001 C CNN
	1    9350 3900
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0206
U 1 1 60C4DE24
P 9350 4000
F 0 "#PWR0206" H 9350 3850 50  0001 C CNN
F 1 "+3V3" V 9350 4100 50  0000 L CNN
F 2 "" H 9350 4000 50  0001 C CNN
F 3 "" H 9350 4000 50  0001 C CNN
	1    9350 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	9350 3900 9400 3900
Wire Wire Line
	9350 4000 9400 4000
Wire Wire Line
	9900 3900 9950 3900
Wire Wire Line
	9900 4000 9950 4000
Text Label 6550 2850 2    50   ~ 0
ADC_SCK
Wire Wire Line
	6550 2850 6700 2850
Wire Wire Line
	6550 2950 6700 2950
Text Label 6550 2950 2    50   ~ 0
ADC_SDATA
Text Label 6550 3050 2    50   ~ 0
ADC_SL
Wire Wire Line
	6550 3050 6700 3050
Wire Wire Line
	6550 2350 6700 2350
Wire Wire Line
	6550 2450 6700 2450
Wire Wire Line
	6550 2550 6700 2550
Text Label 6550 2350 2    50   ~ 0
ADC_VD
Text Label 6550 2450 2    50   ~ 0
ADC_HD
Text Label 6550 2550 2    50   ~ 0
ADC_CLI
Text Label 9900 3500 0    50   ~ 0
ADC_CLI
Text Label 3750 2550 0    50   ~ 0
ADC_VD
Text Label 9900 3600 0    50   ~ 0
ADC_HD
Text Label 3750 3350 0    50   ~ 0
ADC_SCK
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J2
U 1 1 60C5D92A
P 3450 3450
F 0 "J2" H 3500 2925 50  0000 C CNN
F 1 "PMOD" H 3500 3016 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Horizontal" H 3450 3450 50  0001 C CNN
F 3 "~" H 3450 3450 50  0001 C CNN
	1    3450 3450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0207
U 1 1 60C5D930
P 3200 3550
F 0 "#PWR0207" H 3200 3300 50  0001 C CNN
F 1 "GND" V 3205 3422 50  0000 R CNN
F 2 "" H 3200 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0001 C CNN
	1    3200 3550
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0208
U 1 1 60C5D936
P 3200 3650
F 0 "#PWR0208" H 3200 3500 50  0001 C CNN
F 1 "+3V3" V 3200 3750 50  0000 L CNN
F 2 "" H 3200 3650 50  0001 C CNN
F 3 "" H 3200 3650 50  0001 C CNN
	1    3200 3650
	0    -1   1    0   
$EndComp
Wire Wire Line
	3200 3550 3250 3550
Wire Wire Line
	3200 3650 3250 3650
$Comp
L power:GND #PWR0209
U 1 1 60C5FC5F
P 3800 3550
F 0 "#PWR0209" H 3800 3300 50  0001 C CNN
F 1 "GND" V 3805 3422 50  0000 R CNN
F 2 "" H 3800 3550 50  0001 C CNN
F 3 "" H 3800 3550 50  0001 C CNN
	1    3800 3550
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR0210
U 1 1 60C605CC
P 3800 3650
F 0 "#PWR0210" H 3800 3500 50  0001 C CNN
F 1 "+3V3" V 3800 3750 50  0000 L CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "" H 3800 3650 50  0001 C CNN
	1    3800 3650
	0    1    -1   0   
$EndComp
Wire Wire Line
	3750 3550 3800 3550
Wire Wire Line
	3750 3650 3800 3650
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J3
U 1 1 60C669A4
P 3450 2550
F 0 "J3" H 3500 2025 50  0000 C CNN
F 1 "PMOD" H 3500 2116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Horizontal" H 3450 2550 50  0001 C CNN
F 3 "~" H 3450 2550 50  0001 C CNN
	1    3450 2550
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0211
U 1 1 60C669AA
P 3200 2650
F 0 "#PWR0211" H 3200 2400 50  0001 C CNN
F 1 "GND" V 3205 2522 50  0000 R CNN
F 2 "" H 3200 2650 50  0001 C CNN
F 3 "" H 3200 2650 50  0001 C CNN
	1    3200 2650
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0212
U 1 1 60C669B0
P 3200 2750
F 0 "#PWR0212" H 3200 2600 50  0001 C CNN
F 1 "+3V3" V 3200 2850 50  0000 L CNN
F 2 "" H 3200 2750 50  0001 C CNN
F 3 "" H 3200 2750 50  0001 C CNN
	1    3200 2750
	0    -1   1    0   
$EndComp
Wire Wire Line
	3200 2650 3250 2650
Wire Wire Line
	3200 2750 3250 2750
$Comp
L power:GND #PWR0213
U 1 1 60C669B8
P 3800 2650
F 0 "#PWR0213" H 3800 2400 50  0001 C CNN
F 1 "GND" V 3805 2522 50  0000 R CNN
F 2 "" H 3800 2650 50  0001 C CNN
F 3 "" H 3800 2650 50  0001 C CNN
	1    3800 2650
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR0214
U 1 1 60C669BE
P 3800 2750
F 0 "#PWR0214" H 3800 2600 50  0001 C CNN
F 1 "+3V3" V 3800 2850 50  0000 L CNN
F 2 "" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	0    1    -1   0   
$EndComp
Wire Wire Line
	3750 2650 3800 2650
Wire Wire Line
	3750 2750 3800 2750
Wire Wire Line
	4650 1650 4550 1650
Wire Wire Line
	4650 1750 4550 1750
Wire Wire Line
	4650 1850 4550 1850
Wire Wire Line
	4650 1950 4550 1950
Wire Wire Line
	4650 2150 4550 2150
Wire Wire Line
	4650 2250 4550 2250
Wire Wire Line
	4650 2350 4550 2350
Wire Wire Line
	4650 2450 4550 2450
Wire Wire Line
	4650 2550 4550 2550
Wire Wire Line
	4650 2650 4550 2650
Wire Wire Line
	4650 2750 4550 2750
Text Label 9900 2200 0    50   ~ 0
CCD_H1
Text Label 9900 2300 0    50   ~ 0
CCD_H2
Text Label 9900 3700 0    50   ~ 0
CCD_HL
Text Label 9900 3800 0    50   ~ 0
CCD_RG
Text Label 4550 1650 2    50   ~ 0
CCD_H1
Text Label 4550 1750 2    50   ~ 0
CCD_H2
Text Label 4550 1850 2    50   ~ 0
CCD_HL
Text Label 4550 1950 2    50   ~ 0
CCD_RG
Text Label 4550 2150 2    50   ~ 0
XSHT
Text Label 4550 2250 2    50   ~ 0
XV1
Text Label 4550 2350 2    50   ~ 0
XV2
Text Label 4550 2450 2    50   ~ 0
XSGV2
Text Label 4550 2550 2    50   ~ 0
XV3
Text Label 4550 2650 2    50   ~ 0
XSGV3
Text Label 4550 2750 2    50   ~ 0
XV4
Text Label 3250 2250 2    50   ~ 0
XV1
Text Label 3250 2350 2    50   ~ 0
XV2
Text Label 3250 2450 2    50   ~ 0
XV3
Text Label 3250 2550 2    50   ~ 0
XV4
Text Label 3750 2250 0    50   ~ 0
XSHT
Text Label 3750 2350 0    50   ~ 0
XSGV1
Text Label 3750 2450 0    50   ~ 0
XSGV2
Text Label 3750 3250 0    50   ~ 0
ADC_SDATA
Text Label 3750 3450 0    50   ~ 0
ADC_SL
NoConn ~ 3250 3150
NoConn ~ 3250 3250
NoConn ~ 3250 3350
NoConn ~ 3250 3450
NoConn ~ 3750 3150
$EndSCHEMATC

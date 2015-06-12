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
LIBS:camera
LIBS:AstroCam-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L ADDI7013 U12
U 1 1 557AD8F3
P 2100 2200
F 0 "U12" H 2100 2950 60  0000 C CNN
F 1 "ADDI7013" H 2100 2200 60  0000 C CNN
F 2 "camera:csp-bga-bc-76-3" H 2200 2150 60  0001 C CNN
F 3 "" H 2200 2150 60  0000 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
$Comp
L ADDI7013 U12
U 2 1 557B0AAF
P 6450 2200
F 0 "U12" H 6450 2950 60  0000 C CNN
F 1 "ADDI7013" H 6450 2200 60  0000 C CNN
F 2 "camera:csp-bga-bc-76-3" H 6550 2150 60  0001 C CNN
F 3 "" H 6550 2150 60  0000 C CNN
	2    6450 2200
	1    0    0    -1  
$EndComp
Text HLabel 7500 1650 2    60   Input ~ 0
H1
Text HLabel 7500 1750 2    60   Input ~ 0
H2
Text HLabel 7500 1850 2    60   Input ~ 0
H3
Text HLabel 7500 1950 2    60   Input ~ 0
H4
Text HLabel 7500 2050 2    60   Input ~ 0
HL1
Text HLabel 7500 2150 2    60   Input ~ 0
HL2
Text HLabel 7500 2250 2    60   Input ~ 0
RG1
Text HLabel 7500 2350 2    60   Input ~ 0
RG2
Text HLabel 8650 2500 2    60   Input ~ 0
INPA+
Text HLabel 8650 2700 2    60   Input ~ 0
INPB+
Text HLabel 7500 2700 2    60   Input ~ 0
INPA-
Text HLabel 7500 2800 2    60   Input ~ 0
INPB-
$Comp
L ADDI7013 U12
U 3 1 557B0FDF
P 2100 4550
F 0 "U12" H 2100 5300 60  0000 C CNN
F 1 "ADDI7013" H 2100 4550 60  0000 C CNN
F 2 "camera:csp-bga-bc-76-3" H 2200 4500 60  0001 C CNN
F 3 "" H 2200 4500 60  0000 C CNN
	3    2100 4550
	1    0    0    -1  
$EndComp
$Comp
L C C58
U 1 1 557B103C
P 8200 2500
F 0 "C58" H 8225 2600 50  0000 L CNN
F 1 "0.1u" H 8225 2400 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 8238 2350 30  0001 C CNN
F 3 "" H 8200 2500 60  0000 C CNN
	1    8200 2500
	0    1    1    0   
$EndComp
$Comp
L C C59
U 1 1 557B105D
P 8200 2700
F 0 "C59" H 8225 2800 50  0000 L CNN
F 1 "0.1u" H 8225 2600 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 8238 2550 30  0001 C CNN
F 3 "" H 8200 2700 60  0000 C CNN
	1    8200 2700
	0    1    1    0   
$EndComp
Text HLabel 1250 5900 0    60   Input ~ 0
3V3
$Comp
L C_Small C48
U 1 1 557B1270
P 1550 6050
F 0 "C48" H 1560 6120 50  0000 L CNN
F 1 "0.1uF" H 1560 5970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1550 6050 60  0001 C CNN
F 3 "" H 1550 6050 60  0000 C CNN
	1    1550 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C50
U 1 1 557B1343
P 1850 6050
F 0 "C50" H 1860 6120 50  0000 L CNN
F 1 "0.1uF" H 1860 5970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1850 6050 60  0001 C CNN
F 3 "" H 1850 6050 60  0000 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
Text HLabel 1250 6350 0    60   Input ~ 0
1V8
$Comp
L C_Small C49
U 1 1 557B1F86
P 1550 6500
F 0 "C49" H 1560 6570 50  0000 L CNN
F 1 "0.1uF" H 1560 6420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1550 6500 60  0001 C CNN
F 3 "" H 1550 6500 60  0000 C CNN
	1    1550 6500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C51
U 1 1 557B211B
P 1850 6500
F 0 "C51" H 1860 6570 50  0000 L CNN
F 1 "0.1uF" H 1860 6420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1850 6500 60  0001 C CNN
F 3 "" H 1850 6500 60  0000 C CNN
	1    1850 6500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C53
U 1 1 557B220F
P 2150 6500
F 0 "C53" H 2160 6570 50  0000 L CNN
F 1 "0.1uF" H 2160 6420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2150 6500 60  0001 C CNN
F 3 "" H 2150 6500 60  0000 C CNN
	1    2150 6500
	1    0    0    -1  
$EndComp
Text Label 3550 2750 0    60   ~ 0
GND
$Comp
L C_Small C52
U 1 1 557B2B4B
P 2150 6050
F 0 "C52" H 2160 6120 50  0000 L CNN
F 1 "0.1uF" H 2160 5970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2150 6050 60  0001 C CNN
F 3 "" H 2150 6050 60  0000 C CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C54
U 1 1 557B320A
P 2450 6050
F 0 "C54" H 2460 6120 50  0000 L CNN
F 1 "0.1uF" H 2460 5970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2450 6050 60  0001 C CNN
F 3 "" H 2450 6050 60  0000 C CNN
	1    2450 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C57
U 1 1 557B336A
P 3050 6050
F 0 "C57" H 3060 6120 50  0000 L CNN
F 1 "4.7uF" H 3060 5970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3050 6050 60  0001 C CNN
F 3 "" H 3050 6050 60  0000 C CNN
	1    3050 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C56
U 1 1 557B3531
P 2750 6050
F 0 "C56" H 2760 6120 50  0000 L CNN
F 1 "0.1uF" H 2760 5970 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2750 6050 60  0001 C CNN
F 3 "" H 2750 6050 60  0000 C CNN
	1    2750 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C55
U 1 1 557B39CA
P 2450 6500
F 0 "C55" H 2460 6570 50  0000 L CNN
F 1 "0.1uF" H 2460 6420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2450 6500 60  0001 C CNN
F 3 "" H 2450 6500 60  0000 C CNN
	1    2450 6500
	-1   0    0    1   
$EndComp
Text Label 1450 5900 2    60   ~ 0
3V3
Text Label 1250 6200 2    60   ~ 0
GND
Text Label 2800 4000 0    60   ~ 0
3V3
Text Label 2800 4100 0    60   ~ 0
3V3
Text Label 1400 4000 2    60   ~ 0
3V3
Text Label 1400 4350 2    60   ~ 0
3V3
Text Label 1400 4450 2    60   ~ 0
3V3
Text Label 1400 4550 2    60   ~ 0
3V3
Text Label 1400 4850 2    60   ~ 0
3V3
Text Label 1400 5150 2    60   ~ 0
1V8
Text Label 2800 4400 0    60   ~ 0
1V8
Text Label 2800 4500 0    60   ~ 0
1V8
Text Label 2800 4850 0    60   ~ 0
1V8
Text Label 2800 4950 0    60   ~ 0
1V8
Text Label 2800 5050 0    60   ~ 0
1V8
Text Label 2800 5150 0    60   ~ 0
1V8
Text Label 1250 6650 2    60   ~ 0
GND
Text Label 1300 6350 0    60   ~ 0
1V8
$Comp
L ADDI7013 U12
U 4 1 557B715D
P 4950 4500
F 0 "U12" H 4950 5250 60  0000 C CNN
F 1 "ADDI7013" H 4950 4500 60  0000 C CNN
F 2 "camera:csp-bga-bc-76-3" H 5050 4450 60  0001 C CNN
F 3 "" H 5050 4450 60  0000 C CNN
	4    4950 4500
	1    0    0    -1  
$EndComp
Text Label 4950 5700 0    60   ~ 0
GND
Text Notes 4550 1550 0    60   ~ 0
Analog Differential \nPair Outputs
Text Notes 3750 1450 0    60   ~ 0
Control\n
Text HLabel 3250 2750 0    60   Input ~ 0
GND
$Comp
L CONN_02X12 P3
U 1 1 557AFA24
P 4350 2200
F 0 "P3" H 4350 2850 50  0000 C CNN
F 1 "CONN_02X12" V 4350 2200 50  0000 C CNN
F 2 "w_smd_strip:bb02-hp24" H 4350 1000 60  0001 C CNN
F 3 "" H 4350 1000 60  0000 C CNN
	1    4350 2200
	1    0    0    1   
$EndComp
NoConn ~ 4600 2350
NoConn ~ 4600 2050
Wire Wire Line
	3250 2750 4100 2750
Wire Wire Line
	3550 2750 3550 2800
Wire Wire Line
	7150 1650 7500 1650
Wire Wire Line
	7150 1750 7500 1750
Wire Wire Line
	7150 1850 7500 1850
Wire Wire Line
	7150 1950 7500 1950
Wire Wire Line
	7150 2050 7500 2050
Wire Wire Line
	7150 2150 7500 2150
Wire Wire Line
	7150 2250 7500 2250
Wire Wire Line
	7150 2350 7500 2350
Wire Wire Line
	7150 2500 8050 2500
Wire Wire Line
	7150 2600 7950 2600
Wire Wire Line
	7150 2700 7500 2700
Wire Wire Line
	7150 2800 7500 2800
Wire Wire Line
	7950 2600 7950 2700
Wire Wire Line
	7950 2700 8050 2700
Wire Wire Line
	8650 2700 8350 2700
Wire Wire Line
	8350 2500 8650 2500
Wire Wire Line
	1250 5900 3050 5900
Wire Wire Line
	1550 5900 1550 5950
Connection ~ 1550 5900
Wire Wire Line
	1850 5900 1850 5950
Wire Wire Line
	2150 5900 2150 5950
Connection ~ 1850 5900
Wire Wire Line
	2450 5900 2450 5950
Connection ~ 2150 5900
Wire Wire Line
	2750 5900 2750 5950
Connection ~ 2450 5900
Wire Wire Line
	3050 5900 3050 5950
Connection ~ 2750 5900
Wire Wire Line
	1250 6200 3050 6200
Wire Wire Line
	3050 6200 3050 6150
Wire Wire Line
	2750 6150 2750 6200
Connection ~ 2750 6200
Wire Wire Line
	2450 6150 2450 6200
Connection ~ 2450 6200
Wire Wire Line
	2150 6150 2150 6200
Connection ~ 2150 6200
Wire Wire Line
	1850 6150 1850 6200
Connection ~ 1850 6200
Wire Wire Line
	1550 6150 1550 6200
Connection ~ 1550 6200
Wire Wire Line
	1250 6350 2450 6350
Wire Wire Line
	1550 6350 1550 6400
Wire Wire Line
	1850 6350 1850 6400
Connection ~ 1550 6350
Wire Wire Line
	2150 6350 2150 6400
Connection ~ 1850 6350
Wire Wire Line
	2450 6350 2450 6400
Connection ~ 2150 6350
Wire Wire Line
	1550 6600 1550 6650
Wire Wire Line
	1250 6650 2450 6650
Wire Wire Line
	1850 6650 1850 6600
Connection ~ 1550 6650
Wire Wire Line
	2150 6650 2150 6600
Connection ~ 1850 6650
Wire Wire Line
	2450 6650 2450 6600
Connection ~ 2150 6650
Wire Wire Line
	4250 3900 4250 5400
Connection ~ 4250 4000
Connection ~ 4250 4100
Connection ~ 4250 4200
Connection ~ 4250 4300
Connection ~ 4250 4400
Connection ~ 4250 4500
Connection ~ 4250 4600
Connection ~ 4250 4700
Connection ~ 4250 4800
Connection ~ 4250 4900
Connection ~ 4250 5000
Wire Wire Line
	4250 5400 5650 5400
Connection ~ 4250 5100
Connection ~ 4850 5400
Wire Wire Line
	5650 5400 5650 3900
Connection ~ 5050 5400
Connection ~ 5650 5100
Connection ~ 5650 5000
Connection ~ 5650 4900
Connection ~ 5650 4800
Connection ~ 5650 4700
Connection ~ 5650 4600
Connection ~ 5650 4500
Connection ~ 5650 4400
Connection ~ 5650 4300
Connection ~ 5650 4200
Connection ~ 5650 4100
Connection ~ 5650 4000
Wire Wire Line
	4950 5400 4950 5700
Connection ~ 4950 5400
Wire Wire Line
	4600 1650 5750 1650
Wire Wire Line
	4600 1750 5750 1750
Wire Wire Line
	4600 1850 5750 1850
Wire Wire Line
	4600 1950 5750 1950
Wire Wire Line
	4600 2150 5750 2150
Wire Wire Line
	4600 2250 5750 2250
Wire Wire Line
	4600 2450 5750 2450
Wire Wire Line
	4600 2550 5750 2550
Wire Wire Line
	4600 2650 5750 2650
Wire Wire Line
	4600 2750 5750 2750
Wire Wire Line
	2800 1650 4100 1650
Wire Wire Line
	2800 1750 4100 1750
Wire Wire Line
	2800 1850 4100 1850
Wire Wire Line
	2800 1950 4100 1950
Wire Wire Line
	2800 2050 4100 2050
Wire Wire Line
	2800 2200 3450 2200
Wire Wire Line
	3450 2200 3450 2150
Wire Wire Line
	3450 2150 4100 2150
Wire Wire Line
	2800 2300 3550 2300
Wire Wire Line
	3550 2300 3550 2250
Wire Wire Line
	3550 2250 4100 2250
Wire Wire Line
	2800 2400 3650 2400
Wire Wire Line
	3650 2400 3650 2350
Wire Wire Line
	3650 2350 4100 2350
Wire Wire Line
	2800 2550 2950 2550
Wire Wire Line
	2950 2550 2950 2500
Wire Wire Line
	2950 2500 3750 2500
Wire Wire Line
	3750 2500 3750 2450
Wire Wire Line
	3750 2450 4100 2450
Wire Wire Line
	2800 2650 2900 2650
Wire Wire Line
	2900 2650 2900 2600
Wire Wire Line
	2900 2600 3050 2600
Wire Wire Line
	3050 2600 3050 2550
Wire Wire Line
	3050 2550 4100 2550
Wire Wire Line
	2800 2750 2800 2700
Wire Wire Line
	2800 2700 2950 2700
Wire Wire Line
	2950 2700 2950 2650
Wire Wire Line
	2950 2650 4100 2650
$EndSCHEMATC

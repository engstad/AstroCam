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
LIBS:engstad
LIBS:sony
LIBS:AstroCam-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L C C11
U 1 1 557B103C
P 6900 1600
F 0 "C11" V 6750 1500 50  0000 L CNN
F 1 "0.1u" V 7050 1500 50  0000 L CNN
F 2 "engstad:C0603" H 6938 1450 30  0001 C CNN
F 3 "" H 6900 1600 60  0000 C CNN
	1    6900 1600
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 557B105D
P 6900 2500
F 0 "C12" V 6750 2400 50  0000 L CNN
F 1 "0.1u" V 7050 2400 50  0000 L CNN
F 2 "engstad:C0603" H 6938 2350 30  0001 C CNN
F 3 "" H 6900 2500 60  0000 C CNN
	1    6900 2500
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 557B1270
P 4600 3800
F 0 "C6" H 4610 3870 50  0000 L CNN
F 1 "0.1uF" H 4610 3720 50  0000 L CNN
F 2 "engstad:C0603" H 4600 3800 60  0001 C CNN
F 3 "" H 4600 3800 60  0000 C CNN
	1    4600 3800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 557B1343
P 4850 3800
F 0 "C9" H 4860 3870 50  0000 L CNN
F 1 "0.1uF" H 4860 3720 50  0000 L CNN
F 2 "engstad:C0603" H 4850 3800 60  0001 C CNN
F 3 "" H 4850 3800 60  0000 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 557B1F86
P 4700 4300
F 0 "C8" H 4675 4225 50  0000 R CNN
F 1 "0.1uF" H 4675 4375 50  0000 R CNN
F 2 "engstad:C0603" H 4700 4300 60  0001 C CNN
F 3 "" H 4700 4300 60  0000 C CNN
	1    4700 4300
	-1   0    0    1   
$EndComp
$Comp
L C_Small C7
U 1 1 557B211B
P 4600 5000
F 0 "C7" H 4625 5075 50  0000 L CNN
F 1 "0.1uF" H 4625 4925 50  0000 L CNN
F 2 "engstad:C0603" H 4600 5000 60  0001 C CNN
F 3 "" H 4600 5000 60  0000 C CNN
	1    4600 5000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 557B220F
P 4900 5000
F 0 "C10" H 4910 5070 50  0000 L CNN
F 1 "0.1uF" H 4910 4920 50  0000 L CNN
F 2 "engstad:C0603" H 4900 5000 60  0001 C CNN
F 3 "" H 4900 5000 60  0000 C CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 557B320A
P 2650 3800
F 0 "C2" H 2660 3870 50  0000 L CNN
F 1 "0.1uF" H 2660 3720 50  0000 L CNN
F 2 "engstad:C0603" H 2650 3800 60  0001 C CNN
F 3 "" H 2650 3800 60  0000 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 557B336A
P 2400 4250
F 0 "C1" H 2410 4320 50  0000 L CNN
F 1 "4.7uF" H 2410 4170 50  0000 L CNN
F 2 "engstad:C0603" H 2400 4250 60  0001 C CNN
F 3 "" H 2400 4250 60  0000 C CNN
	1    2400 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 557B3531
P 2650 4250
F 0 "C3" H 2660 4320 50  0000 L CNN
F 1 "0.1uF" H 2660 4170 50  0000 L CNN
F 2 "engstad:C0603" H 2650 4250 60  0001 C CNN
F 3 "" H 2650 4250 60  0000 C CNN
	1    2650 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 557B39CA
P 2650 5100
F 0 "C5" V 2550 5100 50  0000 C CNN
F 1 "0.1uF" V 2750 5100 50  0000 C CNN
F 2 "engstad:C0603" H 2650 5100 60  0001 C CNN
F 3 "" H 2650 5100 60  0000 C CNN
	1    2650 5100
	0    1    1    0   
$EndComp
Text Notes 4450 1300 0    60   ~ 0
Analog Differential \nPair Outputs
Text Notes 1350 1250 0    60   ~ 0
Control\n
Wire Wire Line
	6450 2500 6750 2500
Wire Wire Line
	7350 2500 7050 2500
Wire Wire Line
	7050 1600 7350 1600
Text Label 2200 1750 0    60   ~ 0
GP01
Text Label 2200 1850 0    60   ~ 0
GP02
Text Label 2200 1950 0    60   ~ 0
GP03
Text Label 2200 2050 0    60   ~ 0
GP04
Text Label 2200 2550 0    60   ~ 0
SCK
Text Label 2200 2650 0    60   ~ 0
SDATA
Text Label 2200 2750 0    60   ~ 0
SL
$Comp
L C_Small C4
U 1 1 557E9A62
P 2650 4750
F 0 "C4" V 2550 4750 50  0000 C CNN
F 1 "0.1uF" V 2750 4750 50  0000 C CNN
F 2 "engstad:C0603" H 2650 4750 60  0001 C CNN
F 3 "" H 2650 4750 60  0000 C CNN
	1    2650 4750
	0    1    1    0   
$EndComp
Text Label 5550 1650 0    60   ~ 0
H1
Text Label 5550 1750 0    60   ~ 0
H2
Text Label 5550 2050 0    60   ~ 0
HL1
Text Label 5550 2150 0    60   ~ 0
HL2
Text Label 5550 2250 0    60   ~ 0
RG1
Text Label 5550 2350 0    60   ~ 0
RG2
Text Label 7350 1600 0    60   ~ 0
IN_A+
Text Label 7350 2500 0    60   ~ 0
IN_B+
Text Label 5550 2700 0    60   ~ 0
INP_A-
Text Label 5550 2800 0    60   ~ 0
INP_B-
Text Label 9250 2750 2    60   ~ 0
H1
Text Label 9750 2750 0    60   ~ 0
H2
Text Label 9250 2850 2    60   ~ 0
HL1
Text Label 9750 2850 0    60   ~ 0
HL2
Text Label 9250 2950 2    60   ~ 0
RG1
Text Label 9750 2950 0    60   ~ 0
RG2
Text Label 9550 1500 2    60   ~ 0
IN_A+
Text Label 9550 1400 2    60   ~ 0
IN_A-
Text Label 9550 1600 2    60   ~ 0
IN_B+
Text Label 9550 1700 2    60   ~ 0
IN_B-
Text Label 5550 2500 0    60   ~ 0
INP_A+
Text Label 5550 2600 0    60   ~ 0
INP_B+
Text Label 9550 2000 2    60   ~ 0
GP01
Text Label 9550 2100 2    60   ~ 0
GP02
Text Label 9550 2200 2    60   ~ 0
GP03
Text Label 9550 2300 2    60   ~ 0
GP04
Text Label 9250 3050 2    60   ~ 0
VD
Text Label 9750 3050 0    60   ~ 0
HD
Text Label 6450 2500 2    60   ~ 0
INP_B+
Text Label 6450 1600 2    60   ~ 0
INP_A+
Wire Wire Line
	6450 1600 6750 1600
Text Notes 3350 3400 0    60   ~ 0
Power Input
Text Notes 1950 5450 0    60   ~ 0
Power Ground\n
Text Label 6450 1900 2    60   ~ 0
INP_A-
Text Label 7350 1900 0    60   ~ 0
IN_A-
Wire Wire Line
	6450 1900 7350 1900
Text Label 6450 2750 2    60   ~ 0
INP_B-
Text Label 7350 2750 0    60   ~ 0
IN_B-
Wire Wire Line
	6450 2750 7350 2750
$Comp
L ADDI7013 U1
U 1 1 55E8336C
P 1500 2200
F 0 "U1" H 1250 2200 60  0000 C CNN
F 1 "ADDI7013" H 1500 2950 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 1600 2150 60  0001 C CNN
F 3 "" H 1600 2150 60  0000 C CNN
	1    1500 2200
	1    0    0    -1  
$EndComp
$Comp
L ADDI7013 U1
U 2 1 55E833B5
P 4850 2200
F 0 "U1" H 4850 2200 60  0000 C CNN
F 1 "ADDI7013" H 4850 2950 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 4950 2150 60  0001 C CNN
F 3 "" H 4950 2150 60  0000 C CNN
	2    4850 2200
	1    0    0    -1  
$EndComp
$Comp
L ADDI7013 U1
U 3 1 55E8340E
P 3650 4300
F 0 "U1" H 3650 4300 60  0000 C CNN
F 1 "ADDI7013" H 3650 5050 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 3750 4250 60  0001 C CNN
F 3 "" H 3750 4250 60  0000 C CNN
	3    3650 4300
	1    0    0    -1  
$EndComp
$Comp
L ADDI7013 U1
U 4 1 55E83483
P 3650 6250
F 0 "U1" H 3650 6250 60  0000 C CNN
F 1 "ADDI7013" H 3650 7000 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 3750 6200 60  0001 C CNN
F 3 "" H 3750 6200 60  0000 C CNN
	4    3650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1750 2200 1750
Wire Wire Line
	2200 1850 2200 1850
Wire Wire Line
	2200 1950 2200 1950
Wire Wire Line
	2200 2050 2200 2050
Text GLabel 3700 1650 0    50   Input ~ 0
FPGA-A0+
Text GLabel 3700 1750 0    50   Input ~ 0
FPGA-A0-
Text GLabel 3700 1850 0    50   Input ~ 0
FPGA-A1+
Text GLabel 3700 1950 0    50   Input ~ 0
FPGA-A1-
Text GLabel 3700 2450 0    50   Input ~ 0
FPGA-B0+
Text GLabel 3700 2550 0    50   Input ~ 0
FPGA-B0-
Text GLabel 3700 2650 0    50   Input ~ 0
FPGA-B1+
Text GLabel 3700 2750 0    50   Input ~ 0
FPGA-B1-
Text GLabel 3700 2150 0    50   Input ~ 0
FPGA-CLK+
Text GLabel 3700 2250 0    50   Input ~ 0
FPGA-CLK-
Wire Wire Line
	3700 1650 4150 1650
Wire Wire Line
	3700 1750 4150 1750
Wire Wire Line
	3700 1850 4150 1850
Wire Wire Line
	3700 1950 4150 1950
Wire Wire Line
	3700 2150 4150 2150
Wire Wire Line
	3700 2250 4150 2250
Wire Wire Line
	3700 2450 4150 2450
Wire Wire Line
	3700 2550 4150 2550
Wire Wire Line
	3700 2650 4150 2650
Wire Wire Line
	3700 2750 4150 2750
Text GLabel 2600 2750 2    50   Input ~ 0
ADC-SL
Text GLabel 2600 2550 2    50   Input ~ 0
ADC-SCK
Text GLabel 2600 2650 2    50   Input ~ 0
ADC-SDATA
NoConn ~ 5550 1850
NoConn ~ 5550 1950
Text GLabel 2550 1650 2    50   Input ~ 0
FPGA-CLKOUT
Wire Wire Line
	2550 1650 2200 1650
Text Label 2200 1650 0    50   ~ 0
CLI
Wire Wire Line
	2600 2550 2200 2550
Wire Wire Line
	2600 2650 2200 2650
Wire Wire Line
	2600 2750 2200 2750
Text GLabel 2350 2200 2    50   Input ~ 0
ADC-SYNC/RESET#
Wire Wire Line
	2200 2200 2350 2200
Wire Wire Line
	4350 5600 5000 5600
Wire Wire Line
	4450 5600 4450 6400
Wire Wire Line
	4450 5700 4350 5700
Wire Wire Line
	4450 5800 4350 5800
Connection ~ 4450 5700
Wire Wire Line
	4450 5900 4350 5900
Connection ~ 4450 5800
Wire Wire Line
	4450 6000 4350 6000
Connection ~ 4450 5900
Wire Wire Line
	4450 6100 4350 6100
Connection ~ 4450 6000
Wire Wire Line
	4450 6200 4350 6200
Connection ~ 4450 6100
Wire Wire Line
	4450 6300 4350 6300
Connection ~ 4450 6200
Connection ~ 4450 6300
$Comp
L GNDA #PWR01
U 1 1 56ACE967
P 5000 3950
F 0 "#PWR01" H 5000 3700 50  0001 C CNN
F 1 "GNDA" V 5000 3750 50  0000 C CNN
F 2 "" H 5000 3950 50  0000 C CNN
F 3 "" H 5000 3950 50  0000 C CNN
	1    5000 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 4150 5050 4150
Wire Wire Line
	4350 3650 5050 3650
Wire Wire Line
	4450 3650 4450 3750
Wire Wire Line
	4450 3750 4350 3750
Connection ~ 4450 3650
Wire Wire Line
	4600 3650 4600 3700
Connection ~ 4600 3650
Wire Wire Line
	4850 3650 4850 3700
Connection ~ 4850 3650
Wire Wire Line
	4600 3900 4600 3950
Wire Wire Line
	4600 3950 5000 3950
Wire Wire Line
	4850 3900 4850 3950
Connection ~ 4850 3950
Text GLabel 5050 4150 2    50   Input ~ 0
1V8A
Wire Wire Line
	4350 4250 4450 4250
Wire Wire Line
	4450 4250 4450 4150
Connection ~ 4450 4150
Wire Wire Line
	4700 4150 4700 4200
Connection ~ 4700 4150
Wire Wire Line
	4700 4400 4700 4450
Wire Wire Line
	4700 4450 5000 4450
$Comp
L GNDA #PWR02
U 1 1 56AD0CC7
P 5000 4450
F 0 "#PWR02" H 5000 4200 50  0001 C CNN
F 1 "GNDA" V 5000 4250 50  0000 C CNN
F 2 "" H 5000 4450 50  0000 C CNN
F 3 "" H 5000 4450 50  0000 C CNN
	1    5000 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 4750 4450 4750
Wire Wire Line
	4450 4750 4450 4650
Wire Wire Line
	4350 4650 5050 4650
Connection ~ 4450 4650
Wire Wire Line
	4350 4850 5050 4850
Wire Wire Line
	4450 4850 4450 4950
Wire Wire Line
	4450 4950 4350 4950
Connection ~ 4450 4850
Text GLabel 5050 4650 2    50   Input ~ 0
1V8A
Text GLabel 5050 4850 2    50   Input ~ 0
1V8A
Wire Wire Line
	4600 4650 4600 4900
Connection ~ 4600 4650
Wire Wire Line
	4600 5100 4600 5150
Wire Wire Line
	4600 5150 5000 5150
Wire Wire Line
	4900 5100 4900 5150
Connection ~ 4900 5150
Wire Wire Line
	4900 4850 4900 4900
Connection ~ 4900 4850
$Comp
L GNDA #PWR03
U 1 1 56AD16D4
P 5000 5150
F 0 "#PWR03" H 5000 4900 50  0001 C CNN
F 1 "GNDA" V 5000 4950 50  0000 C CNN
F 2 "" H 5000 5150 50  0000 C CNN
F 3 "" H 5000 5150 50  0000 C CNN
	1    5000 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3650 2950 3650
Wire Wire Line
	2650 3650 2650 3700
Connection ~ 2650 3650
Wire Wire Line
	2650 3900 2650 3950
$Comp
L GND #PWR04
U 1 1 56AD1E50
P 2300 3950
F 0 "#PWR04" H 2300 3700 50  0001 C CNN
F 1 "GND" V 2300 3750 50  0000 C CNN
F 2 "" H 2300 3950 50  0000 C CNN
F 3 "" H 2300 3950 50  0000 C CNN
	1    2300 3950
	0    1    1    0   
$EndComp
Text GLabel 2250 4950 0    50   Input ~ 0
1V8A
Wire Wire Line
	2250 4950 2950 4950
$Comp
L GNDA #PWR05
U 1 1 56AD24EA
P 2300 5100
F 0 "#PWR05" H 2300 4850 50  0001 C CNN
F 1 "GNDA" V 2300 4900 50  0000 C CNN
F 2 "" H 2300 5100 50  0000 C CNN
F 3 "" H 2300 5100 50  0000 C CNN
	1    2300 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 5100 2850 4950
Connection ~ 2850 4950
Wire Wire Line
	2950 4000 2850 4000
Wire Wire Line
	2850 4000 2850 4200
Wire Wire Line
	2300 4100 2950 4100
Connection ~ 2850 4100
Wire Wire Line
	2850 4200 2950 4200
$Comp
L GND #PWR06
U 1 1 56AD315B
P 2300 4400
F 0 "#PWR06" H 2300 4150 50  0001 C CNN
F 1 "GND" V 2300 4200 50  0000 C CNN
F 2 "" H 2300 4400 50  0000 C CNN
F 3 "" H 2300 4400 50  0000 C CNN
	1    2300 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 4400 2650 4400
Wire Wire Line
	2400 4400 2400 4350
Wire Wire Line
	2650 4400 2650 4350
Connection ~ 2400 4400
Wire Wire Line
	2400 4150 2400 4100
Connection ~ 2400 4100
Wire Wire Line
	2650 4150 2650 4100
Connection ~ 2650 4100
Wire Wire Line
	2300 4600 2950 4600
Wire Wire Line
	2850 4600 2850 4750
Connection ~ 2850 4600
Wire Wire Line
	2300 4750 2550 4750
$Comp
L GND #PWR07
U 1 1 56AD3F5C
P 2300 4750
F 0 "#PWR07" H 2300 4500 50  0001 C CNN
F 1 "GND" V 2300 4550 50  0000 C CNN
F 2 "" H 2300 4750 50  0000 C CNN
F 3 "" H 2300 4750 50  0000 C CNN
	1    2300 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4750 2750 4750
Wire Wire Line
	2850 5100 2750 5100
Wire Wire Line
	2550 5100 2300 5100
Wire Wire Line
	4450 6400 4350 6400
$Comp
L GNDA #PWR08
U 1 1 56AD4D13
P 5000 5600
F 0 "#PWR08" H 5000 5350 50  0001 C CNN
F 1 "GNDA" V 5000 5400 50  0000 C CNN
F 2 "" H 5000 5600 50  0000 C CNN
F 3 "" H 5000 5600 50  0000 C CNN
	1    5000 5600
	0    -1   -1   0   
$EndComp
Connection ~ 4450 5600
Wire Wire Line
	4350 6500 5000 6500
Wire Wire Line
	4450 6500 4450 6700
Wire Wire Line
	4450 6600 4350 6600
Wire Wire Line
	4450 6700 4350 6700
Connection ~ 4450 6600
Connection ~ 4450 6500
$Comp
L GNDA #PWR09
U 1 1 56AD4FFA
P 5000 6500
F 0 "#PWR09" H 5000 6250 50  0001 C CNN
F 1 "GNDA" V 5000 6300 50  0000 C CNN
F 2 "" H 5000 6500 50  0000 C CNN
F 3 "" H 5000 6500 50  0000 C CNN
	1    5000 6500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 6800 5000 6800
Wire Wire Line
	4450 6800 4450 6900
Wire Wire Line
	4450 6900 4350 6900
Connection ~ 4450 6800
$Comp
L GND #PWR010
U 1 1 56AD5197
P 5000 6800
F 0 "#PWR010" H 5000 6550 50  0001 C CNN
F 1 "GND" V 5000 6600 50  0000 C CNN
F 2 "" H 5000 6800 50  0000 C CNN
F 3 "" H 5000 6800 50  0000 C CNN
	1    5000 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3950 2300 3950
$Comp
L GND #PWR011
U 1 1 56AD543C
P 3650 7250
F 0 "#PWR011" H 3650 7000 50  0001 C CNN
F 1 "GND" V 3650 7050 50  0000 C CNN
F 2 "" H 3650 7250 50  0000 C CNN
F 3 "" H 3650 7250 50  0000 C CNN
	1    3650 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7150 3550 7200
Wire Wire Line
	3550 7200 3750 7200
Wire Wire Line
	3650 7200 3650 7250
Wire Wire Line
	3750 7200 3750 7150
Connection ~ 3650 7200
Wire Wire Line
	2850 6450 2950 6450
Wire Wire Line
	2850 5650 2850 6450
Wire Wire Line
	2850 6350 2950 6350
Wire Wire Line
	2850 6250 2950 6250
Connection ~ 2850 6350
Wire Wire Line
	2850 6150 2950 6150
Connection ~ 2850 6250
Wire Wire Line
	2850 6050 2950 6050
Connection ~ 2850 6150
Wire Wire Line
	2850 5950 2950 5950
Connection ~ 2850 6050
Wire Wire Line
	2300 5650 2950 5650
Connection ~ 2850 5950
Wire Wire Line
	2950 5750 2850 5750
Connection ~ 2850 5750
Wire Wire Line
	2950 5850 2850 5850
Connection ~ 2850 5850
$Comp
L GNDA #PWR012
U 1 1 56AD5C0B
P 2300 5650
F 0 "#PWR012" H 2300 5400 50  0001 C CNN
F 1 "GNDA" V 2300 5450 50  0000 C CNN
F 2 "" H 2300 5650 50  0000 C CNN
F 3 "" H 2300 5650 50  0000 C CNN
	1    2300 5650
	0    1    1    0   
$EndComp
Connection ~ 2850 5650
Wire Wire Line
	2850 6550 2850 6850
Wire Wire Line
	2850 6850 2950 6850
Wire Wire Line
	2950 6750 2850 6750
Connection ~ 2850 6750
Wire Wire Line
	2950 6650 2850 6650
Connection ~ 2850 6650
Wire Wire Line
	2250 6550 2950 6550
Connection ~ 2850 6550
$Comp
L GND #PWR013
U 1 1 56AD6414
P 2250 6550
F 0 "#PWR013" H 2250 6300 50  0001 C CNN
F 1 "GND" V 2250 6350 50  0000 C CNN
F 2 "" H 2250 6550 50  0000 C CNN
F 3 "" H 2250 6550 50  0000 C CNN
	1    2250 6550
	0    1    1    0   
$EndComp
Text Notes 1800 4600 2    50   ~ 0
Can be 1.8V
$Comp
L CONN_01X04 P2
U 1 1 56C11C8E
P 9750 1550
F 0 "P2" H 9827 1588 50  0000 L CNN
F 1 "CONN_01X04" H 9827 1496 50  0000 L CNN
F 2 "w_pin_strip:pin_strip_4" H 9750 1550 50  0001 C CNN
F 3 "" H 9750 1550 50  0000 C CNN
	1    9750 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 56C11E25
P 9750 2150
F 0 "P3" H 9827 2188 50  0000 L CNN
F 1 "CONN_01X04" H 9827 2096 50  0000 L CNN
F 2 "w_pin_strip:pin_strip_4" H 9750 2150 50  0001 C CNN
F 3 "" H 9750 2150 50  0000 C CNN
	1    9750 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 56C11F17
P 9500 2900
F 0 "P1" H 9500 3266 50  0000 C CNN
F 1 "CONN_02X04" H 9500 3174 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_4x2" H 9500 1700 50  0001 C CNN
F 3 "" H 9500 1700 50  0000 C CNN
	1    9500 2900
	1    0    0    -1  
$EndComp
Text GLabel 2350 2300 2    50   Input ~ 0
FV
Text GLabel 2350 2400 2    50   Input ~ 0
LV
Wire Wire Line
	2200 2300 2350 2300
Wire Wire Line
	2200 2400 2350 2400
Text Label 2200 2300 0    50   ~ 0
VD
Text Label 2200 2400 0    50   ~ 0
HD
$Comp
L +3V3 #PWR014
U 1 1 56FB3873
P 2300 3650
F 0 "#PWR014" H 2300 3500 50  0001 C CNN
F 1 "+3V3" V 2318 3777 50  0000 L CNN
F 2 "" H 2300 3650 50  0000 C CNN
F 3 "" H 2300 3650 50  0000 C CNN
	1    2300 3650
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR015
U 1 1 56FB38D5
P 2300 4100
F 0 "#PWR015" H 2300 3950 50  0001 C CNN
F 1 "+3V3" V 2318 4227 50  0000 L CNN
F 2 "" H 2300 4100 50  0000 C CNN
F 3 "" H 2300 4100 50  0000 C CNN
	1    2300 4100
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR016
U 1 1 56FB3A6D
P 2300 4600
F 0 "#PWR016" H 2300 4450 50  0001 C CNN
F 1 "+3V3" V 2318 4727 50  0000 L CNN
F 2 "" H 2300 4600 50  0000 C CNN
F 3 "" H 2300 4600 50  0000 C CNN
	1    2300 4600
	0    -1   -1   0   
$EndComp
Text GLabel 5050 3650 2    50   Input ~ 0
3V3A
$EndSCHEMATC

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
L ADDI7013-RESCUE-AstroCam U?
U 1 1 557AD8F3
P 2100 2200
AR Path="/557AD8F3" Ref="U?"  Part="1" 
AR Path="/557AD230/557AD8F3" Ref="U11"  Part="1" 
F 0 "U11" H 2100 2950 60  0000 C CNN
F 1 "ADDI7013" H 2100 2200 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 2200 2150 60  0001 C CNN
F 3 "" H 2200 2150 60  0000 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
$Comp
L ADDI7013-RESCUE-AstroCam U?
U 2 1 557B0AAF
P 6450 2200
AR Path="/557B0AAF" Ref="U?"  Part="2" 
AR Path="/557AD230/557B0AAF" Ref="U11"  Part="2" 
F 0 "U11" H 6450 2950 60  0000 C CNN
F 1 "ADDI7013" H 6450 2200 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 6550 2150 60  0001 C CNN
F 3 "" H 6550 2150 60  0000 C CNN
	2    6450 2200
	1    0    0    -1  
$EndComp
$Comp
L ADDI7013-RESCUE-AstroCam U?
U 3 1 557B0FDF
P 2100 4550
AR Path="/557B0FDF" Ref="U?"  Part="3" 
AR Path="/557AD230/557B0FDF" Ref="U11"  Part="3" 
F 0 "U11" H 2100 5300 60  0000 C CNN
F 1 "ADDI7013" H 2100 4550 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 2200 4500 60  0001 C CNN
F 3 "" H 2200 4500 60  0000 C CNN
	3    2100 4550
	1    0    0    -1  
$EndComp
$Comp
L C C48
U 1 1 557B103C
P 8200 2500
F 0 "C48" H 8225 2600 50  0000 L CNN
F 1 "0.1u" H 8225 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8238 2350 30  0001 C CNN
F 3 "" H 8200 2500 60  0000 C CNN
	1    8200 2500
	0    1    1    0   
$EndComp
$Comp
L C C49
U 1 1 557B105D
P 8200 2700
F 0 "C49" H 8225 2800 50  0000 L CNN
F 1 "0.1u" H 8225 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8238 2550 30  0001 C CNN
F 3 "" H 8200 2700 60  0000 C CNN
	1    8200 2700
	0    1    1    0   
$EndComp
$Comp
L C_Small C38
U 1 1 557B1270
P 1550 6050
F 0 "C38" H 1560 6120 50  0000 L CNN
F 1 "0.1uF" H 1560 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1550 6050 60  0001 C CNN
F 3 "" H 1550 6050 60  0000 C CNN
	1    1550 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C40
U 1 1 557B1343
P 1850 6050
F 0 "C40" H 1860 6120 50  0000 L CNN
F 1 "0.1uF" H 1860 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1850 6050 60  0001 C CNN
F 3 "" H 1850 6050 60  0000 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C39
U 1 1 557B1F86
P 1550 6500
F 0 "C39" H 1560 6570 50  0000 L CNN
F 1 "0.1uF" H 1560 6420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1550 6500 60  0001 C CNN
F 3 "" H 1550 6500 60  0000 C CNN
	1    1550 6500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C41
U 1 1 557B211B
P 1850 6500
F 0 "C41" H 1860 6570 50  0000 L CNN
F 1 "0.1uF" H 1860 6420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1850 6500 60  0001 C CNN
F 3 "" H 1850 6500 60  0000 C CNN
	1    1850 6500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C43
U 1 1 557B220F
P 2150 6500
F 0 "C43" H 2160 6570 50  0000 L CNN
F 1 "0.1uF" H 2160 6420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2150 6500 60  0001 C CNN
F 3 "" H 2150 6500 60  0000 C CNN
	1    2150 6500
	1    0    0    -1  
$EndComp
Text Label 10150 1150 2    60   ~ 0
GND
$Comp
L C_Small C42
U 1 1 557B320A
P 2150 6050
F 0 "C42" H 2160 6120 50  0000 L CNN
F 1 "0.1uF" H 2160 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2150 6050 60  0001 C CNN
F 3 "" H 2150 6050 60  0000 C CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C47
U 1 1 557B336A
P 3050 6050
F 0 "C47" H 3060 6120 50  0000 L CNN
F 1 "4.7uF" H 3060 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3050 6050 60  0001 C CNN
F 3 "" H 3050 6050 60  0000 C CNN
	1    3050 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C46
U 1 1 557B3531
P 2750 6050
F 0 "C46" H 2760 6120 50  0000 L CNN
F 1 "0.1uF" H 2760 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2750 6050 60  0001 C CNN
F 3 "" H 2750 6050 60  0000 C CNN
	1    2750 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C45
U 1 1 557B39CA
P 2450 6500
F 0 "C45" H 2460 6570 50  0000 L CNN
F 1 "0.1uF" H 2460 6420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2450 6500 60  0001 C CNN
F 3 "" H 2450 6500 60  0000 C CNN
	1    2450 6500
	1    0    0    -1  
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
L ADDI7013-RESCUE-AstroCam U?
U 4 1 557B715D
P 4950 4500
AR Path="/557B715D" Ref="U?"  Part="4" 
AR Path="/557AD230/557B715D" Ref="U11"  Part="4" 
F 0 "U11" H 4950 5250 60  0000 C CNN
F 1 "ADDI7013" H 4950 4500 60  0000 C CNN
F 2 "engstad:csp-bga-bc-76-3" H 5050 4450 60  0001 C CNN
F 3 "" H 5050 4450 60  0000 C CNN
	4    4950 4500
	1    0    0    -1  
$EndComp
Text Label 4950 5700 0    60   ~ 0
GND
Text Notes 5750 1100 0    60   ~ 0
Analog Differential \nPair Outputs
Text Notes 2200 1050 0    60   ~ 0
Control\n
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
Connection ~ 1850 5900
Wire Wire Line
	2150 5900 2150 5950
Wire Wire Line
	2750 5900 2750 5950
Connection ~ 2150 5900
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
	5650 5400 5650 3850
Connection ~ 5050 5400
Connection ~ 5650 5050
Connection ~ 5650 4950
Connection ~ 5650 4850
Connection ~ 5650 4750
Connection ~ 5650 4650
Connection ~ 5650 4550
Connection ~ 5650 4450
Connection ~ 5650 4350
Connection ~ 5650 4250
Connection ~ 5650 4150
Connection ~ 5650 4050
Connection ~ 5650 3950
Wire Wire Line
	4950 5400 4950 5700
Connection ~ 4950 5400
Connection ~ 5650 5150
Wire Wire Line
	2800 1650 3350 1650
Wire Wire Line
	3350 1650 3350 1350
Wire Wire Line
	2800 1750 3450 1750
Wire Wire Line
	3450 1750 3450 1350
Wire Wire Line
	2800 1850 3550 1850
Wire Wire Line
	3550 1850 3550 1350
Wire Wire Line
	2800 1950 3650 1950
Wire Wire Line
	3650 1950 3650 1350
Wire Wire Line
	2800 2050 3750 2050
Wire Wire Line
	3750 2050 3750 1350
Wire Wire Line
	2800 2200 5050 2200
Wire Wire Line
	5750 1650 3850 1650
Wire Wire Line
	3850 1650 3850 1350
Wire Wire Line
	5750 1750 3950 1750
Wire Wire Line
	3950 1750 3950 1350
Wire Wire Line
	5750 1850 4050 1850
Wire Wire Line
	4050 1850 4050 1350
Wire Wire Line
	5750 1950 4150 1950
Wire Wire Line
	4150 1950 4150 1350
Wire Wire Line
	5750 2150 4250 2150
Wire Wire Line
	4250 2150 4250 1350
Wire Wire Line
	5750 2250 4350 2250
Wire Wire Line
	4350 2250 4350 1350
Wire Wire Line
	5750 2450 4450 2450
Wire Wire Line
	4450 2450 4450 1350
Wire Wire Line
	5750 2550 4550 2550
Wire Wire Line
	4550 2550 4550 1350
Wire Wire Line
	5750 2650 4650 2650
Wire Wire Line
	4650 2650 4650 1350
Wire Wire Line
	5750 2750 4750 2750
Wire Wire Line
	4750 2750 4750 1350
Text Label 5500 1650 0    60   ~ 0
A0+
Text Label 5500 1750 0    60   ~ 0
A0-
Text Label 5500 1850 0    60   ~ 0
A1+
Text Label 5500 1950 0    60   ~ 0
A1-
Text Label 5500 2150 0    60   ~ 0
TCLK+
Text Label 5500 2250 0    60   ~ 0
TCLK-
Text Label 5500 2450 0    60   ~ 0
B0+
Text Label 5500 2550 0    60   ~ 0
B0-
Text Label 5500 2650 0    60   ~ 0
B1+
Text Label 5500 2750 0    60   ~ 0
B1-
Text Label 2800 1650 0    60   ~ 0
CLI
Text Label 2800 1750 0    60   ~ 0
GP01
Text Label 2800 1850 0    60   ~ 0
GP02
Text Label 2800 1950 0    60   ~ 0
GP03
Text Label 2800 2050 0    60   ~ 0
GP04
Text Label 2800 2200 0    60   ~ 0
SYNC
Text Label 2800 2300 0    60   ~ 0
VD
Text Label 2800 2400 0    60   ~ 0
HD
Text Label 2800 2550 0    60   ~ 0
SCK
Text Label 2800 2650 0    60   ~ 0
SDATA
Text Label 2800 2750 0    60   ~ 0
SL
$Comp
L C_Small C44
U 1 1 557E9A62
P 2450 6050
F 0 "C44" H 2460 6120 50  0000 L CNN
F 1 "0.1uF" H 2460 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2450 6050 60  0001 C CNN
F 3 "" H 2450 6050 60  0000 C CNN
	1    2450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5950 2450 5900
Connection ~ 2450 5900
Wire Wire Line
	2450 6150 2450 6200
Connection ~ 2450 6200
Text Label 7200 1650 0    60   ~ 0
H1
Text Label 7200 1750 0    60   ~ 0
H2
Text Label 7200 1850 0    60   ~ 0
H3
Text Label 7200 1950 0    60   ~ 0
H4
Text Label 7200 2050 0    60   ~ 0
HL1
Text Label 7200 2150 0    60   ~ 0
HL2
Text Label 7200 2250 0    60   ~ 0
RG1
Text Label 7200 2350 0    60   ~ 0
RG2
Text Label 8450 2500 0    60   ~ 0
IN_A+
Text Label 8450 2700 0    60   ~ 0
IN_B+
Text Label 7200 2700 0    60   ~ 0
IN_A-
Text Label 7200 2800 0    60   ~ 0
IN_B-
Text Label 10150 1350 2    60   ~ 0
3V3
Text Label 10150 1250 2    60   ~ 0
1V8
Text Label 10150 2350 2    60   ~ 0
H1
Text Label 10150 2250 2    60   ~ 0
H2
Text Label 10150 2150 2    60   ~ 0
H3
Text Label 10150 2050 2    60   ~ 0
H4
Text Label 10150 2450 2    60   ~ 0
HL1
Text Label 10150 1950 2    60   ~ 0
HL2
Text Label 10150 2550 2    60   ~ 0
RG1
Text Label 10150 1850 2    60   ~ 0
RG2
Text Label 10150 1550 2    60   ~ 0
IN_A+
Text Label 10150 1450 2    60   ~ 0
IN_A-
Text Label 10150 1650 2    60   ~ 0
IN_B+
Text Label 10150 1750 2    60   ~ 0
IN_B-
Wire Wire Line
	4850 1350 4850 2300
Wire Wire Line
	5050 2200 5050 1350
Wire Wire Line
	4950 2400 4950 1350
Wire Wire Line
	4850 2300 2800 2300
Wire Wire Line
	2800 2400 4950 2400
Text Label 6800 4600 0    60   ~ 0
GND
Text Label 6800 4200 0    60   ~ 0
3V3
Text Label 6800 5050 0    60   ~ 0
1V8
Wire Wire Line
	6800 4600 6450 4600
Wire Wire Line
	6450 4200 6800 4200
Wire Wire Line
	6800 5050 6450 5050
$Comp
L PWR_FLAG #FLG04
U 1 1 5580E99E
P 6450 4600
F 0 "#FLG04" H 6450 4695 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 4780 50  0000 C CNN
F 2 "" H 6450 4600 60  0000 C CNN
F 3 "" H 6450 4600 60  0000 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 5580E9DE
P 6450 4200
F 0 "#FLG05" H 6450 4295 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 4380 50  0000 C CNN
F 2 "" H 6450 4200 60  0000 C CNN
F 3 "" H 6450 4200 60  0000 C CNN
	1    6450 4200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 5580EA1E
P 6450 5050
F 0 "#FLG06" H 6450 5145 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 5230 50  0000 C CNN
F 2 "" H 6450 5050 60  0000 C CNN
F 3 "" H 6450 5050 60  0000 C CNN
	1    6450 5050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X18 P3
U 1 1 55886037
P 10350 2000
F 0 "P3" H 10350 2950 50  0000 C CNN
F 1 "CONN_01X18" V 10450 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x18" H 10350 2000 60  0001 C CNN
F 3 "" H 10350 2000 60  0000 C CNN
	1    10350 2000
	1    0    0    -1  
$EndComp
Text Label 10150 2650 2    60   ~ 0
SL
Text Label 10150 2850 2    60   ~ 0
SDATA
Text Label 10150 2750 2    60   ~ 0
SCK
$Comp
L CONN_01X18 P2
U 1 1 5588671F
P 4200 1150
F 0 "P2" H 4200 2100 50  0000 C CNN
F 1 "CONN_01X18" V 4300 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x18" H 4200 1150 60  0001 C CNN
F 3 "" H 4200 1150 60  0000 C CNN
	1    4200 1150
	0    -1   -1   0   
$EndComp
Text Label 7200 2500 0    60   ~ 0
INP_A+
Text Label 7200 2600 0    60   ~ 0
INP_B+
$EndSCHEMATC

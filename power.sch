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
Sheet 2 4
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
L C C4
U 1 1 557696BB
P 1300 1500
F 0 "C4" H 1325 1600 50  0000 L CNN
F 1 "1.0uF" H 1325 1400 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1338 1350 30  0001 C CNN
F 3 "" H 1300 1500 60  0000 C CNN
	1    1300 1500
	1    0    0    -1  
$EndComp
$Comp
L ZENER D1
U 1 1 557696DE
P 1700 1500
F 0 "D1" H 1700 1600 50  0000 C CNN
F 1 "9V/5W" H 1700 1400 50  0000 C CNN
F 2 "w_smd_diode:sod80c" H 1700 1500 60  0001 C CNN
F 3 "" H 1700 1500 60  0000 C CNN
	1    1700 1500
	0    1    1    0   
$EndComp
$Comp
L TPS2420 U3
U 1 1 55769CFD
P 3300 1450
F 0 "U3" H 2850 1900 60  0000 C CNN
F 1 "TPS2420" H 3300 1500 60  0000 C CNN
F 2 "w_smd_qfn:pvqfn-n16" H 3350 1400 60  0001 C CNN
F 3 "" H 3350 1400 60  0000 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 55769D9D
P 1950 950
F 0 "R6" V 2030 950 50  0000 C CNN
F 1 "10.0k" V 1850 950 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 1880 950 30  0001 C CNN
F 3 "" H 1950 950 30  0000 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 55769E20
P 2450 1000
F 0 "R8" V 2530 1000 50  0000 C CNN
F 1 "10.0k" V 2350 1000 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 2380 1000 30  0001 C CNN
F 3 "" H 2450 1000 30  0000 C CNN
	1    2450 1000
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5576A07B
P 3100 2200
F 0 "R9" V 3100 2200 50  0000 C CNN
F 1 "51.1k" V 3000 2200 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 3030 2200 30  0001 C CNN
F 3 "" H 3100 2200 30  0000 C CNN
	1    3100 2200
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5576A098
P 3300 2200
F 0 "R10" V 3300 2200 50  0000 C CNN
F 1 "68.1k" V 3200 2200 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 3230 2200 30  0001 C CNN
F 3 "" H 3300 2200 30  0000 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5576A0C4
P 3500 2200
F 0 "C11" H 3525 2300 50  0000 L CNN
F 1 "1.0F/11mOhm" H 3525 2100 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3538 2050 30  0001 C CNN
F 3 "" H 3500 2200 60  0000 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5576A372
P 4250 2200
F 0 "R13" V 4250 2200 50  0000 C CNN
F 1 "53.6k" V 4150 2200 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 4180 2200 30  0001 C CNN
F 3 "" H 4250 2200 30  0000 C CNN
	1    4250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1350 1300 650 
Wire Wire Line
	3150 650  3150 850 
Wire Wire Line
	3250 650  3250 850 
Connection ~ 3150 650 
Wire Wire Line
	3350 650  3350 850 
Connection ~ 3250 650 
Connection ~ 3350 650 
Wire Wire Line
	2450 650  2450 850 
Connection ~ 2450 650 
Wire Wire Line
	2450 1150 2450 1250
Wire Wire Line
	2450 1250 2600 1250
Wire Wire Line
	1950 650  1950 800 
Connection ~ 1950 650 
Wire Wire Line
	1950 1100 1950 1350
Wire Wire Line
	1950 1350 2600 1350
Connection ~ 1300 650 
Wire Wire Line
	1700 1300 1700 650 
Connection ~ 1700 650 
Wire Wire Line
	2600 1600 2300 1600
Wire Wire Line
	2150 1450 2600 1450
Wire Wire Line
	3100 2050 3100 2050
Wire Wire Line
	3300 2050 3300 2050
Wire Wire Line
	3500 2050 3500 2050
Wire Wire Line
	4000 1650 4250 1650
Wire Wire Line
	4250 1650 4250 2050
Wire Wire Line
	4000 1250 4000 1450
Wire Wire Line
	4000 1350 4650 1350
Connection ~ 4000 1350
Text Label 4350 1350 0    60   ~ 0
5V5
Text Label 6800 850  2    60   ~ 0
5V5
Wire Wire Line
	6800 850  7300 850 
$Comp
L LM3674 U5
U 1 1 5576A949
P 7900 950
F 0 "U5" H 7900 1200 60  0000 C CNN
F 1 "LM3674" H 7900 950 60  0000 C CNN
F 2 "w_smd_trans:sot23-5" H 7900 950 60  0001 C CNN
F 3 "" H 7900 950 60  0000 C CNN
	1    7900 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1050 7300 1050
Wire Wire Line
	7300 850  7300 1050
Connection ~ 7300 850 
$Comp
L C C20
U 1 1 5576AC50
P 6950 1250
F 0 "C20" H 6975 1350 50  0000 L CNN
F 1 "4.7F/5.0mOhm" H 6975 1150 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6988 1100 30  0001 C CNN
F 3 "" H 6950 1250 60  0000 C CNN
	1    6950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1100 6950 850 
Connection ~ 6950 850 
Wire Wire Line
	6950 1400 6950 1750
Text Label 6750 1750 2    60   ~ 0
GND
Wire Wire Line
	7900 1750 7900 1350
Connection ~ 6950 1750
$Comp
L INDUCTOR L5
U 1 1 5576AF83
P 8850 850
F 0 "L5" V 8800 850 50  0000 C CNN
F 1 "2.2H/140ohm" V 8950 850 50  0000 C CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 8850 850 60  0001 C CNN
F 3 "" H 8850 850 60  0000 C CNN
	1    8850 850 
	0    -1   -1   0   
$EndComp
$Comp
L C C25
U 1 1 5576AFFC
P 9300 1100
F 0 "C25" H 9325 1200 50  0000 L CNN
F 1 "9.0pF" H 9325 1000 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 9338 950 30  0001 C CNN
F 3 "" H 9300 1100 60  0000 C CNN
	1    9300 1100
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5576B074
P 9600 1100
F 0 "R20" V 9680 1100 50  0000 C CNN
F 1 "402.0k/63mW" V 9750 1100 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 9530 1100 30  0001 C CNN
F 3 "" H 9600 1100 30  0000 C CNN
	1    9600 1100
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5576B204
P 9450 1550
F 0 "R19" V 9530 1550 50  0000 C CNN
F 1 "100k/63.0mW" V 9600 1500 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 9380 1550 30  0001 C CNN
F 3 "" H 9450 1550 30  0000 C CNN
	1    9450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 850  10400 850 
Wire Wire Line
	9300 850  9300 950 
Wire Wire Line
	9600 850  9600 950 
Connection ~ 9300 850 
Wire Wire Line
	8450 1300 9600 1300
Connection ~ 9300 1300
Wire Wire Line
	8450 850  8550 850 
Connection ~ 7900 1750
Connection ~ 9600 850 
Wire Wire Line
	9450 1300 9450 1400
Connection ~ 9450 1300
Wire Wire Line
	9450 1750 9450 1700
Connection ~ 9300 1750
Wire Wire Line
	6750 1750 10200 1750
Wire Wire Line
	8450 1050 8450 1300
Wire Notes Line
	9050 500  9000 500 
Wire Wire Line
	9600 1300 9600 1250
Wire Wire Line
	9300 1250 9300 1300
$Comp
L TPS56x200 U6
U 1 1 5576CAC3
P 8250 2250
F 0 "U6" H 7900 2500 60  0000 C CNN
F 1 "TPS56x200" H 8250 2250 60  0000 C CNN
F 2 "w_smd_trans:sot23-6" H 8250 2250 60  0001 C CNN
F 3 "" H 8250 2250 60  0000 C CNN
	1    8250 2250
	1    0    0    -1  
$EndComp
Text Label 6800 2150 2    60   ~ 0
5V5
Wire Wire Line
	6800 2150 7600 2150
Wire Wire Line
	7600 2250 7500 2250
Wire Wire Line
	7500 2250 7500 2150
Connection ~ 7500 2150
Wire Wire Line
	6950 2150 6950 2400
Connection ~ 6950 2150
$Comp
L C_Small C21
U 1 1 5576CC47
P 6950 2500
F 0 "C21" H 6960 2570 50  0000 L CNN
F 1 "10.0F/3.0mOhm" H 6960 2420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6950 2500 60  0001 C CNN
F 3 "" H 6950 2500 60  0000 C CNN
	1    6950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2750 7600 2350
Wire Wire Line
	6800 2750 10250 2750
Wire Wire Line
	6950 2750 6950 2600
Connection ~ 6950 2750
Text Label 6800 2750 2    60   ~ 0
GND
$Comp
L L_Small L6
U 1 1 5576CE77
P 9550 2050
F 0 "L6" V 9500 2000 50  0000 L CNN
F 1 "1.5H/14.4mOhm" V 9650 1750 50  0000 L CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 9550 2050 60  0001 C CNN
F 3 "" H 9550 2050 60  0000 C CNN
	1    9550 2050
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C26
U 1 1 5576D10F
P 9300 2200
F 0 "C26" H 9310 2270 50  0000 L CNN
F 1 "100nF" H 9310 2120 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 9300 2200 60  0001 C CNN
F 3 "" H 9300 2200 60  0000 C CNN
	1    9300 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 2250 9100 2250
Wire Wire Line
	9100 2250 9100 2350
Wire Wire Line
	9100 2350 9300 2350
Wire Wire Line
	8950 2150 8950 2050
Wire Wire Line
	8950 2050 9450 2050
Wire Wire Line
	9300 2100 9300 2050
Connection ~ 9300 2050
Wire Wire Line
	9300 2350 9300 2300
Wire Wire Line
	8950 2350 9050 2350
Wire Wire Line
	9050 2350 9050 2450
Wire Wire Line
	9050 2450 9850 2450
Wire Wire Line
	9850 2350 9850 2500
$Comp
L R_Small R21
U 1 1 5576D63E
P 9850 2250
F 0 "R21" H 9880 2270 50  0000 L CNN
F 1 "5.76k" H 9880 2210 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9850 2250 60  0001 C CNN
F 3 "" H 9850 2250 60  0000 C CNN
	1    9850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2050 10400 2050
Wire Wire Line
	9850 2050 9850 2150
Wire Wire Line
	9850 2750 9850 2700
Connection ~ 7600 2750
$Comp
L R_Small R22
U 1 1 5576D906
P 9850 2600
F 0 "R22" H 9880 2620 50  0000 L CNN
F 1 "10.0k" H 9880 2560 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9850 2600 60  0001 C CNN
F 3 "" H 9850 2600 60  0000 C CNN
	1    9850 2600
	1    0    0    -1  
$EndComp
Connection ~ 9850 2450
Connection ~ 9850 2050
Wire Wire Line
	10250 2050 10250 2300
Connection ~ 10250 2050
$Comp
L C C32
U 1 1 5576DC53
P 10250 2450
F 0 "C32" H 10275 2550 50  0000 L CNN
F 1 "47F/3Mohm" H 10275 2350 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 10288 2300 30  0001 C CNN
F 3 "" H 10250 2450 60  0000 C CNN
	1    10250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2750 10250 2600
Connection ~ 9850 2750
Wire Wire Line
	10200 1750 10200 1550
Connection ~ 9450 1750
$Comp
L C C31
U 1 1 5576DFB7
P 10200 1400
F 0 "C31" H 10225 1500 50  0000 L CNN
F 1 "10F/9Mohm" H 10225 1300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 10238 1250 30  0001 C CNN
F 3 "" H 10200 1400 60  0000 C CNN
	1    10200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 850  10200 1250
Connection ~ 10200 850 
$Comp
L TPS56x200 U7
U 1 1 5576E780
P 8250 3250
F 0 "U7" H 7900 3500 60  0000 C CNN
F 1 "TPS56x200" H 8250 3250 60  0000 C CNN
F 2 "w_smd_trans:sot23-6" H 8250 3250 60  0001 C CNN
F 3 "" H 8250 3250 60  0000 C CNN
	1    8250 3250
	1    0    0    -1  
$EndComp
Text Label 6800 3150 2    60   ~ 0
5V5
Wire Wire Line
	6800 3150 7600 3150
Wire Wire Line
	7600 3250 7500 3250
Wire Wire Line
	7500 3250 7500 3150
Connection ~ 7500 3150
Wire Wire Line
	6950 3150 6950 3400
Connection ~ 6950 3150
$Comp
L C_Small C22
U 1 1 5576E78D
P 6950 3500
F 0 "C22" H 6960 3570 50  0000 L CNN
F 1 "10.0F/3.0mOhm" H 6960 3420 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6950 3500 60  0001 C CNN
F 3 "" H 6950 3500 60  0000 C CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3750 7600 3350
Wire Wire Line
	6800 3750 10250 3750
Wire Wire Line
	6950 3750 6950 3600
Connection ~ 6950 3750
Text Label 6800 3750 2    60   ~ 0
GND
$Comp
L L_Small L7
U 1 1 5576E798
P 9550 3050
F 0 "L7" V 9500 3000 50  0000 L CNN
F 1 "1.5H/14.4mOhm" V 9650 2750 50  0000 L CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 9550 3050 60  0001 C CNN
F 3 "" H 9550 3050 60  0000 C CNN
	1    9550 3050
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C27
U 1 1 5576E79E
P 9300 3200
F 0 "C27" H 9310 3270 50  0000 L CNN
F 1 "100nF" H 9310 3120 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 9300 3200 60  0001 C CNN
F 3 "" H 9300 3200 60  0000 C CNN
	1    9300 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 3250 9100 3250
Wire Wire Line
	9100 3250 9100 3350
Wire Wire Line
	9100 3350 9300 3350
Wire Wire Line
	8950 3150 8950 3050
Wire Wire Line
	8950 3050 9450 3050
Wire Wire Line
	9300 3100 9300 3050
Connection ~ 9300 3050
Wire Wire Line
	9300 3350 9300 3300
Wire Wire Line
	8950 3350 9050 3350
Wire Wire Line
	9050 3350 9050 3450
Wire Wire Line
	9050 3450 9850 3450
Wire Wire Line
	9850 3350 9850 3500
$Comp
L R_Small R23
U 1 1 5576E7B0
P 9850 3250
F 0 "R23" H 9880 3270 50  0000 L CNN
F 1 "5.76k" H 9880 3210 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9850 3250 60  0001 C CNN
F 3 "" H 9850 3250 60  0000 C CNN
	1    9850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3050 10400 3050
Wire Wire Line
	9850 3050 9850 3150
Wire Wire Line
	9850 3750 9850 3700
Connection ~ 7600 3750
$Comp
L R_Small R24
U 1 1 5576E7BA
P 9850 3600
F 0 "R24" H 9880 3620 50  0000 L CNN
F 1 "10.0k" H 9880 3560 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9850 3600 60  0001 C CNN
F 3 "" H 9850 3600 60  0000 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
Connection ~ 9850 3450
Connection ~ 9850 3050
Wire Wire Line
	10250 3050 10250 3300
Connection ~ 10250 3050
$Comp
L C C33
U 1 1 5576E7C4
P 10250 3450
F 0 "C33" H 10275 3550 50  0000 L CNN
F 1 "47F/3Mohm" H 10275 3350 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 10288 3300 30  0001 C CNN
F 3 "" H 10250 3450 60  0000 C CNN
	1    10250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3750 10250 3600
Connection ~ 9850 3750
$Comp
L TPS56x200 U8
U 1 1 5576ECD1
P 8250 4200
F 0 "U8" H 7900 4450 60  0000 C CNN
F 1 "TPS56x200" H 8250 4200 60  0000 C CNN
F 2 "w_smd_trans:sot23-6" H 8250 4200 60  0001 C CNN
F 3 "" H 8250 4200 60  0000 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
Text Label 6800 4100 2    60   ~ 0
5V5
Wire Wire Line
	6800 4100 7600 4100
Wire Wire Line
	7600 4200 7500 4200
Wire Wire Line
	7500 4200 7500 4100
Connection ~ 7500 4100
Wire Wire Line
	6950 4100 6950 4350
Connection ~ 6950 4100
$Comp
L C_Small C23
U 1 1 5576ECDE
P 6950 4450
F 0 "C23" H 6960 4520 50  0000 L CNN
F 1 "10.0F/3.0mOhm" H 6960 4370 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6950 4450 60  0001 C CNN
F 3 "" H 6950 4450 60  0000 C CNN
	1    6950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4700 7600 4300
Wire Wire Line
	6800 4700 10250 4700
Wire Wire Line
	6950 4700 6950 4550
Connection ~ 6950 4700
Text Label 6800 4700 2    60   ~ 0
GND
$Comp
L L_Small L8
U 1 1 5576ECE9
P 9550 4000
F 0 "L8" V 9500 3950 50  0000 L CNN
F 1 "2.2H/13.0mOhm" V 9650 3700 50  0000 L CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 9550 4000 60  0001 C CNN
F 3 "" H 9550 4000 60  0000 C CNN
	1    9550 4000
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C28
U 1 1 5576ECEF
P 9300 4150
F 0 "C28" H 9310 4220 50  0000 L CNN
F 1 "100nF" H 9310 4070 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 9300 4150 60  0001 C CNN
F 3 "" H 9300 4150 60  0000 C CNN
	1    9300 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 4200 9100 4200
Wire Wire Line
	9100 4200 9100 4300
Wire Wire Line
	9100 4300 9300 4300
Wire Wire Line
	8950 4100 8950 4000
Wire Wire Line
	8950 4000 9450 4000
Wire Wire Line
	9300 4050 9300 4000
Connection ~ 9300 4000
Wire Wire Line
	9300 4300 9300 4250
Wire Wire Line
	8950 4300 9050 4300
Wire Wire Line
	9050 4300 9050 4400
Wire Wire Line
	9050 4400 9850 4400
Wire Wire Line
	9850 4300 9850 4450
$Comp
L R_Small R25
U 1 1 5576ED01
P 9850 4200
F 0 "R25" H 9880 4220 50  0000 L CNN
F 1 "13.7k" H 9880 4160 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9850 4200 60  0001 C CNN
F 3 "" H 9850 4200 60  0000 C CNN
	1    9850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4000 10400 4000
Wire Wire Line
	9850 4000 9850 4100
Wire Wire Line
	9850 4700 9850 4650
Connection ~ 7600 4700
$Comp
L R_Small R26
U 1 1 5576ED0B
P 9850 4550
F 0 "R26" H 9880 4570 50  0000 L CNN
F 1 "10.0k" H 9880 4510 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9850 4550 60  0001 C CNN
F 3 "" H 9850 4550 60  0000 C CNN
	1    9850 4550
	1    0    0    -1  
$EndComp
Connection ~ 9850 4400
Connection ~ 9850 4000
Wire Wire Line
	10250 4000 10250 4250
Connection ~ 10250 4000
$Comp
L C C34
U 1 1 5576ED15
P 10250 4400
F 0 "C34" H 10275 4500 50  0000 L CNN
F 1 "47F/3Mohm" H 10275 4300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 10288 4250 30  0001 C CNN
F 3 "" H 10250 4400 60  0000 C CNN
	1    10250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4700 10250 4550
Connection ~ 9850 4700
Text Label 10800 3850 0    60   ~ 0
1V8
Text Label 6800 5000 2    60   ~ 0
5V5
Wire Wire Line
	6950 5000 6950 5350
Connection ~ 6950 5000
$Comp
L C_Small C24
U 1 1 55770001
P 6950 5450
F 0 "C24" H 6960 5520 50  0000 L CNN
F 1 "2.2F/4.9Mohm" H 6750 5300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 6950 5450 60  0001 C CNN
F 3 "" H 6950 5450 60  0000 C CNN
	1    6950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5900 10500 5900
Wire Wire Line
	6950 5900 6950 5550
Connection ~ 6950 5900
Text Label 6800 5900 2    60   ~ 0
GND
$Comp
L LMR62014 U9
U 1 1 55770174
P 8250 5400
F 0 "U9" H 7900 5650 60  0000 C CNN
F 1 "LMR62014" H 8250 5500 60  0000 C CNN
F 2 "w_smd_trans:sot23-5" H 8250 5400 60  0001 C CNN
F 3 "" H 8250 5400 60  0000 C CNN
	1    8250 5400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L4
U 1 1 55770587
P 8250 5000
F 0 "L4" V 8200 5000 50  0000 C CNN
F 1 "12.0H/210Mohm" V 8350 5000 50  0000 C CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 8250 5000 60  0001 C CNN
F 3 "" H 8250 5000 60  0000 C CNN
	1    8250 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5000 7950 5000
$Comp
L R R16
U 1 1 55770934
P 7350 5250
F 0 "R16" V 7430 5250 50  0000 C CNN
F 1 "1M" V 7350 5250 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 7280 5250 30  0001 C CNN
F 3 "" H 7350 5250 30  0000 C CNN
	1    7350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5400 7350 5500
Wire Wire Line
	7350 5500 7600 5500
Wire Wire Line
	7350 5000 7350 5100
Connection ~ 7350 5000
Wire Wire Line
	7600 5000 7600 5300
Connection ~ 7600 5000
Wire Wire Line
	8250 5800 8250 5900
Connection ~ 8250 5900
Wire Wire Line
	8950 5300 8950 5000
Wire Wire Line
	8550 5000 9200 5000
Connection ~ 8950 5000
$Comp
L ZENER D3
U 1 1 557711E7
P 9400 5000
F 0 "D3" H 9400 5100 50  0000 C CNN
F 1 "ZENER" H 9400 4900 50  0000 C CNN
F 2 "w_smd_diode:sod80c" H 9400 5000 60  0001 C CNN
F 3 "" H 9400 5000 60  0000 C CNN
	1    9400 5000
	-1   0    0    1   
$EndComp
$Comp
L R_Small R17
U 1 1 55771299
P 9050 5700
F 0 "R17" H 9080 5720 50  0000 L CNN
F 1 "13.3k" H 9080 5660 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 9050 5700 60  0001 C CNN
F 3 "" H 9050 5700 60  0000 C CNN
	1    9050 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5800 9050 5900
Connection ~ 9050 5900
$Comp
L R R18
U 1 1 5577142C
P 9400 5250
F 0 "R18" V 9480 5250 50  0000 C CNN
F 1 "118k" V 9400 5250 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 9330 5250 30  0001 C CNN
F 3 "" H 9400 5250 30  0000 C CNN
	1    9400 5250
	0    1    1    0   
$EndComp
$Comp
L C C29
U 1 1 55771508
P 9400 5500
F 0 "C29" V 9450 5550 50  0000 L CNN
F 1 "270pF" V 9250 5400 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 9438 5350 30  0001 C CNN
F 3 "" H 9400 5500 60  0000 C CNN
	1    9400 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 5500 9250 5500
Wire Wire Line
	9050 5500 9050 5600
Connection ~ 9050 5500
Wire Wire Line
	9150 5500 9150 5250
Wire Wire Line
	9150 5250 9250 5250
Connection ~ 9150 5500
Wire Wire Line
	9600 5000 9850 5000
Wire Wire Line
	9750 5000 9750 5550
Wire Wire Line
	9750 5500 9550 5500
$Comp
L C C30
U 1 1 55771DF9
P 9750 5700
F 0 "C30" H 9775 5800 50  0000 L CNN
F 1 "4.7F/2Mohm" H 9775 5600 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 9788 5550 30  0001 C CNN
F 3 "" H 9750 5700 60  0000 C CNN
	1    9750 5700
	1    0    0    -1  
$EndComp
Connection ~ 9750 5500
Wire Wire Line
	9550 5250 9750 5250
Connection ~ 9750 5250
Wire Wire Line
	9750 5850 9750 5900
Connection ~ 9750 5900
$Comp
L INDUCTOR L9
U 1 1 55772262
P 10150 5000
F 0 "L9" V 10100 5000 50  0000 C CNN
F 1 "100nH/20Mohm" V 10250 5000 50  0000 C CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 10150 5000 60  0001 C CNN
F 3 "" H 10150 5000 60  0000 C CNN
	1    10150 5000
	0    -1   -1   0   
$EndComp
$Comp
L C C35
U 1 1 557722C6
P 10500 5400
F 0 "C35" H 10525 5500 50  0000 L CNN
F 1 "220nF/220Mohm" H 10525 5300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 10538 5250 30  0001 C CNN
F 3 "" H 10500 5400 60  0000 C CNN
	1    10500 5400
	1    0    0    -1  
$EndComp
Connection ~ 9750 5000
Wire Wire Line
	10450 5000 10650 5000
Wire Wire Line
	10500 5000 10500 5250
Wire Wire Line
	10500 5900 10500 5550
Connection ~ 10500 5000
Text Label 10950 4750 0    60   ~ 0
12V
Text Label 850  2650 2    60   ~ 0
5V5
Wire Wire Line
	850  2650 4450 2650
Wire Wire Line
	1050 2650 1050 2800
$Comp
L C C3
U 1 1 557742EC
P 1050 2950
F 0 "C3" H 1075 3050 50  0000 L CNN
F 1 "4.7F/6Mohm" H 550 2850 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1088 2800 30  0001 C CNN
F 3 "" H 1050 2950 60  0000 C CNN
	1    1050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3100 1050 3200
Text Label 850  3200 2    60   ~ 0
GND
$Comp
L C C5
U 1 1 55774623
P 1350 2950
F 0 "C5" H 1375 3050 50  0000 L CNN
F 1 "220nF" H 1375 2850 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1388 2800 30  0001 C CNN
F 3 "" H 1350 2950 60  0000 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3200 1350 3100
Wire Wire Line
	850  3200 1350 3200
Wire Wire Line
	1350 2650 1350 2800
Connection ~ 1050 2650
Wire Wire Line
	1850 2650 1850 2800
Connection ~ 1350 2650
$Comp
L R R5
U 1 1 55774A6A
P 1850 2950
F 0 "R5" V 1930 2950 50  0000 C CNN
F 1 "10k" V 1850 2950 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 1780 2950 30  0001 C CNN
F 3 "" H 1850 2950 30  0000 C CNN
	1    1850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3350 1300 4200
Wire Wire Line
	1300 4000 1000 4000
$Comp
L C C1
U 1 1 55774CE4
P 1000 4350
F 0 "C1" H 1025 4450 50  0000 L CNN
F 1 "56nF" H 1025 4250 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1038 4200 30  0001 C CNN
F 3 "" H 1000 4350 60  0000 C CNN
	1    1000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4000 1000 4200
$Comp
L R R3
U 1 1 5577506F
P 1300 4350
F 0 "R3" V 1380 4350 50  0000 C CNN
F 1 "3.57k" V 1300 4350 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 1230 4350 30  0001 C CNN
F 3 "" H 1300 4350 30  0000 C CNN
	1    1300 4350
	1    0    0    -1  
$EndComp
Connection ~ 1300 4000
Wire Wire Line
	1000 4500 1000 4850
Wire Wire Line
	1300 4500 1300 4850
$Comp
L LM25088 U2
U 1 1 55775468
P 2900 3650
F 0 "U2" H 2650 4150 60  0000 C CNN
F 1 "LM25088" H 2900 3700 60  0000 C CNN
F 2 "camera:htssop-16" H 2950 3650 60  0001 C CNN
F 3 "" H 2950 3650 60  0000 C CNN
	1    2900 3650
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5577572A
P 1550 4350
F 0 "C7" H 1575 4450 50  0000 L CNN
F 1 "22nF" H 1575 4250 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1588 4200 30  0001 C CNN
F 3 "" H 1550 4350 60  0000 C CNN
	1    1550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4850 1550 4500
Wire Wire Line
	2300 3900 2300 4200
$Comp
L R R7
U 1 1 55775B57
P 2300 4350
F 0 "R7" V 2380 4350 50  0000 C CNN
F 1 "10.2k" V 2300 4350 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 2230 4350 30  0001 C CNN
F 3 "" H 2300 4350 30  0000 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 55775D05
P 2050 4350
F 0 "C9" H 2075 4450 50  0000 L CNN
F 1 "56nF" H 2075 4250 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 2088 4200 30  0001 C CNN
F 3 "" H 2050 4350 60  0000 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3800 2050 3800
Wire Wire Line
	2050 3800 2050 4200
Wire Wire Line
	2300 3450 1550 3450
Wire Wire Line
	1550 3450 1550 4200
$Comp
L R R4
U 1 1 5577629E
P 1800 3750
F 0 "R4" V 1880 3750 50  0000 C CNN
F 1 "453k" V 1800 3750 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 1730 3750 30  0001 C CNN
F 3 "" H 1800 3750 30  0000 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3600 2300 3600
Wire Wire Line
	2300 3700 1950 3700
Wire Wire Line
	1950 3700 1950 3950
Wire Wire Line
	1950 3950 1800 3950
Wire Wire Line
	1800 3900 1800 4200
$Comp
L C C8
U 1 1 557765DA
P 1800 4350
F 0 "C8" H 1825 4450 50  0000 L CNN
F 1 "100nF" H 1825 4250 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1838 4200 30  0001 C CNN
F 3 "" H 1800 4350 60  0000 C CNN
	1    1800 4350
	1    0    0    -1  
$EndComp
Connection ~ 1800 3950
Wire Wire Line
	2800 4850 2800 4400
Wire Wire Line
	1800 4850 1800 4500
Wire Wire Line
	2050 4850 2050 4500
Wire Wire Line
	2300 4850 2300 4500
Wire Wire Line
	1000 4850 6100 4850
Connection ~ 1300 4850
Connection ~ 1550 4850
Connection ~ 1800 4850
Connection ~ 2050 4850
Connection ~ 2300 4850
Connection ~ 1050 3200
Wire Wire Line
	1300 3350 2300 3350
Connection ~ 1850 2650
$Comp
L R R11
U 1 1 5577D365
P 3350 4400
F 0 "R11" V 3430 4400 50  0000 C CNN
F 1 "27k" V 3350 4400 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 3280 4400 30  0001 C CNN
F 3 "" H 3350 4400 30  0000 C CNN
	1    3350 4400
	0    1    1    0   
$EndComp
$Comp
L C C14
U 1 1 5577D4AF
P 3750 4400
F 0 "C14" H 3775 4500 50  0000 L CNN
F 1 "1.5nF" H 3775 4300 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3788 4250 30  0001 C CNN
F 3 "" H 3750 4400 60  0000 C CNN
	1    3750 4400
	0    -1   -1   0   
$EndComp
$Comp
L C C12
U 1 1 5577D68A
P 3550 4600
F 0 "C12" H 3575 4700 50  0000 L CNN
F 1 "68pF" H 3575 4500 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3588 4450 30  0001 C CNN
F 3 "" H 3550 4600 60  0000 C CNN
	1    3550 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 4400 3200 4400
Wire Wire Line
	3050 4400 3050 4600
Wire Wire Line
	3050 4600 3400 4600
Wire Wire Line
	3500 4400 3600 4400
Wire Wire Line
	4000 4600 3700 4600
Wire Wire Line
	4000 4050 4000 4600
Wire Wire Line
	4000 4400 3900 4400
Wire Wire Line
	4000 4050 3500 4050
Connection ~ 4000 4400
Wire Wire Line
	1850 3100 1850 3350
Connection ~ 1850 3350
Wire Wire Line
	2900 2650 2900 3000
Connection ~ 2900 2650
$Comp
L C C15
U 1 1 5577F607
P 3850 3150
F 0 "C15" H 3875 3250 50  0000 L CNN
F 1 "100nF" H 3875 3050 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3888 3000 30  0001 C CNN
F 3 "" H 3850 3150 60  0000 C CNN
	1    3850 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 3350 3500 2900
Wire Wire Line
	3500 2900 3850 2900
Wire Wire Line
	3850 2900 3850 3000
Wire Wire Line
	3500 3550 4800 3550
Wire Wire Line
	3850 3300 3850 3550
Connection ~ 3850 3550
Wire Wire Line
	3500 3450 4050 3450
Wire Wire Line
	4050 3450 4050 3250
$Comp
L Q_NMOS_DGS Q1
U 1 1 5577FEC0
P 4350 3250
F 0 "Q1" H 4650 3300 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 5000 3200 50  0000 R CNN
F 2 "w_smd_trans:sot23" H 4550 3350 29  0001 C CNN
F 3 "" H 4350 3250 60  0000 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3550 4450 3450
Wire Wire Line
	4450 2650 4450 3050
$Comp
L ZENERsmall D2
U 1 1 55780224
P 4450 3750
F 0 "D2" H 4450 3850 40  0000 C CNN
F 1 "ZENERsmall" H 4450 3650 30  0000 C CNN
F 2 "w_smd_diode:sod80c" H 4450 3750 60  0001 C CNN
F 3 "" H 4450 3750 60  0000 C CNN
	1    4450 3750
	-1   0    0    1   
$EndComp
Connection ~ 4450 3550
Wire Wire Line
	4650 3550 4650 3750
Connection ~ 4650 3550
$Comp
L L_Small L1
U 1 1 55780564
P 4900 3550
F 0 "L1" H 4930 3590 50  0000 L CNN
F 1 "22H" H 4930 3510 50  0000 L CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 4900 3550 60  0001 C CNN
F 3 "" H 4900 3550 60  0000 C CNN
	1    4900 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3950 5100 3950
Wire Wire Line
	5100 3950 5100 3550
Wire Wire Line
	5000 3550 5650 3550
$Comp
L R R12
U 1 1 55780B2E
P 4100 3750
F 0 "R12" V 4100 3750 50  0000 C CNN
F 1 "82M/1W" V 4050 3450 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 4030 3750 30  0001 C CNN
F 3 "" H 4100 3750 30  0000 C CNN
	1    4100 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3750 3500 3650
Wire Wire Line
	3500 3650 4300 3650
Wire Wire Line
	4300 3650 4300 3750
Wire Wire Line
	4250 3750 4350 3750
Connection ~ 4300 3750
Wire Wire Line
	4650 3750 4550 3750
Wire Wire Line
	3950 3750 3950 3900
Wire Wire Line
	3950 3850 3500 3850
Wire Wire Line
	3950 3900 4200 3900
Wire Wire Line
	4200 3900 4200 4850
Connection ~ 2800 4850
Connection ~ 3950 3850
$Comp
L R R14
U 1 1 557815FD
P 4500 4200
F 0 "R14" V 4580 4200 50  0000 C CNN
F 1 "7.87k" V 4500 4200 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 4430 4200 30  0001 C CNN
F 3 "" H 4500 4200 30  0000 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 557816E2
P 4500 4600
F 0 "R15" V 4580 4600 50  0000 C CNN
F 1 "1.65k" V 4500 4600 50  0000 C CNN
F 2 "w_smd_resistors:r_0805" V 4430 4600 30  0001 C CNN
F 3 "" H 4500 4600 30  0000 C CNN
	1    4500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4850 4500 4750
Connection ~ 4200 4850
Wire Wire Line
	4500 4350 4500 4450
Wire Wire Line
	4500 4400 4100 4400
Wire Wire Line
	4100 4400 4100 4250
Wire Wire Line
	4100 4250 4000 4250
Connection ~ 4000 4250
Connection ~ 4500 4400
Wire Wire Line
	4500 4050 4500 3950
Connection ~ 4500 3950
Wire Wire Line
	4850 4850 4850 4700
Connection ~ 4500 4850
$Comp
L C C16
U 1 1 5578229D
P 4850 4550
F 0 "C16" H 4875 4650 50  0000 L CNN
F 1 "1.0F/20Mohm" H 4875 4450 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 4888 4400 30  0001 C CNN
F 3 "" H 4850 4550 60  0000 C CNN
	1    4850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4400 4850 4250
Text Label 4850 4250 0    60   ~ 0
5V5
Wire Wire Line
	5500 3250 5500 4400
Wire Wire Line
	5500 4250 5750 4250
Connection ~ 5100 3550
Connection ~ 5500 4250
$Comp
L CP1 C17
U 1 1 557829B7
P 5500 4550
F 0 "C17" H 5525 4650 50  0000 L CNN
F 1 "15F" H 5525 4450 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 5500 4550 60  0001 C CNN
F 3 "" H 5500 4550 60  0000 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4850 5500 4700
Connection ~ 4850 4850
$Comp
L C C18
U 1 1 55782C73
P 5750 4550
F 0 "C18" H 5775 4650 50  0000 L CNN
F 1 "1.0F" H 5775 4450 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 5788 4400 30  0001 C CNN
F 3 "" H 5750 4550 60  0000 C CNN
	1    5750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4850 5750 4700
Connection ~ 5500 4850
Wire Wire Line
	5750 4250 5750 4400
Text Label 5500 3250 0    60   ~ 0
GND
Connection ~ 5500 3550
$Comp
L L_Small L3
U 1 1 55783364
P 5750 3550
F 0 "L3" H 5780 3590 50  0000 L CNN
F 1 "100nH" H 5780 3510 50  0000 L CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 5750 3550 60  0001 C CNN
F 3 "" H 5750 3550 60  0000 C CNN
	1    5750 3550
	0    -1   -1   0   
$EndComp
$Comp
L C C19
U 1 1 557835EE
P 5950 3850
F 0 "C19" H 5975 3950 50  0000 L CNN
F 1 "1.0F" H 5975 3750 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 5988 3700 30  0001 C CNN
F 3 "" H 5950 3850 60  0000 C CNN
	1    5950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3550 5950 3550
Wire Wire Line
	5950 3550 5950 3700
Wire Wire Line
	5950 4850 5950 4000
Connection ~ 5750 4850
Connection ~ 5950 4850
$Comp
L LMZ10500 U1
U 1 1 55789A9B
P 2250 5650
F 0 "U1" H 2000 5950 60  0000 C CNN
F 1 "LMZ10500" H 2250 5650 60  0000 C CNN
F 2 "camera:llp-8" H 2250 5650 60  0001 C CNN
F 3 "" H 2250 5650 60  0000 C CNN
	1    2250 5650
	1    0    0    -1  
$EndComp
Text Label 750  5200 2    60   ~ 0
5V5
Wire Wire Line
	750  5200 2250 5200
Wire Wire Line
	1000 5200 1000 5550
Connection ~ 1000 5200
$Comp
L C C2
U 1 1 5578A2A2
P 1000 5700
F 0 "C2" H 1025 5800 50  0000 L CNN
F 1 "10.0F/9Mohm" H 450 5600 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1038 5550 30  0001 C CNN
F 3 "" H 1000 5700 60  0000 C CNN
	1    1000 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5850 1000 6150
$Comp
L R_Small R2
U 1 1 5578ABE1
P 1200 5950
F 0 "R2" H 1230 5970 50  0000 L CNN
F 1 "105k" H 1230 5910 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 1200 5950 60  0001 C CNN
F 3 "" H 1200 5950 60  0000 C CNN
	1    1200 5950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 5578AC96
P 1500 5950
F 0 "C6" H 1510 6020 50  0000 L CNN
F 1 "470pF" H 1510 5870 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 1500 5950 60  0001 C CNN
F 3 "" H 1500 5950 60  0000 C CNN
	1    1500 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6150 1200 6050
Connection ~ 1200 6150
Wire Wire Line
	1500 6150 1500 6050
Connection ~ 1500 6150
Wire Wire Line
	1200 5750 1200 5850
Wire Wire Line
	1200 5800 1550 5800
Wire Wire Line
	1500 5800 1500 5850
Connection ~ 1500 5800
$Comp
L R_Small R1
U 1 1 5578B9D3
P 1200 5650
F 0 "R1" H 1230 5670 50  0000 L CNN
F 1 "80.6k" H 1230 5610 50  0000 L CNN
F 2 "w_smd_resistors:r_0805" H 1200 5650 60  0001 C CNN
F 3 "" H 1200 5650 60  0000 C CNN
	1    1200 5650
	1    0    0    -1  
$EndComp
Connection ~ 1200 5800
Wire Wire Line
	3050 5750 2950 5750
Wire Wire Line
	2950 5600 3450 5600
Connection ~ 3050 5600
Wire Wire Line
	3050 5750 3050 5600
$Comp
L C C10
U 1 1 5578C89D
P 3300 5900
F 0 "C10" H 3325 6000 50  0000 L CNN
F 1 "10.0uF/9.0Mohm" H 2650 5750 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3338 5750 30  0001 C CNN
F 3 "" H 3300 5900 60  0000 C CNN
	1    3300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6150 3300 6050
Wire Wire Line
	3300 5600 3300 5750
Connection ~ 3300 5600
NoConn ~ 1550 5650
Wire Wire Line
	1200 5550 1200 5500
Wire Wire Line
	1200 5500 1550 5500
Connection ~ 2100 6150
Connection ~ 2250 6150
Connection ~ 2400 6150
Wire Wire Line
	800  6150 3300 6150
Text Label 800  6150 2    60   ~ 0
GND
Connection ~ 1000 6150
Wire Wire Line
	1300 2350 1300 1650
Wire Wire Line
	1700 1700 1700 2350
Connection ~ 1700 2350
Wire Wire Line
	2150 1450 2150 2350
Connection ~ 2150 2350
Wire Wire Line
	2300 1600 2300 2350
Connection ~ 2300 2350
Wire Wire Line
	2450 1700 2450 2350
Connection ~ 2450 2350
Wire Wire Line
	900  2350 4250 2350
Connection ~ 3500 2350
Connection ~ 3300 2350
Connection ~ 3100 2350
Wire Wire Line
	2450 1700 2600 1700
Connection ~ 1300 2350
Text HLabel 900  650  0    60   Input ~ 0
V_BATT
Text HLabel 900  2350 0    60   Input ~ 0
GND
Text Label 1100 2350 0    60   ~ 0
GND
Text HLabel 6100 4850 2    60   Input ~ 0
-7V
Text HLabel 3450 5600 2    60   Input ~ 0
3V3
Text HLabel 10400 850  2    60   Input ~ 0
2V5
Text HLabel 10400 2050 2    60   Input ~ 0
1V2_1
Text HLabel 10400 3050 2    60   Input ~ 0
1V2_2
Text HLabel 10400 4000 2    60   Input ~ 0
1V8
Text HLabel 10650 5000 2    60   Input ~ 0
12V
$Comp
L INDUCTOR L2
U 1 1 5579AC3C
P 5050 6050
F 0 "L2" V 5000 6050 50  0000 C CNN
F 1 "2.0uH/0.024Ohm" V 5150 6050 50  0000 C CNN
F 2 "w_smd_inductors:inductor_smd_0805" H 5050 6050 60  0001 C CNN
F 3 "" H 5050 6050 60  0000 C CNN
	1    5050 6050
	0    -1   -1   0   
$EndComp
$Comp
L C C13
U 1 1 5579AFC4
P 3700 7000
F 0 "C13" H 3725 7100 50  0000 L CNN
F 1 "2.20uF/2.80Mohm" H 3725 6900 50  0000 L CNN
F 2 "w_smd_cap:c_0603" H 3738 6850 30  0001 C CNN
F 3 "" H 3700 7000 60  0000 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
Text HLabel 6450 6700 2    60   Input ~ 0
5V0
$Comp
L TPS63002 U4
U 1 1 5579D52A
P 5050 6800
F 0 "U4" H 5050 7300 60  0000 C CNN
F 1 "TPS63002" H 5050 6800 60  0000 C CNN
F 2 "" H 5050 6800 60  0001 C CNN
F 3 "" H 5050 6800 60  0000 C CNN
	1    5050 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6450 4250 6450
Wire Wire Line
	4250 6450 4250 6050
Wire Wire Line
	4250 6050 4750 6050
Wire Wire Line
	5350 6050 5900 6050
Wire Wire Line
	3500 6600 4400 6600
Wire Wire Line
	4250 6600 4250 7050
Wire Wire Line
	4250 6750 4400 6750
Connection ~ 4250 6600
Wire Wire Line
	4250 6900 4400 6900
Connection ~ 4250 6750
Wire Wire Line
	4250 7050 4400 7050
Connection ~ 4250 6900
Wire Wire Line
	5700 6450 5900 6450
Wire Wire Line
	5900 6450 5900 6050
Wire Wire Line
	5700 6950 5900 6950
Wire Wire Line
	5900 6950 5900 6700
Wire Wire Line
	5700 6700 6450 6700
Connection ~ 5900 6700
Wire Wire Line
	5700 7200 5900 7200
Wire Wire Line
	5900 7200 5900 7500
Wire Wire Line
	5900 7500 3500 7500
Wire Wire Line
	4400 7200 4250 7200
Wire Wire Line
	4250 7200 4250 7500
Connection ~ 5050 7500
Wire Wire Line
	3700 6600 3700 6850
Connection ~ 3700 6600
Wire Wire Line
	3700 7500 3700 7150
Connection ~ 4250 7500
Text Label 3500 6600 2    60   ~ 0
5V5
Connection ~ 3700 7500
Text Label 3500 7500 2    60   ~ 0
GND
Text HLabel 4650 1350 2    60   Input ~ 0
5V5
Wire Wire Line
	900  650  3450 650 
Wire Wire Line
	3450 650  3450 850 
$Comp
L PWR_FLAG #FLG01
U 1 1 557D748F
P 10400 4000
F 0 "#FLG01" H 10400 4095 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 4180 50  0000 C CNN
F 2 "" H 10400 4000 60  0000 C CNN
F 3 "" H 10400 4000 60  0000 C CNN
	1    10400 4000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 557D789B
P 3450 5600
F 0 "#FLG02" H 3450 5695 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 5780 50  0000 C CNN
F 2 "" H 3450 5600 60  0000 C CNN
F 3 "" H 3450 5600 60  0000 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 557D8CC1
P 900 650
F 0 "#FLG03" H 900 745 50  0001 C CNN
F 1 "PWR_FLAG" H 900 830 50  0000 C CNN
F 2 "" H 900 650 60  0000 C CNN
F 3 "" H 900 650 60  0000 C CNN
	1    900  650 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 3250 4150 3250
$Comp
L PWR_FLAG #FLG04
U 1 1 557DC7C3
P 900 2350
F 0 "#FLG04" H 900 2445 50  0001 C CNN
F 1 "PWR_FLAG" H 900 2530 50  0000 C CNN
F 2 "" H 900 2350 60  0000 C CNN
F 3 "" H 900 2350 60  0000 C CNN
	1    900  2350
	-1   0    0    1   
$EndComp
$EndSCHEMATC

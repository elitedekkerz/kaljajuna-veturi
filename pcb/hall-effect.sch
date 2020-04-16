EESchema Schematic File Version 4
LIBS:pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L generic:R 1k?
U 1 1 5E98F7A1
P 6000 4200
F 0 "1k?" V 6000 4253 50  0000 L CNN
F 1 "R" H 6000 4100 50  0001 C CNN
F 2 "SMT:0603" H 5900 4175 50  0001 C CNN
F 3 "" H 6000 4200 50  0001 C CNN
	1    6000 4200
	0    -1   1    0   
$EndComp
$Comp
L generic:R 3k?
U 1 1 5E98F7A8
P 5800 4000
F 0 "3k?" H 5800 3902 50  0000 C CNN
F 1 "R" H 5800 3900 50  0001 C CNN
F 2 "SMT:0603" H 5700 3975 50  0001 C CNN
F 3 "" H 5800 4000 50  0001 C CNN
	1    5800 4000
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 4000 6000 4000
Wire Wire Line
	6000 4000 6000 4100
$Comp
L generic:GND GND?
U 1 1 5E98F7B1
P 6000 4400
F 0 "GND?" H 6150 4450 50  0001 C CNN
F 1 "GND" H 6150 4400 50  0001 C CNN
F 2 "" H 6000 4400 50  0001 C CNN
F 3 "" H 6000 4400 50  0001 C CNN
	1    6000 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 4400 6000 4300
Wire Wire Line
	6400 4000 6000 4000
Connection ~ 6000 4000
$Comp
L generic:GND GND?
U 1 1 5E98F7BA
P 5600 4400
F 0 "GND?" H 5750 4450 50  0001 C CNN
F 1 "GND" H 5750 4400 50  0001 C CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
	1    5600 4400
	-1   0    0    -1  
$EndComp
$Comp
L generic:5V 5V?
U 1 1 5E98F7C0
P 5600 3700
F 0 "5V?" H 5750 3750 50  0001 C CNN
F 1 "5V" H 5678 3744 50  0000 L CNN
F 2 "" H 5600 3700 50  0001 C CNN
F 3 "" H 5600 3700 50  0001 C CNN
	1    5600 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5600 4400 5600 3900
Wire Wire Line
	5600 3900 5400 3900
Wire Wire Line
	5600 3700 5600 3800
Wire Wire Line
	5600 3800 5400 3800
Wire Wire Line
	5700 4000 5400 4000
$Comp
L pin_headers:1x3 CN?
U 1 1 5E98F7CB
P 5400 3900
F 0 "CN?" H 5628 3905 50  0000 L CNN
F 1 "1x3" H 5400 4100 50  0001 C CNN
F 2 "" H 5400 4000 50  0001 C CNN
F 3 "" H 5400 3800 50  0001 C CNN
	1    5400 3900
	-1   0    0    -1  
$EndComp
Text HLabel 6400 4000 2    50   Output ~ 0
hall_effect
$EndSCHEMATC

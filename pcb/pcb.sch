EESchema Schematic File Version 4
LIBS:pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Kaljajuna-veturi"
Date ""
Rev ""
Comp "Elite Dekkerz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pcb-rescue:ESP-12F-modules IC?
U 1 1 5E8E03B3
P 4800 3800
F 0 "IC?" H 4800 3900 50  0000 C CNN
F 1 "ESP-12F" H 4800 3800 50  0000 C CNN
F 2 "" H 4800 3800 50  0001 C CNN
F 3 "" H 4800 3800 50  0001 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
$Comp
L generic:R R?
U 1 1 5E8E0597
P 4100 3400
F 0 "R?" V 4100 3453 50  0000 L CNN
F 1 "R" H 4100 3300 50  0001 C CNN
F 2 "SMT:0603" H 4000 3375 50  0001 C CNN
F 3 "" H 4100 3400 50  0001 C CNN
	1    4100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3600 4100 3600
Wire Wire Line
	4100 3600 4100 3500
Wire Wire Line
	4100 3300 4100 3200
Wire Wire Line
	4100 2900 4800 2900
Wire Wire Line
	4800 2900 4800 3000
Wire Wire Line
	4300 3200 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 4100 2900
$Comp
L generic:GND GND?
U 1 1 5E8E080D
P 4800 4600
F 0 "GND?" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4950 4600 50  0001 C CNN
F 2 "" H 4800 4600 50  0001 C CNN
F 3 "" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L pcb-rescue:3V3-generic 3V3?
U 1 1 5E8E1283
P 3800 2800
F 0 "3V3?" H 3950 2850 50  0001 C CNN
F 1 "3V3" H 3800 3000 50  0000 C TNN
F 2 "" H 3800 2800 50  0001 C CNN
F 3 "" H 3800 2800 50  0001 C CNN
	1    3800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4500 4800 4600
$Comp
L generic:C C?
U 1 1 5E8E15F5
P 3800 3200
F 0 "C?" H 3878 3200 50  0000 L CNN
F 1 "C" H 3900 3100 50  0001 C CNN
F 2 "SMT:0603" H 3800 3100 50  0001 C CNN
F 3 "" H 3800 3200 50  0001 C CNN
	1    3800 3200
	1    0    0    -1  
$EndComp
$Comp
L generic:GND GND?
U 1 1 5E8E166F
P 3800 3400
F 0 "GND?" H 3950 3450 50  0001 C CNN
F 1 "GND" H 3950 3400 50  0001 C CNN
F 2 "" H 3800 3400 50  0001 C CNN
F 3 "" H 3800 3400 50  0001 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3400 3800 3300
Wire Wire Line
	3800 2800 3800 2900
Wire Wire Line
	3800 2900 4100 2900
Connection ~ 3800 2900
Wire Wire Line
	3800 2900 3800 3100
Connection ~ 4100 2900
$Sheet
S 6600 3600 1000 800 
U 5E8E1E56
F0 "Motor driver" 79
F1 "motor-driver.sch" 50
F2 "motor_drive+" I L 6600 3900 50 
F3 "motor_drive-" I L 6600 4000 50 
$EndSheet
Wire Wire Line
	5300 3900 6600 3900
$Comp
L pin_headers:1x6 CN?
U 1 1 5E8E324A
P 3700 4100
F 0 "CN?" H 3794 3677 50  0000 C CNN
F 1 "1x6" H 3700 4400 50  0001 C CNN
F 2 "pin_headers:1x6" H 3700 4300 50  0001 C CNN
F 3 "" H 3700 4100 50  0001 C CNN
	1    3700 4100
	-1   0    0    1   
$EndComp
$Comp
L generic:GND GND?
U 1 1 5E8E3288
P 3800 4600
F 0 "GND?" H 3950 4650 50  0001 C CNN
F 1 "GND" H 3950 4600 50  0001 C CNN
F 2 "" H 3800 4600 50  0001 C CNN
F 3 "" H 3800 4600 50  0001 C CNN
	1    3800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4000 4300 4000
Wire Wire Line
	4300 4200 4000 4200
Wire Wire Line
	4000 4200 4000 3900
Wire Wire Line
	4000 3900 3700 3900
Wire Wire Line
	3800 4600 3800 4300
Wire Wire Line
	3800 4300 3700 4300
Text Label 5500 3900 0    50   ~ 0
motor_drive+
Text Label 5500 4000 0    50   ~ 0
motor_drive-
Wire Wire Line
	5300 3200 6100 3200
Wire Wire Line
	6100 3200 6100 2700
$Sheet
S 6600 2300 1000 800 
U 5E98F463
F0 "Hall-effect sensor" 79
F1 "hall-effect.sch" 50
F2 "hall_effect" O L 6600 2700 50 
$EndSheet
Wire Wire Line
	6600 2700 6100 2700
Text Label 5500 3200 0    50   ~ 0
hall_effect
Wire Wire Line
	5300 4000 6600 4000
$EndSCHEMATC

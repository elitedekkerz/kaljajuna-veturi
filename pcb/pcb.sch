EESchema Schematic File Version 4
LIBS:pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L modules:ESP-12F IC?
U 1 1 5E8E03B3
P 4700 3600
F 0 "IC?" H 4700 3700 50  0000 C CNN
F 1 "ESP-12F" H 4700 3600 50  0000 C CNN
F 2 "" H 4700 3600 50  0001 C CNN
F 3 "" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
$Comp
L generic:R R?
U 1 1 5E8E0597
P 4000 3200
F 0 "R?" V 4000 3253 50  0000 L CNN
F 1 "10K" V 4100 3300 50  0000 C CNN
F 2 "SMT:0603" H 3900 3175 50  0001 C CNN
F 3 "" H 4000 3200 50  0001 C CNN
	1    4000 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3400 4000 3400
Wire Wire Line
	4000 3400 4000 3300
Wire Wire Line
	4000 3100 4000 3000
Wire Wire Line
	4000 2700 4700 2700
Wire Wire Line
	4700 2700 4700 2800
Wire Wire Line
	4200 3000 4000 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 3000 4000 2700
$Comp
L generic:GND GND?
U 1 1 5E8E080D
P 4700 4400
F 0 "GND?" H 4850 4450 50  0001 C CNN
F 1 "GND" H 4850 4400 50  0001 C CNN
F 2 "" H 4700 4400 50  0001 C CNN
F 3 "" H 4700 4400 50  0001 C CNN
	1    4700 4400
	1    0    0    -1  
$EndComp
$Comp
L generic:3V3 3V3?
U 1 1 5E8E1283
P 3700 2600
F 0 "3V3?" H 3850 2650 50  0001 C CNN
F 1 "3V3" H 3700 2800 50  0000 C TNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4300 4700 4400
$Comp
L generic:C C?
U 1 1 5E8E15F5
P 3700 3000
F 0 "C?" H 3778 3000 50  0000 L CNN
F 1 "1u" H 3800 2900 50  0000 C CNN
F 2 "SMT:0603" H 3700 2900 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
$Comp
L generic:GND GND?
U 1 1 5E8E166F
P 3700 3200
F 0 "GND?" H 3850 3250 50  0001 C CNN
F 1 "GND" H 3850 3200 50  0001 C CNN
F 2 "" H 3700 3200 50  0001 C CNN
F 3 "" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3200 3700 3100
Wire Wire Line
	3700 2600 3700 2700
Wire Wire Line
	3700 2700 4000 2700
Connection ~ 3700 2700
Wire Wire Line
	3700 2700 3700 2900
Connection ~ 4000 2700
$Sheet
S 7000 3400 1200 800 
U 5E8E1E56
F0 "Motor driver" 79
F1 "motor-driver.sch" 50
F2 "motor_drive+" I L 7000 3700 50 
F3 "motor_drive-" I L 7000 3800 50 
$EndSheet
$Comp
L pin_headers:1x6 CN?
U 1 1 5E8E324A
P 3600 3900
F 0 "CN?" H 3694 3477 50  0000 C CNN
F 1 "1x6" H 3600 4200 50  0001 C CNN
F 2 "pin_headers:1x6" H 3600 4100 50  0001 C CNN
F 3 "" H 3600 3900 50  0001 C CNN
	1    3600 3900
	-1   0    0    1   
$EndComp
$Comp
L generic:GND GND?
U 1 1 5E8E3288
P 3700 4400
F 0 "GND?" H 3850 4450 50  0001 C CNN
F 1 "GND" H 3850 4400 50  0001 C CNN
F 2 "" H 3700 4400 50  0001 C CNN
F 3 "" H 3700 4400 50  0001 C CNN
	1    3700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3800 4200 3800
Wire Wire Line
	4200 4000 3900 4000
Wire Wire Line
	3900 4000 3900 3700
Wire Wire Line
	3900 3700 3600 3700
Wire Wire Line
	3700 4400 3700 4100
Wire Wire Line
	3700 4100 3600 4100
Text Label 5400 3700 0    50   ~ 0
motor_drive+
Text Label 5400 3800 0    50   ~ 0
motor_drive-
$Sheet
S 7000 4600 1200 800 
U 5E98F463
F0 "Hall-effect sensor" 79
F1 "hall-effect.sch" 50
F2 "hall_effect" O L 7000 5000 50 
F3 "hall_effect_low_threshold" I R 8200 4800 50 
F4 "hall_effect_high_threshold" I R 8200 4700 50 
$EndSheet
Text Label 5400 3500 0    50   ~ 0
SDA
Text Label 5400 3600 0    50   ~ 0
SCL
Text Label 5400 3300 0    50   ~ 0
debug
Wire Wire Line
	5200 3300 5400 3300
NoConn ~ 5200 3200
NoConn ~ 5200 4000
Wire Wire Line
	7000 5000 6500 5000
Wire Wire Line
	6500 5000 6500 3900
Text Label 5400 3900 0    50   ~ 0
hall_effect
$Comp
L DAC:MCP4728 IC?
U 1 1 5EA593A1
P 7500 2400
F 0 "IC?" H 7800 2800 50  0000 C CNN
F 1 "MCP4728" H 7800 2700 50  0000 C CNN
F 2 "" H 7500 2400 50  0001 C CNN
F 3 "" H 7500 2400 50  0001 C CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
$Comp
L generic:GND GND?
U 1 1 5EA5975A
P 7500 2900
F 0 "GND?" H 7650 2950 50  0001 C CNN
F 1 "GND" H 7650 2900 50  0001 C CNN
F 2 "" H 7500 2900 50  0001 C CNN
F 3 "" H 7500 2900 50  0001 C CNN
	1    7500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2900 7500 2800
$Comp
L generic:C C?
U 1 1 5EA59DC2
P 7200 1800
F 0 "C?" H 7278 1846 50  0000 L CNN
F 1 "100n" H 7278 1755 50  0000 L CNN
F 2 "SMT:0603" H 7200 1700 50  0001 C CNN
F 3 "" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2100 7500 1600
Wire Wire Line
	7500 1600 7200 1600
Wire Wire Line
	7200 1600 7200 1700
$Comp
L generic:GND GND?
U 1 1 5EA5A166
P 7200 2000
F 0 "GND?" H 7350 2050 50  0001 C CNN
F 1 "GND" H 7350 2000 50  0001 C CNN
F 2 "" H 7200 2000 50  0001 C CNN
F 3 "" H 7200 2000 50  0001 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2000 7200 1900
$Comp
L generic:3V3 3V?
U 1 1 5EA5AF28
P 7200 1500
F 0 "3V?" H 7350 1550 50  0001 C CNN
F 1 "3V3" H 7200 1700 50  0000 C TNN
F 2 "" H 7200 1500 50  0001 C CNN
F 3 "" H 7200 1500 50  0001 C CNN
	1    7200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1500 7200 1600
Connection ~ 7200 1600
Wire Wire Line
	7100 2500 7000 2500
Wire Wire Line
	7000 2500 7000 2900
$Comp
L generic:GND GND?
U 1 1 5EA5B765
P 7000 2900
F 0 "GND?" H 7150 2950 50  0001 C CNN
F 1 "GND" H 7150 2900 50  0001 C CNN
F 2 "" H 7000 2900 50  0001 C CNN
F 3 "" H 7000 2900 50  0001 C CNN
	1    7000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3600 6800 2400
Wire Wire Line
	6800 2400 7100 2400
Wire Wire Line
	6700 3500 6700 2300
Wire Wire Line
	6700 2300 7100 2300
Wire Wire Line
	7900 2300 8900 2300
Wire Wire Line
	8900 2300 8900 4800
Wire Wire Line
	8900 4800 8200 4800
Wire Wire Line
	7900 2400 8700 2400
Wire Wire Line
	8700 2400 8700 4700
Wire Wire Line
	8700 4700 8200 4700
Text Label 8700 3800 1    50   ~ 0
hall_effect_high_threshold
Text Label 8900 3800 1    50   ~ 0
hall_effect_low_threshold
$Sheet
S 4600 5800 1200 800 
U 5EA743CE
F0 "Battery management system" 79
F1 "bms.sch" 50
F2 "5V_charge" I L 4600 6000 50 
$EndSheet
$Comp
L generic:R R?
U 1 1 5EAF6347
P 6300 2700
F 0 "R?" V 6300 2753 50  0000 L CNN
F 1 "33k" V 6400 2800 50  0000 C CNN
F 2 "SMT:0603" H 6200 2675 50  0001 C CNN
F 3 "" H 6300 2700 50  0001 C CNN
	1    6300 2700
	0    1    1    0   
$EndComp
$Comp
L generic:R R?
U 1 1 5EAF6391
P 6300 3100
F 0 "R?" V 6300 3153 50  0000 L CNN
F 1 "10k" V 6400 3200 50  0000 C CNN
F 2 "SMT:0603" H 6200 3075 50  0001 C CNN
F 3 "" H 6300 3100 50  0001 C CNN
	1    6300 3100
	0    1    1    0   
$EndComp
$Comp
L generic:GND GND?
U 1 1 5EAF72EA
P 6300 3300
F 0 "GND?" H 6450 3350 50  0001 C CNN
F 1 "GND" H 6450 3300 50  0001 C CNN
F 2 "" H 6300 3300 50  0001 C CNN
F 3 "" H 6300 3300 50  0001 C CNN
	1    6300 3300
	1    0    0    -1  
$EndComp
Text GLabel 6300 2500 1    50   Input ~ 0
V_battery
Wire Wire Line
	6300 2500 6300 2600
Wire Wire Line
	6300 2800 6300 2900
$Comp
L generic:C C?
U 1 1 5EAF8E80
P 6000 3100
F 0 "C?" H 6078 3100 50  0000 L CNN
F 1 "C" H 6100 3000 50  0001 C CNN
F 2 "SMT:0603" H 6000 3000 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
$Comp
L generic:GND GND?
U 1 1 5EAF8EB4
P 6000 3300
F 0 "GND?" H 6150 3350 50  0001 C CNN
F 1 "GND" H 6150 3300 50  0001 C CNN
F 2 "" H 6000 3300 50  0001 C CNN
F 3 "" H 6000 3300 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3000 6000 2900
Wire Wire Line
	6000 2900 6300 2900
Connection ~ 6000 2900
Connection ~ 6300 2900
Wire Wire Line
	6300 2900 6300 3000
Wire Wire Line
	5200 3500 6700 3500
Wire Wire Line
	5200 3600 6800 3600
Wire Wire Line
	5200 3700 7000 3700
Wire Wire Line
	5200 3800 7000 3800
Wire Wire Line
	5200 3900 6500 3900
Wire Wire Line
	6300 3200 6300 3300
Wire Wire Line
	6000 3200 6000 3300
Wire Wire Line
	5800 3000 5800 2900
Wire Wire Line
	5800 2900 6000 2900
Wire Wire Line
	5200 3000 5800 3000
$EndSCHEMATC

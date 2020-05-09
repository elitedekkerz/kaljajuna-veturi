EESchema Schematic File Version 4
LIBS:pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L generic:Battery BAT?
U 1 1 5D45A48F
P 5400 4100
F 0 "BAT?" H 5491 4100 50  0000 L CNN
F 1 "Battery" H 5600 4000 50  0001 C CNN
F 2 "PCB:battery_wires" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Text GLabel 7300 3200 2    50   Output ~ 0
V_battery
Wire Wire Line
	5400 3200 5400 3700
$Comp
L generic:R R?
U 1 1 5D860C8C
P 2100 3400
F 0 "R?" V 2100 3453 50  0000 L CNN
F 1 "R" H 2100 3300 50  0001 C CNN
F 2 "SMT:0603" H 2000 3375 50  0001 C CNN
F 3 "" H 2100 3400 50  0001 C CNN
	1    2100 3400
	0    1    1    0   
$EndComp
$Comp
L Power:DW01 IC?
U 1 1 5D88324D
P 6600 3800
F 0 "IC?" H 6600 4165 50  0000 C CNN
F 1 "DW01" H 6600 4074 50  0000 C CNN
F 2 "SOT:SOT-23-6" H 6600 3800 50  0001 C CNN
F 3 "" H 6600 3800 50  0001 C CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
$Comp
L FET:FS8205A T?
U 1 1 5D8832B2
P 6600 4400
F 0 "T?" H 6900 4500 50  0000 C CNN
F 1 "FS8205A" H 7000 4400 50  0000 C CNN
F 2 "TSSOP:TSSOP-8" H 6400 4800 50  0001 C CNN
F 3 "" H 6400 4800 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4200 6700 4300
$Comp
L generic:GND #GND?
U 1 1 5D8835C5
P 7200 4600
F 0 "#GND?" H 7350 4650 50  0001 C CNN
F 1 "GND" H 7350 4600 50  0001 C CNN
F 2 "" H 7200 4600 50  0001 C CNN
F 3 "" H 7200 4600 50  0001 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
$Comp
L generic:R R?
U 1 1 5D883615
P 7200 4200
F 0 "R?" V 7200 4253 50  0000 L CNN
F 1 "R" H 7200 4100 50  0001 C CNN
F 2 "SMT:0603" H 7100 4175 50  0001 C CNN
F 3 "" H 7200 4200 50  0001 C CNN
	1    7200 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 4500 7200 4500
Wire Wire Line
	7200 4500 7200 4600
Wire Wire Line
	7200 4500 7200 4300
Connection ~ 7200 4500
Wire Wire Line
	7200 4100 7200 3800
$Comp
L generic:R R?
U 1 1 5D884D41
P 5600 3700
F 0 "R?" H 5600 3798 50  0000 C CNN
F 1 "R" H 5600 3600 50  0001 C CNN
F 2 "SMT:0603" H 5500 3675 50  0001 C CNN
F 3 "" H 5600 3700 50  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
$Comp
L generic:C C?
U 1 1 5D884D96
P 5800 4100
F 0 "C?" H 5878 4100 50  0000 L CNN
F 1 "C" H 5900 4000 50  0001 C CNN
F 2 "SMT:0603" H 5800 4000 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3700 5400 3700
Connection ~ 5400 3700
$Comp
L generic:R R?
U 1 1 5D8877C4
P 3900 4300
F 0 "R?" V 3900 4353 50  0000 L CNN
F 1 "R" H 3900 4200 50  0001 C CNN
F 2 "SMT:0603" H 3800 4275 50  0001 C CNN
F 3 "" H 3900 4300 50  0001 C CNN
	1    3900 4300
	0    1    1    0   
$EndComp
$Comp
L generic:GND #GND?
U 1 1 5D88784A
P 3300 4600
F 0 "#GND?" H 3450 4650 50  0001 C CNN
F 1 "GND" H 3450 4600 50  0001 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "" H 3300 4600 50  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4200 3300 4600
$Comp
L generic:R R?
U 1 1 5D888EE3
P 4200 4300
F 0 "R?" V 4200 4353 50  0000 L CNN
F 1 "R" H 4200 4200 50  0001 C CNN
F 2 "SMT:0603" H 4100 4275 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
	1    4200 4300
	0    1    1    0   
$EndComp
$Comp
L generic:R R?
U 1 1 5D888F0F
P 4500 4300
F 0 "R?" V 4500 4353 50  0000 L CNN
F 1 "R" H 4500 4200 50  0001 C CNN
F 2 "SMT:0805" H 4400 4275 50  0001 C CNN
F 3 "" H 4500 4300 50  0001 C CNN
	1    4500 4300
	0    1    1    0   
$EndComp
$Comp
L generic:R R?
U 1 1 5D888F3D
P 4200 3500
F 0 "R?" V 4200 3553 50  0000 L CNN
F 1 "R" H 4200 3400 50  0001 C CNN
F 2 "SMT:0603" H 4100 3475 50  0001 C CNN
F 3 "" H 4200 3500 50  0001 C CNN
	1    4200 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3900 4200 4200
Wire Wire Line
	4500 4200 4500 3900
Wire Wire Line
	4500 3900 4200 3900
Connection ~ 4200 3900
Wire Wire Line
	4200 3600 4200 3900
$Comp
L generic:GND #GND?
U 1 1 5D88A126
P 4200 4600
F 0 "#GND?" H 4350 4650 50  0001 C CNN
F 1 "GND" H 4350 4600 50  0001 C CNN
F 2 "" H 4200 4600 50  0001 C CNN
F 3 "" H 4200 4600 50  0001 C CNN
	1    4200 4600
	1    0    0    -1  
$EndComp
$Comp
L generic:GND #GND?
U 1 1 5D88A14D
P 4500 4600
F 0 "#GND?" H 4650 4650 50  0001 C CNN
F 1 "GND" H 4650 4600 50  0001 C CNN
F 2 "" H 4500 4600 50  0001 C CNN
F 3 "" H 4500 4600 50  0001 C CNN
	1    4500 4600
	1    0    0    -1  
$EndComp
$Comp
L generic:GND #GND?
U 1 1 5D88A174
P 3900 4600
F 0 "#GND?" H 4050 4650 50  0001 C CNN
F 1 "GND" H 4050 4600 50  0001 C CNN
F 2 "" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4600 3900 4400
Wire Wire Line
	4200 4400 4200 4600
Wire Wire Line
	4500 4600 4500 4400
Wire Wire Line
	3900 4200 3900 4000
Wire Wire Line
	3900 4000 3800 4000
Wire Wire Line
	2800 3800 2700 3800
Wire Wire Line
	2700 3800 2700 3700
Wire Wire Line
	2700 3700 2800 3700
Wire Wire Line
	2700 3700 2700 3200
Connection ~ 2700 3700
Wire Wire Line
	4200 3200 4200 3400
Wire Wire Line
	3800 3900 4200 3900
Wire Wire Line
	3800 3700 4800 3700
Wire Wire Line
	2700 3200 4200 3200
Wire Wire Line
	2100 3600 2100 3500
Wire Wire Line
	2100 3200 2100 3300
Connection ~ 6100 4500
Wire Wire Line
	6100 3900 6100 4500
Wire Wire Line
	5400 4500 5800 4500
Wire Wire Line
	5400 4000 5400 3700
Wire Wire Line
	5700 3700 5800 3700
Wire Wire Line
	5400 4200 5400 4500
Wire Wire Line
	5800 4200 5800 4500
Connection ~ 5800 4500
Wire Wire Line
	5800 4500 6100 4500
Wire Wire Line
	5800 4000 5800 3700
Connection ~ 5800 3700
Wire Wire Line
	6200 3900 6100 3900
Wire Wire Line
	5800 3700 6200 3700
Wire Wire Line
	6500 4200 6500 4300
Wire Wire Line
	6100 4500 6400 4500
Wire Wire Line
	7200 3800 7000 3800
$Comp
L generic:C C?
U 1 1 5D8CDEDE
P 4800 4300
F 0 "C?" H 4878 4300 50  0000 L CNN
F 1 "C" H 4900 4200 50  0001 C CNN
F 2 "SMT:0603" H 4800 4200 50  0001 C CNN
F 3 "" H 4800 4300 50  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4200 4800 3700
Connection ~ 4800 3700
$Comp
L generic:GND #GND?
U 1 1 5D8CFB36
P 4800 4600
F 0 "#GND?" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4950 4600 50  0001 C CNN
F 2 "" H 4800 4600 50  0001 C CNN
F 3 "" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4600 4800 4400
Wire Wire Line
	4800 3700 5400 3700
$Comp
L Power:TP4056 IC?
U 1 1 5D7FF83A
P 3300 3800
F 0 "IC?" H 3300 4165 50  0000 C CNN
F 1 "TP4056" H 3300 4074 50  0000 C CNN
F 2 "SOP:SOP-8" H 3200 4150 50  0001 C CNN
F 3 "" H 3300 3800 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
$Comp
L generic:R R?
U 1 1 5D941A20
P 2400 3400
F 0 "R?" V 2400 3453 50  0000 L CNN
F 1 "R" H 2400 3300 50  0001 C CNN
F 2 "SMT:0603" H 2300 3375 50  0001 C CNN
F 3 "" H 2400 3400 50  0001 C CNN
	1    2400 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3300 2400 3200
Wire Wire Line
	2400 3200 2100 3200
$Comp
L generic:LED D?
U 1 1 5EA7B9BB
P 2100 3700
F 0 "D?" V 2100 3828 50  0000 L CNN
F 1 "LED" H 2100 3600 50  0001 C CNN
F 2 "SMT:0603" H 2110 3700 50  0001 C CNN
F 3 "" H 2110 3700 50  0001 C CNN
	1    2100 3700
	0    1    1    0   
$EndComp
$Comp
L generic:LED D?
U 1 1 5EA7BA19
P 2400 3700
F 0 "D?" V 2400 3828 50  0000 L CNN
F 1 "LED" H 2400 3600 50  0001 C CNN
F 2 "SMT:0603" H 2410 3700 50  0001 C CNN
F 3 "" H 2410 3700 50  0001 C CNN
	1    2400 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3600 2400 3500
Wire Wire Line
	2400 3800 2400 3900
Wire Wire Line
	2400 3900 2800 3900
Wire Wire Line
	2800 4000 2100 4000
Wire Wire Line
	2100 4000 2100 3800
Wire Wire Line
	2700 3200 2400 3200
Connection ~ 2700 3200
Connection ~ 2400 3200
Text HLabel 2000 3200 0    50   Input ~ 0
5V_charge
Wire Wire Line
	2100 3200 2000 3200
Connection ~ 2100 3200
Wire Wire Line
	5400 3200 7200 3200
$Comp
L Power:SX1308 IC?
U 1 1 5EAEC0C4
P 8600 3900
AR Path="/5E8E1E56/5EAEC0C4" Ref="IC?"  Part="1" 
AR Path="/5EA743CE/5EAEC0C4" Ref="IC?"  Part="1" 
F 0 "IC?" H 8800 4300 50  0000 C CNN
F 1 "SX1308" H 8800 4200 50  0000 C CNN
F 2 "" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0001 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
$Comp
L generic:R R?
U 1 1 5EAEC0CB
P 9400 3700
AR Path="/5E8E1E56/5EAEC0CB" Ref="R?"  Part="1" 
AR Path="/5EA743CE/5EAEC0CB" Ref="R?"  Part="1" 
F 0 "R?" V 9354 3753 50  0000 L CNN
F 1 "33k" V 9445 3753 50  0000 L CNN
F 2 "SMT:0603" H 9300 3675 50  0001 C CNN
F 3 "" H 9400 3700 50  0001 C CNN
	1    9400 3700
	0    1    1    0   
$EndComp
$Comp
L generic:R R?
U 1 1 5EAEC0D2
P 9400 4300
AR Path="/5E8E1E56/5EAEC0D2" Ref="R?"  Part="1" 
AR Path="/5EA743CE/5EAEC0D2" Ref="R?"  Part="1" 
F 0 "R?" V 9354 4353 50  0000 L CNN
F 1 "4k7" V 9445 4353 50  0000 L CNN
F 2 "SMT:0603" H 9300 4275 50  0001 C CNN
F 3 "" H 9400 4300 50  0001 C CNN
	1    9400 4300
	0    1    1    0   
$EndComp
$Comp
L generic:GND GND?
U 1 1 5EAEC0D9
P 9400 4600
AR Path="/5E8E1E56/5EAEC0D9" Ref="GND?"  Part="1" 
AR Path="/5EA743CE/5EAEC0D9" Ref="GND?"  Part="1" 
F 0 "GND?" H 9550 4650 50  0001 C CNN
F 1 "GND" H 9550 4600 50  0001 C CNN
F 2 "" H 9400 4600 50  0001 C CNN
F 3 "" H 9400 4600 50  0001 C CNN
	1    9400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4600 9400 4400
$Comp
L generic:GND GND?
U 1 1 5EAEC0E0
P 8600 4600
AR Path="/5E8E1E56/5EAEC0E0" Ref="GND?"  Part="1" 
AR Path="/5EA743CE/5EAEC0E0" Ref="GND?"  Part="1" 
F 0 "GND?" H 8750 4650 50  0001 C CNN
F 1 "GND" H 8750 4600 50  0001 C CNN
F 2 "" H 8600 4600 50  0001 C CNN
F 3 "" H 8600 4600 50  0001 C CNN
	1    8600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4600 8600 4200
Wire Wire Line
	9400 4200 9400 4000
Wire Wire Line
	8900 4000 9400 4000
Connection ~ 9400 4000
Wire Wire Line
	9400 4000 9400 3800
Wire Wire Line
	8600 3600 8600 3400
Wire Wire Line
	8600 3400 8200 3400
$Comp
L generic:D D?
U 1 1 5EAEC0ED
P 9200 3400
AR Path="/5E8E1E56/5EAEC0ED" Ref="D?"  Part="1" 
AR Path="/5EA743CE/5EAEC0ED" Ref="D?"  Part="1" 
F 0 "D?" H 9200 3523 50  0000 C CNN
F 1 "D" H 9200 3300 50  0001 C CNN
F 2 "SMT:0603" H 9210 3400 50  0001 C CNN
F 3 "" H 9210 3400 50  0001 C CNN
	1    9200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3400 9400 3400
Wire Wire Line
	9400 3400 9400 3600
Wire Wire Line
	9700 3400 9400 3400
Connection ~ 9400 3400
Wire Wire Line
	8300 3800 8200 3800
Wire Wire Line
	8200 3800 8200 3400
Connection ~ 8200 3400
Wire Wire Line
	8200 3400 7900 3400
$Comp
L generic:C C?
U 1 1 5EAEC0FC
P 7900 4000
AR Path="/5E8E1E56/5EAEC0FC" Ref="C?"  Part="1" 
AR Path="/5EA743CE/5EAEC0FC" Ref="C?"  Part="1" 
F 0 "C?" H 7978 4046 50  0000 L CNN
F 1 "1u" H 7978 3955 50  0000 L CNN
F 2 "SMT:0603" H 7900 3900 50  0001 C CNN
F 3 "" H 7900 4000 50  0001 C CNN
	1    7900 4000
	1    0    0    -1  
$EndComp
$Comp
L generic:GND GND?
U 1 1 5EAEC103
P 7900 4600
AR Path="/5E8E1E56/5EAEC103" Ref="GND?"  Part="1" 
AR Path="/5EA743CE/5EAEC103" Ref="GND?"  Part="1" 
F 0 "GND?" H 8050 4650 50  0001 C CNN
F 1 "GND" H 8050 4600 50  0001 C CNN
F 2 "" H 7900 4600 50  0001 C CNN
F 3 "" H 7900 4600 50  0001 C CNN
	1    7900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4600 7900 4100
Wire Wire Line
	7900 3900 7900 3400
Connection ~ 7900 3400
$Comp
L generic:L L?
U 1 1 5EAEC10D
P 8800 3400
AR Path="/5E8E1E56/5EAEC10D" Ref="L?"  Part="1" 
AR Path="/5EA743CE/5EAEC10D" Ref="L?"  Part="1" 
F 0 "L?" H 8800 3590 50  0000 C CNN
F 1 "L" H 8800 3499 50  0000 C CNN
F 2 "" H 8800 3400 50  0001 C CNN
F 3 "" H 8800 3400 50  0001 C CNN
	1    8800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3400 9000 3400
Wire Wire Line
	8700 3400 8600 3400
Connection ~ 8600 3400
Wire Wire Line
	7200 3400 7200 3200
Wire Wire Line
	7200 3400 7900 3400
Connection ~ 7200 3200
Wire Wire Line
	7200 3200 7300 3200
$Comp
L generic:5V 5V?
U 1 1 5EAF15EA
P 9700 3400
F 0 "5V?" H 9850 3450 50  0001 C CNN
F 1 "5V" H 9778 3444 50  0000 L CNN
F 2 "" H 9700 3400 50  0001 C CNN
F 3 "" H 9700 3400 50  0001 C CNN
	1    9700 3400
	1    0    0    -1  
$EndComp
$Comp
L generic:R R?
U 1 1 5EAF34F2
P 9700 4300
AR Path="/5E8E1E56/5EAF34F2" Ref="R?"  Part="1" 
AR Path="/5EA743CE/5EAF34F2" Ref="R?"  Part="1" 
F 0 "R?" V 9654 4353 50  0000 L CNN
F 1 "4k7" V 9745 4353 50  0000 L CNN
F 2 "SMT:0603" H 9600 4275 50  0001 C CNN
F 3 "" H 9700 4300 50  0001 C CNN
	1    9700 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 4000 9700 4000
Wire Wire Line
	9700 4000 9700 4200
$Comp
L generic:GND GND?
U 1 1 5EAF4B1C
P 9700 4600
AR Path="/5E8E1E56/5EAF4B1C" Ref="GND?"  Part="1" 
AR Path="/5EA743CE/5EAF4B1C" Ref="GND?"  Part="1" 
F 0 "GND?" H 9850 4650 50  0001 C CNN
F 1 "GND" H 9850 4600 50  0001 C CNN
F 2 "" H 9700 4600 50  0001 C CNN
F 3 "" H 9700 4600 50  0001 C CNN
	1    9700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4600 9700 4400
$Comp
L Power:AMS1117-3.3 IC?
U 1 1 5EB6EC93
P 9400 5300
F 0 "IC?" H 9400 5525 50  0000 C CNN
F 1 "AMS1117-3.3" H 9400 5434 50  0000 C CNN
F 2 "SOT:SOT-223" H 9300 5450 50  0001 C CNN
F 3 "" H 9400 5300 50  0001 C CNN
	1    9400 5300
	1    0    0    -1  
$EndComp
$Comp
L generic:5V 5V?
U 1 1 5EB6ED75
P 8900 5200
F 0 "5V?" H 9050 5250 50  0001 C CNN
F 1 "5V" H 8978 5244 50  0000 L CNN
F 2 "" H 8900 5200 50  0001 C CNN
F 3 "" H 8900 5200 50  0001 C CNN
	1    8900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5200 8900 5300
Wire Wire Line
	8900 5300 9200 5300
$Comp
L generic:GND GND?
U 1 1 5EB705DB
P 9400 5600
F 0 "GND?" H 9550 5650 50  0001 C CNN
F 1 "GND" H 9550 5600 50  0001 C CNN
F 2 "" H 9400 5600 50  0001 C CNN
F 3 "" H 9400 5600 50  0001 C CNN
	1    9400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5600 9400 5500
$Comp
L generic:3V3 3V3?
U 1 1 5EB71E58
P 9800 5200
F 0 "3V3?" H 9950 5250 50  0001 C CNN
F 1 "3V3" H 9878 5244 50  0000 L CNN
F 2 "" H 9800 5200 50  0001 C CNN
F 3 "" H 9800 5200 50  0001 C CNN
	1    9800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5300 9800 5300
Wire Wire Line
	9800 5300 9800 5200
Wire Wire Line
	8900 3800 9000 3800
Wire Wire Line
	9000 3800 9000 3400
Connection ~ 9000 3400
Wire Wire Line
	9000 3400 9100 3400
$EndSCHEMATC

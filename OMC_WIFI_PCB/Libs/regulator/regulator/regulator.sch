EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 6268695B
P 5550 2750
F 0 "U1" H 5550 2992 50  0000 C CNN
F 1 "AMS1117-3.3" H 5550 2901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5550 2950 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5650 2500 50  0001 C CNN
	1    5550 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 62687B3E
P 4850 2950
F 0 "C1" H 4965 2996 50  0000 L CNN
F 1 "1u" H 4965 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4888 2800 50  0001 C CNN
F 3 "~" H 4850 2950 50  0001 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6268A7E5
P 6650 2950
F 0 "C2" H 6765 2996 50  0000 L CNN
F 1 "1u" H 6765 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6688 2800 50  0001 C CNN
F 3 "~" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6268A7EB
P 6150 2950
F 0 "C3" H 6265 2996 50  0000 L CNN
F 1 "4.7u" H 6265 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6188 2800 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2800 6150 2750
Wire Wire Line
	5850 2750 6150 2750
Wire Wire Line
	6650 2800 6650 2750
Wire Wire Line
	6650 2750 6150 2750
Connection ~ 6150 2750
Wire Wire Line
	6150 3100 6150 3200
Wire Wire Line
	6150 3200 6650 3200
Wire Wire Line
	6650 3200 6650 3100
Wire Wire Line
	6150 3200 5550 3200
Wire Wire Line
	5550 3200 5550 3050
Connection ~ 6150 3200
Wire Wire Line
	5550 3200 4850 3200
Wire Wire Line
	4850 3200 4850 3100
Connection ~ 5550 3200
Wire Wire Line
	4850 3200 4350 3200
Wire Wire Line
	4350 3200 4350 3100
Connection ~ 4850 3200
Wire Wire Line
	5250 2750 4850 2750
Connection ~ 4850 2750
Wire Wire Line
	4850 2750 4850 2800
$Comp
L power:GND #PWR0101
U 1 1 6268D24C
P 5550 3350
F 0 "#PWR0101" H 5550 3100 50  0001 C CNN
F 1 "GND" H 5555 3177 50  0000 C CNN
F 2 "" H 5550 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3350 5550 3200
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 6268DE60
P 7450 2350
F 0 "J1" H 7558 2631 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7558 2540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 7450 2350 50  0001 C CNN
F 3 "~" H 7450 2350 50  0001 C CNN
	1    7450 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 2250 4850 2250
Wire Wire Line
	4850 2250 4850 2750
Wire Wire Line
	7250 2350 6150 2350
Wire Wire Line
	6150 2350 6150 2750
Wire Wire Line
	7250 2450 7250 3200
Wire Wire Line
	7250 3200 6650 3200
Connection ~ 6650 3200
Wire Wire Line
	4350 2750 4850 2750
Wire Wire Line
	4350 2800 4350 2750
$Comp
L Device:C C4
U 1 1 62688CA4
P 4350 2950
F 0 "C4" H 4465 2996 50  0000 L CNN
F 1 "4.7u" H 4465 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4388 2800 50  0001 C CNN
F 3 "~" H 4350 2950 50  0001 C CNN
	1    4350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 2250
Wire Wire Line
	3900 2250 4850 2250
Connection ~ 4850 2250
Wire Wire Line
	3900 2600 3900 2750
Wire Wire Line
	3900 2750 4350 2750
Connection ~ 4350 2750
Wire Wire Line
	3900 2750 3900 2800
Connection ~ 3900 2750
Wire Wire Line
	3900 3100 3900 3200
Wire Wire Line
	3900 3200 4350 3200
Connection ~ 4350 3200
$Comp
L Device:R R1
U 1 1 626A1147
P 3900 2450
F 0 "R1" H 3970 2496 50  0000 L CNN
F 1 "R" H 3970 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3830 2450 50  0001 C CNN
F 3 "~" H 3900 2450 50  0001 C CNN
	1    3900 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6269F131
P 3900 2950
F 0 "D1" V 3939 2832 50  0000 R CNN
F 1 "LED" V 3848 2832 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3900 2950 50  0001 C CNN
F 3 "~" H 3900 2950 50  0001 C CNN
	1    3900 2950
	0    -1   -1   0   
$EndComp
$EndSCHEMATC

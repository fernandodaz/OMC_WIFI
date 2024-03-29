EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "OMC_WIFI"
Date "2022-05-10"
Rev "V1.4"
Comp "SCADA"
Comment1 "Br. Carlos García y Br. David Hernández"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2250 2500 0    50   ~ 10
Módulo ESP-WROOM32\n
Wire Notes Line
	4300 2300 850  2300
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 622A159D
P 7550 1200
F 0 "PS1" H 7550 1525 50  0000 C CNN
F 1 "HLK-PM01" H 7550 1434 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 7550 900 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 7950 850 50  0001 C CNN
	1    7550 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 622DB783
P 8650 1000
F 0 "#PWR0103" H 8650 850 50  0001 C CNN
F 1 "+5V" H 8665 1173 50  0000 C CNN
F 2 "" H 8650 1000 50  0001 C CNN
F 3 "" H 8650 1000 50  0001 C CNN
	1    8650 1000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 622DC1F4
P 8100 1350
F 0 "#PWR0104" H 8100 1100 50  0001 C CNN
F 1 "GND" H 8105 1177 50  0000 C CNN
F 2 "" H 8100 1350 50  0001 C CNN
F 3 "" H 8100 1350 50  0001 C CNN
	1    8100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1300 8100 1300
Wire Wire Line
	8100 1300 8100 1350
Text Notes 2850 800  0    50   ~ 10
Alimentación y Carga
$Comp
L Device:R R1
U 1 1 620FCE7F
P 5650 4100
F 0 "R1" V 5857 4100 50  0000 C CNN
F 1 "330" V 5766 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5580 4100 50  0001 C CNN
F 3 "~" H 5650 4100 50  0001 C CNN
	1    5650 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 621083D3
P 5250 4100
F 0 "D1" H 5243 4317 50  0000 C CNN
F 1 "LED" H 5243 4226 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5250 4100 50  0001 C CNN
F 3 "~" H 5250 4100 50  0001 C CNN
	1    5250 4100
	-1   0    0    -1  
$EndComp
Text GLabel 4950 4100 0    50   Input ~ 0
D22_LED_G
Text Notes 4750 3800 0    50   ~ 10
LEDs
Wire Wire Line
	7150 1300 7050 1300
Wire Wire Line
	7150 1100 7050 1100
Text Notes 6550 800  0    50   ~ 10
Fuente de Alimentación HLK-PM01
Wire Notes Line
	6400 600  6400 1600
Wire Notes Line
	8900 1600 8900 600 
NoConn ~ 5750 3250
Text GLabel 5650 3450 0    50   Input ~ 0
CTS
Text GLabel 5650 3350 0    50   Input ~ 0
VCC
Text GLabel 5650 3250 0    50   Input ~ 0
DTR
Wire Notes Line
	6150 2300 4450 2300
Wire Notes Line
	6150 3600 6150 2300
Wire Notes Line
	4450 3600 6150 3600
Wire Notes Line
	4450 2300 4450 3600
Wire Wire Line
	5050 2650 4850 2650
Wire Wire Line
	5050 2750 4850 2750
Wire Wire Line
	5050 2850 4850 2850
Wire Wire Line
	5050 2950 4850 2950
Wire Wire Line
	5050 3050 4850 3050
Wire Wire Line
	4850 3150 4850 3250
Wire Wire Line
	5050 3150 4850 3150
$Comp
L power:GND #PWR0108
U 1 1 623CD6E2
P 4850 3250
F 0 "#PWR0108" H 4850 3000 50  0001 C CNN
F 1 "GND" H 4855 3077 50  0000 C CNN
F 2 "" H 4850 3250 50  0001 C CNN
F 3 "" H 4850 3250 50  0001 C CNN
	1    4850 3250
	1    0    0    -1  
$EndComp
Text GLabel 4850 3050 0    50   Input ~ 0
CTS
Text GLabel 4850 2950 0    50   Input ~ 0
VCC
Text GLabel 4850 2650 0    50   Input ~ 0
DTR
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 6239A494
P 5250 2950
F 0 "J5" H 5278 2926 50  0000 L CNN
F 1 "Pins_FT232R" H 5278 2835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5250 2950 50  0001 C CNN
F 3 "~" H 5250 2950 50  0001 C CNN
	1    5250 2950
	1    0    0    1   
$EndComp
Text GLabel 4850 2850 0    50   Input ~ 0
RX0
Text GLabel 4850 2750 0    50   Input ~ 0
TX0
Text Notes 4870 2480 0    50   ~ 10
FT232R
Text Notes 3050 2200 0    50   ~ 10
Microcontrolador
Wire Notes Line
	750  2000 750  6100
Wire Notes Line
	6200 2000 750  2000
Wire Notes Line
	6200 6100 6200 2000
Wire Notes Line
	750  6100 6200 6100
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 6216C21C
P 8200 800
F 0 "J4" V 8262 944 50  0000 L CNN
F 1 "Switch" V 8353 944 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8200 800 50  0001 C CNN
F 3 "~" H 8200 800 50  0001 C CNN
	1    8200 800 
	0    -1   1    0   
$EndComp
Wire Wire Line
	8300 1000 8300 1100
Wire Wire Line
	8300 1100 7950 1100
Wire Wire Line
	8200 1000 8200 1050
Wire Wire Line
	8200 1050 8650 1050
Wire Wire Line
	8650 1050 8650 1000
Text GLabel 7050 1100 0    50   Input ~ 0
LINE_IN
Text GLabel 7050 1300 0    50   Input ~ 0
NEUTRAL
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 622D0110
P 1900 1550
F 0 "#FLG0102" H 1900 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 1723 50  0000 C CNN
F 2 "" H 1900 1550 50  0001 C CNN
F 3 "~" H 1900 1550 50  0001 C CNN
	1    1900 1550
	1    0    0    1   
$EndComp
Text GLabel 2050 1450 2    50   Input ~ 0
NEUTRAL
Text GLabel 2050 1150 2    50   Input ~ 0
LINE_IN
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 62219A74
P 8650 1200
F 0 "#FLG0104" H 8650 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 8650 1373 50  0000 C CNN
F 2 "" H 8650 1200 50  0001 C CNN
F 3 "~" H 8650 1200 50  0001 C CNN
	1    8650 1200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 62227D4B
P 8100 1000
F 0 "#PWR0111" H 8100 750 50  0001 C CNN
F 1 "GND" H 8105 827 50  0000 C CNN
F 2 "" H 8100 1000 50  0001 C CNN
F 3 "" H 8100 1000 50  0001 C CNN
	1    8100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2950 1900 2950
$Comp
L power:+5V #PWR0101
U 1 1 621F2808
P 5350 5250
F 0 "#PWR0101" H 5350 5100 50  0001 C CNN
F 1 "+5V" H 5365 5423 50  0000 C CNN
F 2 "" H 5350 5250 50  0001 C CNN
F 3 "" H 5350 5250 50  0001 C CNN
	1    5350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2950 3250 2950
Wire Notes Line
	4300 6000 850  6000
Wire Notes Line
	4300 2300 4300 6000
Wire Notes Line
	850  2300 850  6000
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 623B9AA7
P 2650 4150
F 0 "U1" H 2650 5731 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2650 5640 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2650 2650 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2350 4200 50  0001 C CNN
	1    2650 4150
	1    0    0    -1  
$EndComp
NoConn ~ 3450 5250
NoConn ~ 3450 5150
NoConn ~ 3450 5050
NoConn ~ 3450 4850
NoConn ~ 3450 4750
NoConn ~ 3450 4650
NoConn ~ 3450 4250
NoConn ~ 3450 4150
NoConn ~ 3450 3850
NoConn ~ 3450 3750
NoConn ~ 3450 3650
NoConn ~ 3450 3550
NoConn ~ 3450 3450
NoConn ~ 3450 3350
NoConn ~ 3450 3150
Wire Wire Line
	3250 5050 3450 5050
Wire Wire Line
	1850 4650 2050 4650
NoConn ~ 1850 4650
Wire Wire Line
	1850 4550 2050 4550
NoConn ~ 1850 4550
Wire Wire Line
	1850 4450 2050 4450
NoConn ~ 1850 4450
Wire Wire Line
	1850 4350 2050 4350
NoConn ~ 1850 4350
Wire Wire Line
	1850 4250 2050 4250
NoConn ~ 1850 4250
Wire Wire Line
	1850 4150 2050 4150
Wire Wire Line
	3250 3050 3450 3050
Wire Wire Line
	3250 3150 3450 3150
Wire Wire Line
	3250 3250 3450 3250
Wire Wire Line
	3250 3350 3450 3350
Wire Wire Line
	3250 3450 3450 3450
Wire Wire Line
	3250 3550 3450 3550
Wire Wire Line
	3250 3650 3450 3650
Wire Wire Line
	3250 3750 3450 3750
Wire Wire Line
	3250 3850 3450 3850
Wire Wire Line
	3250 4150 3450 4150
Wire Wire Line
	3250 4250 3450 4250
Wire Wire Line
	3450 4550 3250 4550
Wire Wire Line
	3450 4650 3250 4650
Wire Wire Line
	3250 4750 3450 4750
Wire Wire Line
	3250 4850 3450 4850
Wire Wire Line
	3250 4950 3450 4950
Wire Wire Line
	3450 5150 3250 5150
Wire Wire Line
	3450 5250 3250 5250
NoConn ~ 1850 4150
Wire Wire Line
	2650 5550 2650 5650
$Comp
L power:GND #PWR0107
U 1 1 62346668
P 2650 5650
F 0 "#PWR0107" H 2650 5400 50  0001 C CNN
F 1 "GND" H 2655 5477 50  0000 C CNN
F 2 "" H 2650 5650 50  0001 C CNN
F 3 "" H 2650 5650 50  0001 C CNN
	1    2650 5650
	1    0    0    -1  
$EndComp
Text GLabel 3450 3250 2    50   Input ~ 0
RX0
Text GLabel 3450 3050 2    50   Input ~ 0
TX0
Text GLabel 3450 4450 2    50   Input ~ 0
D23_LED_R
Text GLabel 3450 4350 2    50   Input ~ 0
D32_RELAY_3V
Text GLabel 1900 2950 0    50   Input ~ 0
EN
$Comp
L power:GND #PWR0102
U 1 1 625D653D
P 5350 5600
F 0 "#PWR0102" H 5350 5350 50  0001 C CNN
F 1 "GND" H 5355 5427 50  0000 C CNN
F 2 "" H 5350 5600 50  0001 C CNN
F 3 "" H 5350 5600 50  0001 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 62615ACB
P 5000 5450
F 0 "J8" H 4892 5125 50  0000 C CNN
F 1 "Regulador" H 4892 5216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5000 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 5250 5350 5350
Wire Wire Line
	5350 5350 5200 5350
Wire Wire Line
	5200 5550 5350 5550
Wire Wire Line
	5350 5550 5350 5600
Text GLabel 1100 2750 0    50   Input ~ 0
+3V
Wire Wire Line
	5650 3250 5750 3250
NoConn ~ 5750 3350
NoConn ~ 5750 3450
Wire Wire Line
	5650 3350 5750 3350
Wire Wire Line
	5750 3450 5650 3450
Wire Notes Line
	4500 5000 6000 5000
Wire Notes Line
	4500 5000 4500 5900
Wire Notes Line
	6000 5000 6000 5900
Wire Notes Line
	4500 5900 6000 5900
Text GLabel 5700 5450 2    50   Input ~ 0
+3V
Text GLabel 3450 3950 2    50   Input ~ 0
RX2_3V
Text GLabel 3450 4050 2    50   Input ~ 0
TX2_3V
Wire Wire Line
	3250 3950 3450 3950
Wire Wire Line
	3450 4050 3250 4050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6274182B
P 5600 5500
F 0 "#FLG0101" H 5600 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 5673 50  0000 C CNN
F 2 "" H 5600 5500 50  0001 C CNN
F 3 "~" H 5600 5500 50  0001 C CNN
	1    5600 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 5450 5600 5450
Wire Wire Line
	5600 5500 5600 5450
Connection ~ 5600 5450
Wire Wire Line
	5600 5450 5700 5450
Text GLabel 8550 5850 2    50   Input ~ 0
RX2_5V
Text GLabel 8550 5950 2    50   Input ~ 0
TX2_5V
Text GLabel 8050 5950 0    50   Input ~ 0
RX2_3V
Text GLabel 8050 5850 0    50   Input ~ 0
TX2_3V
Text GLabel 8050 6250 0    50   Input ~ 0
D32_RELAY_3V
Text Notes 7896 5546 0    50   ~ 10
Módulo Level Shifter
Wire Notes Line
	10300 3500 10300 5250
Wire Notes Line
	10300 5250 6400 5250
Wire Notes Line
	6400 5250 6400 3500
Wire Notes Line
	6400 5400 10300 5400
Wire Notes Line
	10300 6600 6400 6600
Text GLabel 8050 6050 0    50   Input ~ 0
+3V
$Comp
L power:GND #PWR0109
U 1 1 6251025E
P 9300 6200
F 0 "#PWR0109" H 9300 5950 50  0001 C CNN
F 1 "GND" H 9305 6027 50  0000 C CNN
F 2 "" H 9300 6200 50  0001 C CNN
F 3 "" H 9300 6200 50  0001 C CNN
	1    9300 6200
	-1   0    0    -1  
$EndComp
NoConn ~ 8550 6350
$Comp
L power:GND #PWR0110
U 1 1 625703FF
P 7300 6200
F 0 "#PWR0110" H 7300 5950 50  0001 C CNN
F 1 "GND" H 7305 6027 50  0000 C CNN
F 2 "" H 7300 6200 50  0001 C CNN
F 3 "" H 7300 6200 50  0001 C CNN
	1    7300 6200
	-1   0    0    -1  
$EndComp
Text GLabel 8550 6250 2    50   Input ~ 0
D32_RELAY_5V
$Comp
L power:+5V #PWR0112
U 1 1 62589E00
P 9050 6000
F 0 "#PWR0112" H 9050 5850 50  0001 C CNN
F 1 "+5V" H 9065 6173 50  0000 C CNN
F 2 "" H 9050 6000 50  0001 C CNN
F 3 "" H 9050 6000 50  0001 C CNN
	1    9050 6000
	-1   0    0    -1  
$EndComp
Wire Notes Line
	10300 5400 10300 6600
Wire Notes Line
	6400 5400 6400 6600
Wire Wire Line
	8650 1050 8650 1200
Connection ~ 8650 1050
$Comp
L Device:Fuse F1
U 1 1 6214DC3E
P 1650 1150
F 0 "F1" V 1453 1150 50  0000 C CNN
F 1 "Fuse" V 1544 1150 50  0000 C CNN
F 2 "Fuse:Fuseholder5x20_horiz_open_inline_Type-I" V 1580 1150 50  0001 C CNN
F 3 "~" H 1650 1150 50  0001 C CNN
	1    1650 1150
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 62597663
P 1900 1050
F 0 "#FLG0103" H 1900 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 1223 50  0000 C CNN
F 2 "" H 1900 1050 50  0001 C CNN
F 3 "~" H 1900 1050 50  0001 C CNN
	1    1900 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 1550 1900 1450
Wire Wire Line
	1800 1150 1900 1150
Wire Wire Line
	1350 1450 1900 1450
Wire Wire Line
	1900 1050 1900 1150
Wire Wire Line
	2050 1150 1900 1150
Connection ~ 1900 1150
Wire Wire Line
	2050 1450 1900 1450
Connection ~ 1900 1450
Text GLabel 4650 1350 0    50   Input ~ 0
NEUTRAL
Text GLabel 4650 1250 0    50   Input ~ 0
LINE_OUT
Wire Notes Line
	750  600  750  1850
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 62564E0F
P 1000 1250
F 0 "J1" H 1108 1431 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1108 1340 50  0000 C CNN
F 2 "NEMA_5_P:NEMA_5_P" H 1000 1250 50  0001 C CNN
F 3 "~" H 1000 1250 50  0001 C CNN
	1    1000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1250 1350 1450
Wire Wire Line
	1200 1150 1500 1150
Wire Wire Line
	1200 1250 1350 1250
NoConn ~ 2050 3150
NoConn ~ 2050 3250
Wire Wire Line
	5900 4150 5900 4100
$Comp
L Device:R R2
U 1 1 62628640
P 5650 4500
F 0 "R2" V 5857 4500 50  0000 C CNN
F 1 "330" V 5766 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5580 4500 50  0001 C CNN
F 3 "~" H 5650 4500 50  0001 C CNN
	1    5650 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 62628646
P 5250 4500
F 0 "D2" H 5243 4717 50  0000 C CNN
F 1 "LED" H 5243 4626 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5250 4500 50  0001 C CNN
F 3 "~" H 5250 4500 50  0001 C CNN
	1    5250 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6262864C
P 5900 4550
F 0 "#PWR0115" H 5900 4300 50  0001 C CNN
F 1 "GND" H 5905 4377 50  0000 C CNN
F 2 "" H 5900 4550 50  0001 C CNN
F 3 "" H 5900 4550 50  0001 C CNN
	1    5900 4550
	1    0    0    -1  
$EndComp
Text GLabel 4950 4500 0    50   Input ~ 0
D23_LED_R
Wire Wire Line
	5900 4550 5900 4500
Text Notes 4600 5750 0    50   ~ 10
Regulador 3V\n
Text GLabel 3450 4550 2    50   Input ~ 0
D22_LED_G
Wire Notes Line
	4450 3650 4450 4850
Wire Notes Line
	4450 3650 6150 3650
Wire Notes Line
	6150 3650 6150 4850
Wire Notes Line
	4450 4850 6150 4850
Wire Wire Line
	3250 4350 3450 4350
Wire Wire Line
	3250 4450 3450 4450
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 626943A8
P 5350 1350
F 0 "J2" H 5378 1326 50  0000 L CNN
F 1 "Conn_01x02_Female" H 5378 1235 50  0000 L CNN
F 2 "NEMA_5_R:NEMA_5_R" H 5350 1350 50  0001 C CNN
F 3 "~" H 5350 1350 50  0001 C CNN
	1    5350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6210BB6A
P 5900 4150
F 0 "#PWR0116" H 5900 3900 50  0001 C CNN
F 1 "GND" H 5905 3977 50  0000 C CNN
F 2 "" H 5900 4150 50  0001 C CNN
F 3 "" H 5900 4150 50  0001 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4100 5500 4100
Wire Wire Line
	5100 4100 4950 4100
Wire Wire Line
	5100 4500 4950 4500
Wire Wire Line
	5400 4500 5500 4500
Wire Wire Line
	5800 4100 5900 4100
Wire Wire Line
	5800 4500 5900 4500
$Comp
L Device:R R4
U 1 1 626E4FB2
P 1300 2750
F 0 "R4" V 1507 2750 50  0000 C CNN
F 1 "10k" V 1416 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1230 2750 50  0001 C CNN
F 3 "~" H 1300 2750 50  0001 C CNN
	1    1300 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 626F2827
P 1500 2950
F 0 "C1" H 1615 2996 50  0000 L CNN
F 1 "1u" H 1615 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1538 2800 50  0001 C CNN
F 3 "~" H 1500 2950 50  0001 C CNN
	1    1500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2750 1150 2750
Wire Wire Line
	1450 2750 1500 2750
Wire Wire Line
	1500 2800 1500 2750
Connection ~ 1500 2750
Wire Wire Line
	1500 2750 2650 2750
$Comp
L power:GND #PWR0117
U 1 1 627210BC
P 1500 3100
F 0 "#PWR0117" H 1500 2850 50  0001 C CNN
F 1 "GND" H 1505 2927 50  0000 C CNN
F 2 "" H 1500 3100 50  0001 C CNN
F 3 "" H 1500 3100 50  0001 C CNN
	1    1500 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 62727A97
P 3550 2750
F 0 "J3" V 3612 2794 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3703 2794 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3550 2750 50  0001 C CNN
F 3 "~" H 3550 2750 50  0001 C CNN
	1    3550 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6275F063
P 3950 3000
F 0 "#PWR0118" H 3950 2750 50  0001 C CNN
F 1 "GND" H 3955 2827 50  0000 C CNN
F 2 "" H 3950 3000 50  0001 C CNN
F 3 "" H 3950 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2950 3950 3000
Wire Wire Line
	3550 2950 3950 2950
Wire Notes Line
	6400 600  8900 600 
Wire Notes Line
	6400 1600 8900 1600
$Comp
L Graphic:SYM_Flash_Small SYM1
U 1 1 6268094E
P 5350 1650
F 0 "SYM1" V 5260 1650 50  0001 C CNN
F 1 "SYM_Flash_Small" V 5440 1650 50  0001 C CNN
F 2 "Symbol:Symbol_HighVoltage_Type2_CopperTop_VerySmall" H 5350 1874 50  0001 C CNN
F 3 "~" H 5750 1550 50  0001 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Flash_Small SYM2
U 1 1 6268B7DC
P 5700 1650
F 0 "SYM2" V 5610 1650 50  0001 C CNN
F 1 "SYM_Flash_Small" V 5790 1650 50  0001 C CNN
F 2 "Symbol:Symbol_HighVoltage_Type2_CopperTop_VerySmall" H 5700 1874 50  0001 C CNN
F 3 "~" H 6100 1550 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J6
U 1 1 626C34E4
P 8250 6050
F 0 "J6" H 8300 6467 50  0000 C CNN
F 1 "Level shifter" H 8300 6376 50  0000 C CNN
F 2 "level_shifter:Level_Shifter_3V_5V" H 8250 6050 50  0001 C CNN
F 3 "~" H 8250 6050 50  0001 C CNN
	1    8250 6050
	1    0    0    -1  
$EndComp
NoConn ~ 8050 6350
Wire Wire Line
	9300 6150 9300 6200
Wire Wire Line
	8050 6150 7300 6150
Wire Wire Line
	7300 6200 7300 6150
Wire Wire Line
	9050 6000 9050 6050
Wire Wire Line
	9050 6050 8550 6050
Wire Wire Line
	9300 6150 8550 6150
Wire Wire Line
	9600 4150 10000 4150
$Comp
L omc-schematics:PZEM-004T-100A U2
U 1 1 62639391
P 8400 4450
F 0 "U2" H 8350 5015 50  0000 C CNN
F 1 "PZEM-004T-100A" H 8350 4924 50  0000 C CNN
F 2 "omc-schematics LE:PZEM-OO4T-100A" H 8400 3983 50  0001 C CNN
F 3 "" H 8400 3983 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4750 10000 4700
Wire Wire Line
	9600 4750 10000 4750
$Comp
L power:+5V #PWR0106
U 1 1 627C4139
P 10000 4700
F 0 "#PWR0106" H 10000 4550 50  0001 C CNN
F 1 "+5V" H 10015 4873 50  0000 C CNN
F 2 "" H 10000 4700 50  0001 C CNN
F 3 "" H 10000 4700 50  0001 C CNN
	1    10000 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 627B8FE0
P 10000 4150
F 0 "#PWR0105" H 10000 3900 50  0001 C CNN
F 1 "GND" H 10005 3977 50  0000 C CNN
F 2 "" H 10000 4150 50  0001 C CNN
F 3 "" H 10000 4150 50  0001 C CNN
	1    10000 4150
	1    0    0    -1  
$EndComp
Text GLabel 9600 4350 2    50   Input ~ 0
TX2_5V
Text GLabel 9600 4550 2    50   Input ~ 0
RX2_5V
Text GLabel 7100 4550 0    50   Input ~ 0
LINE_IN
Text GLabel 7100 4750 0    50   Input ~ 0
NEUTRAL
Text GLabel 7100 4350 0    50   Input ~ 0
TOR2
Text GLabel 7100 4150 0    50   Input ~ 0
TOR1
Text Notes 7996 3696 0    50   ~ 10
Módulo PZEM-004T
Wire Notes Line
	6400 3500 10300 3500
Wire Wire Line
	7900 3050 7900 2950
Wire Notes Line
	9650 1750 9650 3350
Wire Notes Line
	6400 1750 6400 3350
Wire Wire Line
	9000 2500 9150 2500
Text GLabel 9150 2300 2    50   Input ~ 0
LINE_IN
Wire Wire Line
	9150 2300 9000 2300
Text GLabel 9150 2500 2    50   Input ~ 0
LINE_OUT
NoConn ~ 9000 2100
Wire Wire Line
	7050 2750 7200 2750
Text GLabel 7050 2750 0    50   Input ~ 0
D32_RELAY_5V
Connection ~ 7900 2100
Wire Wire Line
	7900 2050 7900 2100
$Comp
L power:+5V #PWR0114
U 1 1 62599A10
P 7900 2050
F 0 "#PWR0114" H 7900 1900 50  0001 C CNN
F 1 "+5V" H 7915 2223 50  0000 C CNN
F 2 "" H 7900 2050 50  0001 C CNN
F 3 "" H 7900 2050 50  0001 C CNN
	1    7900 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 2750 7600 2750
$Comp
L Device:R R3
U 1 1 6258E12E
P 7350 2750
F 0 "R3" V 7557 2750 50  0000 C CNN
F 1 "1k" V 7466 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7280 2750 50  0001 C CNN
F 3 "~" H 7350 2750 50  0001 C CNN
	1    7350 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6256F9FC
P 7900 3050
F 0 "#PWR0113" H 7900 2800 50  0001 C CNN
F 1 "GND" H 7905 2877 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
Connection ~ 7900 2500
Wire Wire Line
	7900 2550 7900 2500
Wire Wire Line
	7900 2500 7900 2450
Wire Wire Line
	8200 2500 7900 2500
Wire Wire Line
	7900 2100 7900 2150
Wire Wire Line
	8200 2100 7900 2100
$Comp
L Diode:US1M D3
U 1 1 6253CC90
P 7900 2300
F 0 "D3" V 7854 2380 50  0000 L CNN
F 1 "US1M" V 7945 2380 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 7900 2125 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds16008.pdf" H 7900 2300 50  0001 C CNN
	1    7900 2300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 6251C78E
P 7800 2750
F 0 "Q1" H 7990 2796 50  0000 L CNN
F 1 "2N3904" H 7990 2705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 8000 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7800 2750 50  0001 L CNN
	1    7800 2750
	1    0    0    -1  
$EndComp
$Comp
L SLA-12VDC-SL-C:SLA-12VDC-SL-C K1
U 1 1 626D4711
P 8600 2300
F 0 "K1" H 8600 2767 50  0000 C CNN
F 1 "SLA-12VDC-SL-C" H 8600 2676 50  0000 C CNN
F 2 "SLA-12VDC-SL-C LE:RELAY_SLA-12VDC-SL-C" H 8600 2300 50  0001 L BNN
F 3 "" H 8600 2300 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 8600 2300 50  0001 L BNN "STANDARD"
F 5 "" H 8600 2300 50  0001 L BNN "PARTREV"
F 6 "Songle Relay" H 8600 2300 50  0001 L BNN "MANUFACTURER"
F 7 "20.4 mm" H 8600 2300 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
	1    8600 2300
	1    0    0    -1  
$EndComp
Wire Notes Line
	6400 3350 9650 3350
Wire Notes Line
	6400 1750 9650 1750
Text Notes 6970 2140 0    50   ~ 10
Relay\n
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 6284CB5E
P 4750 1000
F 0 "J7" V 4596 1048 50  0000 L CNN
F 1 "Conn_01x01_Female" V 4687 1048 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat" H 4750 1000 50  0001 C CNN
F 3 "~" H 4750 1000 50  0001 C CNN
	1    4750 1000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 62853AFC
P 5100 1000
F 0 "J9" V 4946 1048 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5037 1048 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat" H 5100 1000 50  0001 C CNN
F 3 "~" H 5100 1000 50  0001 C CNN
	1    5100 1000
	0    1    -1   0   
$EndComp
Wire Notes Line
	750  600  6200 600 
Wire Notes Line
	6200 600  6200 1850
Wire Notes Line
	750  1850 6200 1850
Wire Wire Line
	5100 1200 5100 1250
Wire Wire Line
	4650 1250 4750 1250
Wire Wire Line
	4750 1250 4750 1200
Wire Wire Line
	5100 1250 5150 1250
Text Notes 4800 950  0    50   ~ 0
Toroide
Wire Wire Line
	4650 1350 5150 1350
Text GLabel 3450 4950 2    50   Input ~ 0
TOUCH
Text GLabel 9500 1000 0    50   Input ~ 0
TOUCH
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 627E9A98
P 9700 1000
F 0 "J10" H 9672 932 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9672 1023 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9700 1000 50  0001 C CNN
F 3 "~" H 9700 1000 50  0001 C CNN
	1    9700 1000
	-1   0    0    1   
$EndComp
Text GLabel 1250 1600 2    50   Input ~ 0
AC_GROUND
Wire Wire Line
	1200 1350 1200 1600
Wire Wire Line
	1200 1600 1250 1600
Text GLabel 5150 1450 0    50   Input ~ 0
AC_GROUND
$EndSCHEMATC

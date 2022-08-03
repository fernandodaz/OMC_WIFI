EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "OMC_WIFI"
Date "2022-07-26"
Rev "V1.6"
Comp "SCADA"
Comment1 "Br. Carlos García y Br. David Hernández"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2350 2150 0    50   ~ 10
ESP-WROOM-32\n
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
P 5600 3950
F 0 "R1" V 5807 3950 50  0000 C CNN
F 1 "330" V 5716 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5530 3950 50  0001 C CNN
F 3 "~" H 5600 3950 50  0001 C CNN
	1    5600 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 621083D3
P 5200 3950
F 0 "D1" H 5193 4167 50  0000 C CNN
F 1 "LED" H 5193 4076 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 3950 50  0001 C CNN
F 3 "~" H 5200 3950 50  0001 C CNN
	1    5200 3950
	-1   0    0    -1  
$EndComp
Text GLabel 4900 3950 0    50   Input ~ 0
D23_LED_G
Text Notes 4700 3650 0    50   ~ 10
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
NoConn ~ 5700 2950
Text GLabel 5600 3150 0    50   Input ~ 0
CTS
Text GLabel 5600 3050 0    50   Input ~ 0
VCC
Text GLabel 5600 2950 0    50   Input ~ 0
DTR
Wire Notes Line
	6100 2000 4400 2000
Wire Notes Line
	6100 3300 6100 2000
Wire Notes Line
	4400 3300 6100 3300
Wire Notes Line
	4400 2000 4400 3300
Wire Wire Line
	5000 2350 4800 2350
Wire Wire Line
	5000 2450 4800 2450
Wire Wire Line
	5000 2550 4800 2550
Wire Wire Line
	5000 2650 4800 2650
Wire Wire Line
	5000 2750 4800 2750
Wire Wire Line
	4800 2850 4800 2950
Wire Wire Line
	5000 2850 4800 2850
$Comp
L power:GND #PWR0108
U 1 1 623CD6E2
P 4800 2950
F 0 "#PWR0108" H 4800 2700 50  0001 C CNN
F 1 "GND" H 4805 2777 50  0000 C CNN
F 2 "" H 4800 2950 50  0001 C CNN
F 3 "" H 4800 2950 50  0001 C CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
Text GLabel 4800 2750 0    50   Input ~ 0
CTS
Text GLabel 4800 2650 0    50   Input ~ 0
VCC
Text GLabel 4800 2350 0    50   Input ~ 0
DTR
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 6239A494
P 5200 2650
F 0 "J5" H 5228 2626 50  0000 L CNN
F 1 "Pins_FT232R" H 5228 2535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5200 2650 50  0001 C CNN
F 3 "~" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    1   
$EndComp
Text GLabel 4800 2550 0    50   Input ~ 0
RX0
Text GLabel 4800 2450 0    50   Input ~ 0
TX0
Text Notes 5120 2180 0    50   ~ 10
FT232R
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
	3350 2700 3150 2700
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 623B9AA7
P 2550 3900
F 0 "U1" H 2550 5481 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2550 5390 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2550 2400 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2250 3950 50  0001 C CNN
	1    2550 3900
	1    0    0    -1  
$EndComp
NoConn ~ 3350 5000
NoConn ~ 3350 4900
NoConn ~ 3350 4800
NoConn ~ 3350 4600
NoConn ~ 3350 4500
NoConn ~ 3350 4400
NoConn ~ 3350 4000
NoConn ~ 3350 3900
NoConn ~ 3350 3600
NoConn ~ 3350 3500
NoConn ~ 3350 3400
NoConn ~ 3350 3300
NoConn ~ 3350 3200
NoConn ~ 3350 3100
NoConn ~ 3350 2900
Wire Wire Line
	3150 4800 3350 4800
Wire Wire Line
	1750 4400 1950 4400
NoConn ~ 1750 4400
Wire Wire Line
	1750 4300 1950 4300
NoConn ~ 1750 4300
Wire Wire Line
	1750 4200 1950 4200
NoConn ~ 1750 4200
Wire Wire Line
	1750 4100 1950 4100
NoConn ~ 1750 4100
Wire Wire Line
	1750 4000 1950 4000
NoConn ~ 1750 4000
Wire Wire Line
	1750 3900 1950 3900
Wire Wire Line
	3150 2800 3350 2800
Wire Wire Line
	3150 2900 3350 2900
Wire Wire Line
	3150 3000 3350 3000
Wire Wire Line
	3150 3100 3350 3100
Wire Wire Line
	3150 3200 3350 3200
Wire Wire Line
	3150 3300 3350 3300
Wire Wire Line
	3150 3400 3350 3400
Wire Wire Line
	3150 3500 3350 3500
Wire Wire Line
	3150 3600 3350 3600
Wire Wire Line
	3150 3900 3350 3900
Wire Wire Line
	3150 4000 3350 4000
Wire Wire Line
	3350 4300 3150 4300
Wire Wire Line
	3350 4400 3150 4400
Wire Wire Line
	3150 4500 3350 4500
Wire Wire Line
	3150 4600 3350 4600
Wire Wire Line
	3150 4700 3350 4700
Wire Wire Line
	3350 4900 3150 4900
Wire Wire Line
	3350 5000 3150 5000
NoConn ~ 1750 3900
Wire Wire Line
	2550 5300 2550 5400
$Comp
L power:GND #PWR0107
U 1 1 62346668
P 2550 5400
F 0 "#PWR0107" H 2550 5150 50  0001 C CNN
F 1 "GND" H 2555 5227 50  0000 C CNN
F 2 "" H 2550 5400 50  0001 C CNN
F 3 "" H 2550 5400 50  0001 C CNN
	1    2550 5400
	1    0    0    -1  
$EndComp
Text GLabel 3350 3000 2    50   Input ~ 0
RX0
Text GLabel 3350 2800 2    50   Input ~ 0
TX0
Text GLabel 3350 4200 2    50   Input ~ 0
D22_LED_R
Text GLabel 3350 4100 2    50   Input ~ 0
D21_RELAY
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
Text GLabel 1000 2700 0    50   Input ~ 0
+3V
Wire Wire Line
	5600 2950 5700 2950
NoConn ~ 5700 3050
NoConn ~ 5700 3150
Wire Wire Line
	5600 3050 5700 3050
Wire Wire Line
	5700 3150 5600 3150
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
Text GLabel 3350 3700 2    50   Input ~ 0
RX2_3V
Text GLabel 3350 3800 2    50   Input ~ 0
TX2_3V
Wire Wire Line
	3150 3700 3350 3700
Wire Wire Line
	3350 3800 3150 3800
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
F 0 "J1" H 1100 1500 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1100 1600 50  0000 C CNN
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
NoConn ~ 1950 2900
NoConn ~ 1950 3000
Wire Wire Line
	5850 4000 5850 3950
$Comp
L Device:R R2
U 1 1 62628640
P 5600 4350
F 0 "R2" V 5807 4350 50  0000 C CNN
F 1 "330" V 5716 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5530 4350 50  0001 C CNN
F 3 "~" H 5600 4350 50  0001 C CNN
	1    5600 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 62628646
P 5200 4350
F 0 "D2" H 5193 4567 50  0000 C CNN
F 1 "LED" H 5193 4476 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 4350 50  0001 C CNN
F 3 "~" H 5200 4350 50  0001 C CNN
	1    5200 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6262864C
P 5850 4400
F 0 "#PWR0115" H 5850 4150 50  0001 C CNN
F 1 "GND" H 5855 4227 50  0000 C CNN
F 2 "" H 5850 4400 50  0001 C CNN
F 3 "" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
Text GLabel 4900 4350 0    50   Input ~ 0
D22_LED_R
Wire Wire Line
	5850 4400 5850 4350
Text Notes 4600 5750 0    50   ~ 10
Regulador 3V\n
Text GLabel 3350 4300 2    50   Input ~ 0
D23_LED_G
Wire Notes Line
	4400 3500 4400 4700
Wire Notes Line
	4400 3500 6100 3500
Wire Notes Line
	6100 3500 6100 4700
Wire Notes Line
	4400 4700 6100 4700
Wire Wire Line
	3150 4100 3350 4100
Wire Wire Line
	3150 4200 3350 4200
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
P 5850 4000
F 0 "#PWR0116" H 5850 3750 50  0001 C CNN
F 1 "GND" H 5855 3827 50  0000 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3950 5450 3950
Wire Wire Line
	5050 3950 4900 3950
Wire Wire Line
	5050 4350 4900 4350
Wire Wire Line
	5350 4350 5450 4350
Wire Wire Line
	5750 3950 5850 3950
Wire Wire Line
	5750 4350 5850 4350
$Comp
L Device:R R4
U 1 1 626E4FB2
P 1200 2700
F 0 "R4" V 1407 2700 50  0000 C CNN
F 1 "10k" V 1316 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1130 2700 50  0001 C CNN
F 3 "~" H 1200 2700 50  0001 C CNN
	1    1200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 626F2827
P 1550 2900
F 0 "C1" H 1665 2946 50  0000 L CNN
F 1 "1u" H 1665 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1588 2750 50  0001 C CNN
F 3 "~" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2700 1050 2700
Wire Wire Line
	1550 2750 1550 2700
$Comp
L power:GND #PWR0117
U 1 1 627210BC
P 1550 3050
F 0 "#PWR0117" H 1550 2800 50  0001 C CNN
F 1 "GND" H 1555 2877 50  0000 C CNN
F 2 "" H 1550 3050 50  0001 C CNN
F 3 "" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 62727A97
P 3450 2500
F 0 "J3" V 3512 2544 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3603 2544 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3450 2500 50  0001 C CNN
F 3 "~" H 3450 2500 50  0001 C CNN
	1    3450 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6275F063
P 3850 2750
F 0 "#PWR0118" H 3850 2500 50  0001 C CNN
F 1 "GND" H 3855 2577 50  0000 C CNN
F 2 "" H 3850 2750 50  0001 C CNN
F 3 "" H 3850 2750 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2700 3850 2750
Wire Wire Line
	3450 2700 3850 2700
Wire Notes Line
	6400 600  8900 600 
Wire Notes Line
	6400 1600 8900 1600
$Comp
L Graphic:SYM_Flash_Small SYM1
U 1 1 6268094E
P 3100 1100
F 0 "SYM1" V 3010 1100 50  0001 C CNN
F 1 "SYM_Flash_Small" V 3190 1100 50  0001 C CNN
F 2 "Symbol:Symbol_HighVoltage_Type2_CopperTop_VerySmall" H 3100 1324 50  0001 C CNN
F 3 "~" H 3500 1000 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Flash_Small SYM2
U 1 1 6268B7DC
P 3450 1100
F 0 "SYM2" V 3360 1100 50  0001 C CNN
F 1 "SYM_Flash_Small" V 3540 1100 50  0001 C CNN
F 2 "Symbol:Symbol_HighVoltage_Type2_CopperTop_VerySmall" H 3450 1324 50  0001 C CNN
F 3 "~" H 3850 1000 50  0001 C CNN
	1    3450 1100
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
D21_RELAY
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
Wire Notes Line
	750  600  6200 600 
Wire Notes Line
	6200 600  6200 1850
Wire Notes Line
	750  1850 6200 1850
Wire Wire Line
	4650 1250 4750 1250
Wire Wire Line
	5100 1250 5150 1250
Text Notes 4800 950  0    50   ~ 0
Toroide
Wire Wire Line
	4650 1350 5150 1350
Text GLabel 3350 4700 2    50   Input ~ 0
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
Wire Wire Line
	5100 950  5100 1250
Wire Wire Line
	4750 950  4750 1250
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 629675E0
P 5300 950
F 0 "J9" H 5328 976 50  0000 L CNN
F 1 "Conn_01x01_Female" H 5328 885 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x01_D1.7mm_OD3mm" H 5300 950 50  0001 C CNN
F 3 "~" H 5300 950 50  0001 C CNN
	1    5300 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 6296884C
P 4550 950
F 0 "J7" H 4442 725 50  0000 C CNN
F 1 "Conn_01x01_Female" H 4442 816 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x01_D1.7mm_OD3mm" H 4550 950 50  0001 C CNN
F 3 "~" H 4550 950 50  0001 C CNN
	1    4550 950 
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 6298E1FD
P 7800 2750
F 0 "Q1" H 7991 2796 50  0000 L CNN
F 1 "MMBT3904" H 7991 2705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8000 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7800 2750 50  0001 L CNN
	1    7800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2700 1950 2700
Connection ~ 1550 2700
Text GLabel 1900 2500 0    50   Input ~ 0
+3V
Wire Notes Line
	750  5750 4300 5750
Wire Notes Line
	750  2000 4300 2000
Wire Wire Line
	1350 2700 1550 2700
Wire Notes Line
	9000 1600 9000 600 
Wire Notes Line
	9000 600  10450 600 
Wire Notes Line
	9000 1600 10450 1600
Wire Notes Line
	10450 600  10450 1600
Text Notes 9650 750  0    50   ~ 10
Touch
NoConn ~ 8550 6250
NoConn ~ 8050 6250
Wire Wire Line
	2550 2500 1900 2500
Wire Notes Line
	4300 5750 4300 2000
Wire Notes Line
	750  2000 750  5750
$EndSCHEMATC

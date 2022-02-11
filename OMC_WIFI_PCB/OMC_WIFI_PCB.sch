EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "OMC_WIFI"
Date "2022-02-11"
Rev "V1"
Comp "SCADA"
Comment1 "Br. Carlos García y Br. David Hernández"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	10620 640  10620 1650
Text Notes 8310 1930 0    50   ~ 10
Módulo ACS712 (Sensor Corriente)\n
Text Notes 8330 810  0    50   ~ 0
Módulo ZMPT101B (Sensor Voltaje)\n
Wire Notes Line
	8250 1650 8250 640 
Wire Notes Line
	10620 1650 8250 1650
Wire Notes Line
	8250 640  10620 640 
Wire Wire Line
	9880 2280 10130 2280
Wire Wire Line
	9880 2180 10130 2180
Wire Wire Line
	10130 2030 10130 2180
Wire Wire Line
	9880 2380 10130 2380
Wire Wire Line
	10130 2580 10130 2380
$Comp
L power:GND #PWR09
U 1 1 616295A3
P 10130 2580
F 0 "#PWR09" H 10130 2330 50  0001 C CNN
F 1 "GND" H 10135 2407 50  0000 C CNN
F 2 "" H 10130 2580 50  0001 C CNN
F 3 "" H 10130 2580 50  0001 C CNN
	1    10130 2580
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 6162BB53
P 10130 2030
F 0 "#PWR08" H 10130 1880 50  0001 C CNN
F 1 "+5V" H 10145 2203 50  0000 C CNN
F 2 "" H 10130 2030 50  0001 C CNN
F 3 "" H 10130 2030 50  0001 C CNN
	1    10130 2030
	1    0    0    -1  
$EndComp
Text GLabel 10130 2280 2    50   Input ~ 0
VN_ACS
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 6164E968
P 9680 2280
F 0 "J5" H 9740 2280 50  0000 L CNN
F 1 "Conn_01x03_Female_SI" H 9230 2450 50  0000 L CNN
F 2 "SLAVE:PinHeader_1x03_P2.54mm_Vertical" H 9680 2280 50  0001 C CNN
F 3 "~" H 9680 2280 50  0001 C CNN
	1    9680 2280
	-1   0    0    1   
$EndComp
Wire Notes Line
	5840 4240 6800 4240
Text Notes 5870 2480 0    50   ~ 10
FT232R
Text Notes 8120 3240 0    50   ~ 10
Módulo Relay\n
$Comp
L Connector:Conn_01x15_Female J?
U 1 1 620C54F2
P 2250 2000
F 0 "J?" H 2278 2026 50  0000 L CNN
F 1 "ESP32_Left" H 2278 1935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 2250 2000 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J?
U 1 1 620C864B
P 3350 2000
F 0 "J?" H 3242 2885 50  0000 C CNN
F 1 "ESP32_Right" H 3242 2794 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 3350 2000 50  0001 C CNN
F 3 "~" H 3350 2000 50  0001 C CNN
	1    3350 2000
	-1   0    0    -1  
$EndComp
Text GLabel 1650 1300 0    50   Input ~ 0
EN
Text GLabel 1650 1400 0    50   Input ~ 0
VP_ZMPT
Text GLabel 1650 1500 0    50   Input ~ 0
VN_ACS
Text GLabel 1650 1600 0    50   Input ~ 0
D34
Text GLabel 1650 1700 0    50   Input ~ 0
D35
Text GLabel 1650 1800 0    50   Input ~ 0
D32_RELAY
Text GLabel 1650 1900 0    50   Input ~ 0
D33
Text GLabel 1650 2000 0    50   Input ~ 0
D25
Text GLabel 1650 2100 0    50   Input ~ 0
D26
Text GLabel 1650 2200 0    50   Input ~ 0
D27_LED
Text GLabel 1650 2300 0    50   Input ~ 0
D14
Text GLabel 1650 2400 0    50   Input ~ 0
D12
Text GLabel 1650 2500 0    50   Input ~ 0
D13
Text GLabel 3950 1300 2    50   Input ~ 0
D23
Text GLabel 3950 1400 2    50   Input ~ 0
D22
Text GLabel 3950 1500 2    50   Input ~ 0
TX0
Text GLabel 3950 1600 2    50   Input ~ 0
RX0
Text GLabel 3950 1700 2    50   Input ~ 0
D21
Text GLabel 3950 1800 2    50   Input ~ 0
D19
Text GLabel 3950 1900 2    50   Input ~ 0
D18
Text GLabel 3950 2000 2    50   Input ~ 0
D5
Text GLabel 3950 2100 2    50   Input ~ 0
TX2
Text GLabel 3950 2200 2    50   Input ~ 0
RX2
Text GLabel 3950 2300 2    50   Input ~ 0
D4
Text GLabel 3950 2400 2    50   Input ~ 0
D2
Text GLabel 3950 2500 2    50   Input ~ 0
D15
Text GLabel 3950 2700 2    50   Input ~ 0
3V3
Wire Wire Line
	3950 1300 3550 1300
Wire Wire Line
	3950 1400 3550 1400
Wire Wire Line
	3950 1500 3550 1500
Wire Wire Line
	3950 1600 3550 1600
Wire Wire Line
	3950 1700 3550 1700
Wire Wire Line
	3950 1800 3550 1800
Wire Wire Line
	3950 1900 3550 1900
Wire Wire Line
	3950 2000 3550 2000
Wire Wire Line
	3950 2100 3550 2100
Wire Wire Line
	3950 2200 3550 2200
Wire Wire Line
	3950 2300 3550 2300
Wire Wire Line
	3950 2400 3550 2400
Wire Wire Line
	3950 2500 3550 2500
Wire Wire Line
	3950 2700 3550 2700
Wire Wire Line
	1650 1300 2050 1300
Wire Wire Line
	1650 1400 2050 1400
Wire Wire Line
	1650 1500 2050 1500
Wire Wire Line
	1650 1600 2050 1600
Wire Wire Line
	1650 1700 2050 1700
Wire Wire Line
	1650 1800 2050 1800
Wire Wire Line
	1650 1900 2050 1900
Wire Wire Line
	1650 2000 2050 2000
Wire Wire Line
	1650 2100 2050 2100
Wire Wire Line
	1650 2200 2050 2200
Wire Wire Line
	1650 2300 2050 2300
Wire Wire Line
	1650 2400 2050 2400
Wire Wire Line
	1650 2500 2050 2500
Wire Notes Line
	900  3000 4350 3000
Text Notes 2050 900  0    50   ~ 0
Módulo ESP-WROOM32-DevKit1\n
Wire Notes Line
	4350 700  900  700 
Wire Notes Line
	900  700  900  3000
Wire Notes Line
	4350 700  4350 3000
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 6219A8D8
P 8750 2250
F 0 "J?" H 8830 2190 50  0000 C CNN
F 1 "Conn_01x02_Female_SV" H 8720 2080 50  0000 C CNN
F 2 "SLAVE:SolderWire-0.75sqmm_1x02_P4.8mm_D1.25mm_OD2.3mm" H 8750 2250 50  0001 C CNN
F 3 "~" H 8750 2250 50  0001 C CNN
	1    8750 2250
	1    0    0    -1  
$EndComp
Wire Notes Line
	10650 2900 10650 1750
Text GLabel 5850 2750 0    50   Input ~ 0
RX0
Text GLabel 5850 2850 0    50   Input ~ 0
TX0
$Comp
L power:+5V #PWR?
U 1 1 621F2808
P 1000 2600
F 0 "#PWR?" H 1000 2450 50  0001 C CNN
F 1 "+5V" H 1015 2773 50  0000 C CNN
F 2 "" H 1000 2600 50  0001 C CNN
F 3 "" H 1000 2600 50  0001 C CNN
	1    1000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2600 1000 2700
Wire Wire Line
	1000 2700 2050 2700
$Comp
L power:GND #PWR?
U 1 1 622052E0
P 1150 2500
F 0 "#PWR?" H 1150 2250 50  0001 C CNN
F 1 "GND" H 1155 2327 50  0000 C CNN
F 2 "" H 1150 2500 50  0001 C CNN
F 3 "" H 1150 2500 50  0001 C CNN
	1    1150 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 2600 1150 2500
Wire Wire Line
	1150 2600 2050 2600
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 62231822
P 8800 1150
F 0 "J?" H 8828 1126 50  0000 L CNN
F 1 "Conn_01x02_Female" H 8828 1035 50  0000 L CNN
F 2 "" H 8800 1150 50  0001 C CNN
F 3 "~" H 8800 1150 50  0001 C CNN
	1    8800 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J?
U 1 1 62243A42
P 9700 1200
F 0 "J?" H 9592 1485 50  0000 C CNN
F 1 "Conn_01x04_Female" H 9592 1394 50  0000 C CNN
F 2 "" H 9700 1200 50  0001 C CNN
F 3 "~" H 9700 1200 50  0001 C CNN
	1    9700 1200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 62292DE9
P 6000 1300
F 0 "J?" V 6062 1112 50  0000 R CNN
F 1 "Switch" V 6153 1112 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6000 1300 50  0001 C CNN
F 3 "~" H 6000 1300 50  0001 C CNN
	1    6000 1300
	0    -1   1    0   
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS?
U 1 1 622A159D
P 7000 1650
F 0 "PS?" H 7000 1975 50  0000 C CNN
F 1 "HLK-PM01" H 7000 1884 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 7000 1350 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 7400 1300 50  0001 C CNN
	1    7000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1500 6100 1550
Wire Wire Line
	6000 1500 6000 1650
Wire Wire Line
	6000 1650 5450 1650
Wire Wire Line
	6600 1750 6550 1750
$Comp
L power:PWR_FLAG #FLG?
U 1 1 622CF9F0
P 6550 1750
F 0 "#FLG?" H 6550 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 1923 50  0000 C CNN
F 2 "" H 6550 1750 50  0001 C CNN
F 3 "~" H 6550 1750 50  0001 C CNN
	1    6550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 622D0110
P 6550 1550
F 0 "#FLG?" H 6550 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 1723 50  0000 C CNN
F 2 "" H 6550 1550 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    1   
$EndComp
Connection ~ 6550 1550
Wire Wire Line
	6550 1550 6600 1550
$Comp
L power:+5V #PWR?
U 1 1 622DB783
P 7550 1400
F 0 "#PWR?" H 7550 1250 50  0001 C CNN
F 1 "+5V" H 7565 1573 50  0000 C CNN
F 2 "" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0001 C CNN
	1    7550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 622DC1F4
P 7550 1800
F 0 "#PWR?" H 7550 1550 50  0001 C CNN
F 1 "GND" H 7555 1627 50  0000 C CNN
F 2 "" H 7550 1800 50  0001 C CNN
F 3 "" H 7550 1800 50  0001 C CNN
	1    7550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1550 7550 1550
Wire Wire Line
	7550 1550 7550 1400
Wire Wire Line
	7400 1750 7550 1750
Wire Wire Line
	7550 1750 7550 1800
$Comp
L power:+5V #PWR?
U 1 1 622ED7BD
P 10100 950
F 0 "#PWR?" H 10100 800 50  0001 C CNN
F 1 "+5V" H 10115 1123 50  0000 C CNN
F 2 "" H 10100 950 50  0001 C CNN
F 3 "" H 10100 950 50  0001 C CNN
	1    10100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 622EDE98
P 10100 1500
F 0 "#PWR?" H 10100 1250 50  0001 C CNN
F 1 "GND" H 10105 1327 50  0000 C CNN
F 2 "" H 10100 1500 50  0001 C CNN
F 3 "" H 10100 1500 50  0001 C CNN
	1    10100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 950  10100 1100
Wire Wire Line
	10100 1100 9900 1100
Wire Wire Line
	10100 1500 10100 1400
Wire Wire Line
	10100 1300 9900 1300
Wire Wire Line
	9900 1400 10100 1400
Connection ~ 10100 1400
Wire Wire Line
	10100 1400 10100 1300
Text GLabel 10200 1200 2    50   Input ~ 0
VP_ZMPT
Wire Wire Line
	9900 1200 10200 1200
$Comp
L power:GND #PWR?
U 1 1 62346668
P 4250 2700
F 0 "#PWR?" H 4250 2450 50  0001 C CNN
F 1 "GND" H 4255 2527 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2600 4250 2700
Wire Wire Line
	3550 2600 4250 2600
Text Notes 5100 1100 0    50   ~ 10
Fuente de Alimentación HLK-PM01
Wire Notes Line
	4800 900  4800 2150
Wire Notes Line
	4800 2150 7700 2150
Wire Notes Line
	7700 2150 7700 900 
Wire Notes Line
	7700 900  4800 900 
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 6239A494
P 6250 2850
F 0 "J?" H 6278 2826 50  0000 L CNN
F 1 "Conn_01x06_Female" H 6278 2735 50  0000 L CNN
F 2 "" H 6250 2850 50  0001 C CNN
F 3 "~" H 6250 2850 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
Text GLabel 5850 2650 0    50   Input ~ 0
DTR
Text GLabel 5850 2950 0    50   Input ~ 0
VCC
Text GLabel 5850 3050 0    50   Input ~ 0
CTS
$Comp
L power:GND #PWR?
U 1 1 623CD6E2
P 5850 3250
F 0 "#PWR?" H 5850 3000 50  0001 C CNN
F 1 "GND" H 5855 3077 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3150 5850 3150
Wire Wire Line
	5850 3150 5850 3250
Wire Wire Line
	6050 3050 5850 3050
Wire Wire Line
	6050 2950 5850 2950
Wire Wire Line
	6050 2850 5850 2850
Wire Wire Line
	6050 2750 5850 2750
Wire Wire Line
	6050 2650 5850 2650
Wire Notes Line
	5450 2300 5450 3600
Wire Notes Line
	5450 3600 7150 3600
Wire Notes Line
	7150 3600 7150 2300
Wire Notes Line
	7150 2300 5450 2300
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 623E5D69
P 8550 3600
F 0 "J?" H 8578 3626 50  0000 L CNN
F 1 "Conn_01x03_Female" H 8578 3535 50  0000 L CNN
F 2 "" H 8550 3600 50  0001 C CNN
F 3 "~" H 8550 3600 50  0001 C CNN
	1    8550 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 623E700B
P 9950 3550
F 0 "J?" H 9842 3835 50  0000 C CNN
F 1 "Conn_01x03_Female" H 9842 3744 50  0000 C CNN
F 2 "" H 9950 3550 50  0001 C CNN
F 3 "~" H 9950 3550 50  0001 C CNN
	1    9950 3550
	-1   0    0    -1  
$EndComp
Text GLabel 8100 3700 0    50   Input ~ 0
NO
Text GLabel 8100 3500 0    50   Input ~ 0
NC
Text GLabel 8150 3600 0    50   Input ~ 0
COM
Text GLabel 10400 3450 2    50   Input ~ 0
D32_RELAY
$Comp
L power:GND #PWR?
U 1 1 623FCDC3
P 10500 3850
F 0 "#PWR?" H 10500 3600 50  0001 C CNN
F 1 "GND" H 10505 3677 50  0000 C CNN
F 2 "" H 10500 3850 50  0001 C CNN
F 3 "" H 10500 3850 50  0001 C CNN
	1    10500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 623FD4D5
P 10300 3700
F 0 "#PWR?" H 10300 3550 50  0001 C CNN
F 1 "+5V" H 10315 3873 50  0000 C CNN
F 2 "" H 10300 3700 50  0001 C CNN
F 3 "" H 10300 3700 50  0001 C CNN
	1    10300 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	10150 3450 10400 3450
Wire Wire Line
	10150 3550 10500 3550
Wire Wire Line
	10500 3550 10500 3850
Wire Wire Line
	10150 3650 10300 3650
Wire Wire Line
	10300 3650 10300 3700
Wire Wire Line
	8100 3500 8350 3500
Wire Wire Line
	8150 3600 8350 3600
Wire Wire Line
	8100 3700 8350 3700
Wire Notes Line
	7650 4250 11100 4250
Wire Notes Line
	11100 4250 11100 3050
Wire Notes Line
	11100 3050 7650 3050
Wire Notes Line
	7650 3050 7650 4250
Text GLabel 8350 2250 0    50   Input ~ 0
I_ACS
Text GLabel 8350 2350 0    50   Input ~ 0
COM
Wire Wire Line
	8550 2250 8350 2250
Wire Wire Line
	8550 2350 8350 2350
Wire Notes Line
	7950 2900 7950 1750
Wire Notes Line
	7950 2900 10650 2900
Wire Notes Line
	7950 1750 10650 1750
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 6243119F
P 5250 1750
F 0 "J?" H 5168 2067 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 5168 1976 50  0000 C CNN
F 2 "" H 5250 1750 50  0001 C CNN
F 3 "~" H 5250 1750 50  0001 C CNN
	1    5250 1750
	-1   0    0    -1  
$EndComp
NoConn ~ 5450 1850
Text GLabel 5650 1750 2    50   Input ~ 0
I_ACS
Text GLabel 6200 1750 0    50   Input ~ 0
NC
Connection ~ 6550 1750
Wire Wire Line
	6200 1750 6550 1750
Wire Wire Line
	6100 1550 6550 1550
Wire Wire Line
	5650 1750 5450 1750
$EndSCHEMATC

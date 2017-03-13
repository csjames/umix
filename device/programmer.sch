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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:programmer-cache
EELAYER 26 0
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
L LPC11U68JBD48 U1
U 1 1 5885F8F5
P 4900 4050
F 0 "U1" H 4900 5728 50  0000 C CNN
F 1 "LPC11U68JBD48" H 4900 5637 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 5850 2850 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/LPC11U6X.pdf" H 4900 2575 50  0001 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
$Comp
L Crystal 12Mhz1
U 1 1 5885F984
P 6550 5000
F 0 "12Mhz1" V 6596 4869 50  0000 R CNN
F 1 "Crystal" V 6505 4869 50  0000 R CNN
F 2 "Crystals:Resonator-2pin_w10.0mm_h5.0mm" H 6550 5000 50  0001 C CNN
F 3 "" H 6550 5000 50  0001 C CNN
	1    6550 5000
	0    -1   -1   0   
$EndComp
$Comp
L C 18pF1
U 1 1 5885FAA5
P 7050 4850
F 0 "18pF1" V 6798 4850 50  0000 C CNN
F 1 "C" V 6889 4850 50  0000 C CNN
F 2 "Capacitors_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 7088 4700 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	0    1    1    0   
$EndComp
$Comp
L C 18pF2
U 1 1 5885FCE8
P 7050 5250
F 0 "18pF2" V 6798 5250 50  0000 C CNN
F 1 "C" V 6889 5250 50  0000 C CNN
F 2 "Capacitors_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 7088 5100 50  0001 C CNN
F 3 "" H 7050 5250 50  0001 C CNN
	1    7050 5250
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 5886013C
P 3550 2300
F 0 "#PWR01" H 3550 2150 50  0001 C CNN
F 1 "+3.3V" H 3565 2473 50  0000 C CNN
F 2 "" H 3550 2300 50  0001 C CNN
F 3 "" H 3550 2300 50  0001 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58860158
P 7150 5550
F 0 "#PWR02" H 7150 5300 50  0001 C CNN
F 1 "GND" H 7155 5377 50  0000 C CNN
F 2 "" H 7150 5550 50  0001 C CNN
F 3 "" H 7150 5550 50  0001 C CNN
	1    7150 5550
	1    0    0    -1  
$EndComp
$Comp
L USB_A P1
U 1 1 588606BA
P 7600 4300
F 0 "P1" V 7580 4488 50  0000 L CNN
F 1 "USB_A" V 7671 4488 50  0000 L CNN
F 2 "Connectors:USB_A" V 7550 4200 50  0001 C CNN
F 3 "" V 7550 4200 50  0001 C CNN
	1    7600 4300
	0    1    1    0   
$EndComp
$Comp
L C 0.1uF1
U 1 1 58860B45
P 2950 5350
F 0 "0.1uF1" H 3065 5396 50  0000 L CNN
F 1 "C" H 3065 5305 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 2988 5200 50  0001 C CNN
F 3 "" H 2950 5350 50  0001 C CNN
	1    2950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4950 6400 4950
Wire Wire Line
	6400 4950 6400 4850
Wire Wire Line
	6400 4850 6900 4850
Wire Wire Line
	6100 5050 6400 5050
Wire Wire Line
	6400 5050 6400 5150
Wire Wire Line
	6400 5150 6900 5150
Wire Wire Line
	6900 5150 6900 5250
Connection ~ 6550 5150
Connection ~ 6550 4850
Wire Wire Line
	7200 5250 7200 4850
Wire Wire Line
	7200 5050 7350 5050
Wire Wire Line
	7350 5050 7350 5550
Wire Wire Line
	5250 5550 7700 5550
Connection ~ 7200 5050
Wire Wire Line
	7300 4400 7300 4950
Wire Wire Line
	7300 4950 7500 4950
Wire Wire Line
	7500 4950 7500 5550
Wire Wire Line
	7300 4200 6700 4200
Wire Wire Line
	6700 4200 6700 4650
Wire Wire Line
	6700 4650 6100 4650
Wire Wire Line
	7300 4300 6750 4300
Wire Wire Line
	6750 4300 6750 4550
Wire Wire Line
	6750 4550 6100 4550
Wire Wire Line
	7150 5550 7150 5450
Wire Wire Line
	5250 2950 5250 5550
Wire Wire Line
	5250 3150 6100 3150
Connection ~ 7150 5550
Wire Wire Line
	6100 2950 5250 2950
Connection ~ 5250 3150
Wire Wire Line
	5250 3050 6100 3050
Connection ~ 5250 3050
Wire Wire Line
	5250 5350 5000 5350
Connection ~ 5250 5350
Wire Wire Line
	5250 5450 4800 5450
Wire Wire Line
	4800 5450 4800 5350
Connection ~ 5250 5450
Wire Wire Line
	5250 4150 3700 4150
Connection ~ 5250 4150
Wire Wire Line
	3550 2300 5000 2300
Wire Wire Line
	4450 2300 4450 4650
Wire Wire Line
	4450 4650 3700 4650
Wire Wire Line
	4450 4050 3700 4050
Connection ~ 4450 4050
Wire Wire Line
	4450 2550 4800 2550
Connection ~ 4450 2550
Wire Wire Line
	5000 2300 5000 2550
Connection ~ 4450 2300
Wire Wire Line
	4450 4350 3700 4350
Connection ~ 4450 4350
Wire Wire Line
	2950 5200 2950 2400
Wire Wire Line
	2950 2400 3550 2400
Wire Wire Line
	3550 2400 3550 2300
Wire Wire Line
	2950 5500 7100 5500
Wire Wire Line
	7100 5500 7100 5450
Wire Wire Line
	7100 5450 7150 5450
Wire Wire Line
	7700 5550 7700 4600
Connection ~ 7500 5550
$EndSCHEMATC

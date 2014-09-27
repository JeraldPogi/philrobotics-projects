/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_gpio.h"                                |
* |:----          |:----                                        |
* |Description:   | General Purpose Input/Output Hardware Abstraction Layer Header File for PIC |
* |Revision:      | v01.01.01                                   |
* |Author:        | Giancarlo Acelajado                         |
* |               |                                             |
* |Dependencies:  |                                             |
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130405   |ESCII              |Separated module to HAL and Corelib|
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning, included unit test stub|
* |v01.01.01    |20130521   |ESCII              |Change AnalogPins_et constants from ANx to Ax for PIC18F4520 compatibility|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_GPIO_H__
#define __HAL_GPIO_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                 // autodefined at unit testing script
#include "hal_gpio_test_stub.h"
#else
#include "PhilRoboKit_CoreLib_Macro.h"
#endif

/* User Configuration Definitions */
/* Port Value and Direction Defaults */
/* Port A */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTA_OUT                       REGISTER_LATA
#else
#define PORTA_OUT                       REGISTER_PORTA
#endif
#define PORTA_VAL                       REGISTER_PORTA
#define PORTA_DIR                       REGISTER_TRISA

/* Port B */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTB_OUT                       REGISTER_LATB
#else
#define PORTB_OUT                       REGISTER_PORTB
#endif
#define PORTB_VAL                       REGISTER_PORTB
#define PORTB_DIR                       REGISTER_TRISB

/* Port C */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTC_OUT                       REGISTER_LATC
#else
#define PORTC_OUT                       REGISTER_PORTC
#endif
#define PORTC_VAL                       REGISTER_PORTC
#define PORTC_DIR                       REGISTER_TRISC

/* Port D */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTD_OUT                       REGISTER_LATD
#else
#define PORTD_OUT                       REGISTER_PORTD
#endif
#define PORTD_VAL                       REGISTER_PORTD
#define PORTD_DIR                       REGISTER_TRISD

/* Port E */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTE_OUT                       REGISTER_LATE
#else
#define PORTE_OUT                       REGISTER_PORTE
#endif
#define PORTE_VAL                       REGISTER_PORTE
#define PORTE_DIR                       REGISTER_TRISE

/* Global Constants */
enum PinStateOperation_et
{
    SET_PIN,
    CLR_PIN,
    TOGGLE_PIN
};

/* Pin Definitions */
enum DigitalPins_et
{
    D0, D1, D2, D3, D4, D5, D6,                         /* PORTC */
    D7, D8, D9, D10, D11, D12, D13,                     /* PORTB */
    D14, D15, D16, D17, D18, D19, D20,                  /* PORTA and PORTE (Analog Pins Configured as Digital Pins */
    D21, D22, D23, D24, D25, D26, D27, D28              /* PORTD, Ready to Fly Port */
};

enum AnalogPins_et
{
    A0, A1, A2, A3, A4, A5, A6
};

/* PORTD, Ready to Fly Port */
#define SERVO                           D21
#define BUZZER                          D22
#define SW2                             D23
#define SW1                             D24
#define LED4                            D25
#define LED3                            D26
#define LED2                            D27
#define LED1                            D28

/* PORTC */
// D0
#define kREG_D0_OUT                     PORTC_OUT
#define kREG_D0_VAL                     PORTC_VAL
#define kREG_D0_DIR                     PORTC_DIR
#define k8_D0_MASK                      0x01
// D1
#define kREG_D1_OUT                     PORTC_OUT
#define kREG_D1_VAL                     PORTC_VAL
#define kREG_D1_DIR                     PORTC_DIR
#define k8_D1_MASK                      0x02
// D2
#define kREG_D2_OUT                     PORTC_OUT
#define kREG_D2_VAL                     PORTC_VAL
#define kREG_D2_DIR                     PORTC_DIR
#define k8_D2_MASK                      0x04
// D3
#define kREG_D3_OUT                     PORTC_OUT
#define kREG_D3_VAL                     PORTC_VAL
#define kREG_D3_DIR                     PORTC_DIR
#define k8_D3_MASK                      0x08
// D4
#define kREG_D4_OUT                     PORTC_OUT
#define kREG_D4_VAL                     PORTC_VAL
#define kREG_D4_DIR                     PORTC_DIR
#define k8_D4_MASK                      0x10
// D5
#define kREG_D5_OUT                     PORTC_OUT
#define kREG_D5_VAL                     PORTC_VAL
#define kREG_D5_DIR                     PORTC_DIR
#define k8_D5_MASK                      0x20
// D6
#define kREG_D6_OUT                     PORTC_OUT
#define kREG_D6_VAL                     PORTC_VAL
#define kREG_D6_DIR                     PORTC_DIR
#define k8_D6_MASK                      0x40
// D7
#define kREG_D7_OUT                     PORTC_OUT
#define kREG_D7_VAL                     PORTC_VAL
#define kREG_D7_DIR                     PORTC_DIR
#define k8_D7_MASK                      0x80

/* PORTB */
// D8
#define kREG_D8_OUT                     PORTB_OUT
#define kREG_D8_VAL                     PORTB_VAL
#define kREG_D8_DIR                     PORTB_DIR
#define k8_D8_MASK                      0x01
// D9
#define kREG_D9_OUT                     PORTB_OUT
#define kREG_D9_VAL                     PORTB_VAL
#define kREG_D9_DIR                     PORTB_DIR
#define k8_D9_MASK                      0x02
// D10
#define kREG_D10_OUT                    PORTB_OUT
#define kREG_D10_VAL                    PORTB_VAL
#define kREG_D10_DIR                    PORTB_DIR
#define k8_D10_MASK                     0x04
// D11
#define kREG_D11_OUT                    PORTB_OUT
#define kREG_D11_VAL                    PORTB_VAL
#define kREG_D11_DIR                    PORTB_DIR
#define k8_D11_MASK                     0x08
// D12
#define kREG_D12_OUT                    PORTB_OUT
#define kREG_D12_VAL                    PORTB_VAL
#define kREG_D12_DIR                    PORTB_DIR
#define k8_D12_MASK                     0x10
// D13
#define kREG_D13_OUT                    PORTB_OUT
#define kREG_D13_VAL                    PORTB_VAL
#define kREG_D13_DIR                    PORTB_DIR
#define k8_D13_MASK                     0x20

/* PORTA and PORTE (Analog Pins Configured as Digital Pins */
// D14
#define kREG_D14_OUT                    PORTA_OUT
#define kREG_D14_VAL                    PORTA_VAL
#define kREG_D14_DIR                    PORTA_DIR
#define k8_D14_MASK                     0x01
// D15
#define kREG_D15_OUT                    PORTA_OUT
#define kREG_D15_VAL                    PORTA_VAL
#define kREG_D15_DIR                    PORTA_DIR
#define k8_D15_MASK                     0x02
// D16
#define kREG_D16_OUT                    PORTA_OUT
#define kREG_D16_VAL                    PORTA_VAL
#define kREG_D16_DIR                    PORTA_DIR
#define k8_D16_MASK                     0x04
// D17
#define kREG_D17_OUT                    PORTA_OUT
#define kREG_D17_VAL                    PORTA_VAL
#define kREG_D17_DIR                    PORTA_DIR
#define k8_D17_MASK                     0x20
// D18
#define kREG_D18_OUT                    PORTE_OUT
#define kREG_D18_VAL                    PORTE_VAL
#define kREG_D18_DIR                    PORTE_DIR
#define k8_D18_MASK                     0x01
// D19
#define kREG_D19_OUT                    PORTE_OUT
#define kREG_D19_VAL                    PORTE_VAL
#define kREG_D19_DIR                    PORTE_DIR
#define k8_D19_MASK                     0x02
// D20
#define kREG_D20_OUT                    PORTE_OUT
#define kREG_D20_VAL                    PORTE_VAL
#define kREG_D20_DIR                    PORTE_DIR
#define k8_D20_MASK                     0x04

/* PORTD, Ready to Fly Port */
// D21
#define kREG_D21_OUT                  	PORTD_OUT
#define kREG_D21_VAL                  	PORTD_VAL
#define kREG_D21_DIR                  	PORTD_DIR
#define k8_D21_MASK                   	0x01
// D22
#define kREG_D22_OUT                 	PORTD_OUT
#define kREG_D22_VAL                 	PORTD_VAL
#define kREG_D22_DIR                 	PORTD_DIR
#define k8_D22_MASK                  	0x02
// D23
#define kREG_D23_OUT                    PORTD_OUT
#define kREG_D23_VAL                    PORTD_VAL
#define kREG_D23_DIR                    PORTD_DIR
#define k8_D23_MASK                     0x04
// D24
#define kREG_D24_OUT                    PORTD_OUT
#define kREG_D24_VAL                    PORTD_VAL
#define kREG_D24_DIR                    PORTD_DIR
#define k8_D24_MASK                     0x08
// D25
#define kREG_D25_OUT                   	PORTD_OUT
#define kREG_D25_VAL                   	PORTD_VAL
#define kREG_D25_DIR                   	PORTD_DIR
#define k8_D25_MASK                    	0x10
// D26
#define kREG_D26_OUT                   	PORTD_OUT
#define kREG_D26_VAL                   	PORTD_VAL
#define kREG_D26_DIR                   	PORTD_DIR
#define k8_D26_MASK                    	0x20
// D27
#define kREG_D27_OUT                   	PORTD_OUT
#define kREG_D27_VAL                   	PORTD_VAL
#define kREG_D27_DIR                   	PORTD_DIR
#define k8_D27_MASK                    	0x40
// D28
#define kREG_D28_OUT                   	PORTD_OUT
#define kREG_D28_VAL                   	PORTD_VAL
#define kREG_D28_DIR                   	PORTD_DIR
#define k8_D28_MASK                    	0x80

/* PORTD, Ready to Fly Port */
// SERVO
#define kREG_SERVO_OUT                  PORTD_OUT
#define kREG_SERVO_VAL                  PORTD_VAL
#define kREG_SERVO_DIR                  PORTD_DIR
#define k8_SERVO_MASK                   0x01
// BUZZER
#define kREG_BUZZER_OUT                 PORTD_OUT
#define kREG_BUZZER_VAL                 PORTD_VAL
#define kREG_BUZZER_DIR                 PORTD_DIR
#define k8_BUZZER_MASK                  0x02
// SW2
#define kREG_SW2_OUT                    PORTD_OUT
#define kREG_SW2_VAL                    PORTD_VAL
#define kREG_SW2_DIR                    PORTD_DIR
#define k8_SW2_MASK                     0x04
// SW1
#define kREG_SW1_OUT                    PORTD_OUT
#define kREG_SW1_VAL                    PORTD_VAL
#define kREG_SW1_DIR                    PORTD_DIR
#define k8_SW1_MASK                     0x08
// LED4
#define kREG_LED4_OUT                   PORTD_OUT
#define kREG_LED4_VAL                   PORTD_VAL
#define kREG_LED4_DIR                   PORTD_DIR
#define k8_LED4_MASK                    0x10
// LED3
#define kREG_LED3_OUT                   PORTD_OUT
#define kREG_LED3_VAL                   PORTD_VAL
#define kREG_LED3_DIR                   PORTD_DIR
#define k8_LED3_MASK                    0x20
// LED2
#define kREG_LED2_OUT                   PORTD_OUT
#define kREG_LED2_VAL                   PORTD_VAL
#define kREG_LED2_DIR                   PORTD_DIR
#define k8_LED2_MASK                    0x40
// LED1
#define kREG_LED1_OUT                   PORTD_OUT
#define kREG_LED1_VAL                   PORTD_VAL
#define kREG_LED1_DIR                   PORTD_DIR
#define k8_LED1_MASK                    0x80

/* Macro and Configuration Definitions */
#define inline_makeInput(Pin)		\
	switch(Pin)						\
	{								\
		case 0:						\
			mc_makeInput(D0);		\
			break;					\
		case 1:						\
			mc_makeInput(D1);		\
			break;					\
		case 2:						\
			mc_makeInput(D2);		\
			break;					\
		case 3:						\
			mc_makeInput(D3);		\
			break;					\
		case 4:						\
			mc_makeInput(D4);		\
			break;					\
		case 5:						\
			mc_makeInput(D5);		\
			break;					\
		case 6:						\
			mc_makeInput(D6);		\
			break;					\
		case 7:						\
			mc_makeInput(D7);		\
			break;					\
		case 8:						\
			mc_makeInput(D8);		\
			break;					\
		case 9:						\
			mc_makeInput(D9);		\
			break;					\
		case 10:					\
			mc_makeInput(D10);		\
			break;					\
		case 11:					\
			mc_makeInput(D11);		\
			break;					\
		case 12:					\
			mc_makeInput(D12);		\
			break;					\
		case 13:					\
			mc_makeInput(D13);		\
			break;					\
		case 14:					\
			mc_makeInput(D14);		\
			break;					\
		case 15:					\
			mc_makeInput(D15);		\
			break;					\
		case 16:					\
			mc_makeInput(D16);		\
			break;					\
		case 17:					\
			mc_makeInput(D17);		\
			break;					\
		case 18:					\
			mc_makeInput(D18);		\
			break;					\
		case 19:					\
			mc_makeInput(D19);		\
			break;					\
		case 20:					\
			mc_makeInput(D20);		\
			break;					\
		case 21:					\
			mc_makeInput(D21);		\
			break;					\
		case 22:					\
			mc_makeInput(D22);		\
			break;					\
		case 23:					\
			mc_makeInput(D23);		\
			break;					\
		case 24:					\
			mc_makeInput(D24);		\
			break;					\
		case 25:					\
			mc_makeInput(D25);		\
			break;					\
		case 26:					\
			mc_makeInput(D26);		\
			break;					\
		case 27:					\
			mc_makeInput(D27);		\
			break;					\
		case 28:					\
			mc_makeInput(D28);		\
			break;					\
	}	
	
#define inline_makeOutput(Pin)		\
	switch(Pin)						\
	{								\
		case 0:						\
			mc_makeOutput(D0);		\
			break;					\
		case 1:						\
			mc_makeOutput(D1);		\
			break;					\
		case 2:						\
			mc_makeOutput(D2);		\
			break;					\
		case 3:						\
			mc_makeOutput(D3);		\
			break;					\
		case 4:						\
			mc_makeOutput(D4);		\
			break;					\
		case 5:						\
			mc_makeOutput(D5);		\
			break;					\
		case 6:						\
			mc_makeOutput(D6);		\
			break;					\
		case 7:						\
			mc_makeOutput(D7);		\
			break;					\
		case 8:						\
			mc_makeOutput(D8);		\
			break;					\
		case 9:						\
			mc_makeOutput(D9);		\
			break;					\
		case 10:					\
			mc_makeOutput(D10);		\
			break;					\
		case 11:					\
			mc_makeOutput(D11);		\
			break;					\
		case 12:					\
			mc_makeOutput(D12);		\
			break;					\
		case 13:					\
			mc_makeOutput(D13);		\
			break;					\
		case 14:					\
			mc_makeOutput(D14);		\
			break;					\
		case 15:					\
			mc_makeOutput(D15);		\
			break;					\
		case 16:					\
			mc_makeOutput(D16);		\
			break;					\
		case 17:					\
			mc_makeOutput(D17);		\
			break;					\
		case 18:					\
			mc_makeOutput(D18);		\
			break;					\
		case 19:					\
			mc_makeOutput(D19);		\
			break;					\
		case 20:					\
			mc_makeOutput(D20);		\
			break;					\
		case 21:					\
			mc_makeOutput(D21);		\
			break;					\
		case 22:					\
			mc_makeOutput(D22);		\
			break;					\
		case 23:					\
			mc_makeOutput(D23);		\
			break;					\
		case 24:					\
			mc_makeOutput(D24);		\
			break;					\
		case 25:					\
			mc_makeOutput(D25);		\
			break;					\
		case 26:					\
			mc_makeOutput(D26);		\
			break;					\
		case 27:					\
			mc_makeOutput(D27);		\
			break;					\
		case 28:					\
			mc_makeOutput(D28);		\
			break;					\
	}	

#define inline_setPin(Pin)			\
	switch(Pin)						\
	{								\
		case 0:						\
			mc_setPin(D0);			\
			break;					\
		case 1:						\
			mc_setPin(D1);			\
			break;					\
		case 2:						\
			mc_setPin(D2);			\
			break;					\
		case 3:						\
			mc_setPin(D3);			\
			break;					\
		case 4:						\
			mc_setPin(D4);			\
			break;					\
		case 5:						\
			mc_setPin(D5);			\
			break;					\
		case 6:						\
			mc_setPin(D6);			\
			break;					\
		case 7:						\
			mc_setPin(D7);			\
			break;					\
		case 8:						\
			mc_setPin(D8);			\
			break;					\
		case 9:						\
			mc_setPin(D9);			\
			break;					\
		case 10:					\
			mc_setPin(D10);			\
			break;					\
		case 11:					\
			mc_setPin(D11);			\
			break;					\
		case 12:					\
			mc_setPin(D12);			\
			break;					\
		case 13:					\
			mc_setPin(D13);			\
			break;					\
		case 14:					\
			mc_setPin(D14);			\
			break;					\
		case 15:					\
			mc_setPin(D15);			\
			break;					\
		case 16:					\
			mc_setPin(D16);			\
			break;					\
		case 17:					\
			mc_setPin(D17);			\
			break;					\
		case 18:					\
			mc_setPin(D18);			\
			break;					\
		case 19:					\
			mc_setPin(D19);			\
			break;					\
		case 20:					\
			mc_setPin(D20);			\
			break;					\
		case 21:					\
			mc_setPin(D21);			\
			break;					\
		case 22:					\
			mc_setPin(D22);			\
			break;					\
		case 23:					\
			mc_setPin(D23);			\
			break;					\
		case 24:					\
			mc_setPin(D24);			\
			break;					\
		case 25:					\
			mc_setPin(D25);			\
			break;					\
		case 26:					\
			mc_setPin(D26);			\
			break;					\
		case 27:					\
			mc_setPin(D27);			\
			break;					\
		case 28:					\
			mc_setPin(D28);			\
			break;					\
	}	

#define inline_clrPin(Pin)			\
	switch(Pin)						\
	{								\
		case 0:						\
			mc_clrPin(D0);			\
			break;					\
		case 1:						\
			mc_clrPin(D1);			\
			break;					\
		case 2:						\
			mc_clrPin(D2);			\
			break;					\
		case 3:						\
			mc_clrPin(D3);			\
			break;					\
		case 4:						\
			mc_clrPin(D4);			\
			break;					\
		case 5:						\
			mc_clrPin(D5);			\
			break;					\
		case 6:						\
			mc_clrPin(D6);			\
			break;					\
		case 7:						\
			mc_clrPin(D7);			\
			break;					\
		case 8:						\
			mc_clrPin(D8);			\
			break;					\
		case 9:						\
			mc_clrPin(D9);			\
			break;					\
		case 10:					\
			mc_clrPin(D10);			\
			break;					\
		case 11:					\
			mc_clrPin(D11);			\
			break;					\
		case 12:					\
			mc_clrPin(D12);			\
			break;					\
		case 13:					\
			mc_clrPin(D13);			\
			break;					\
		case 14:					\
			mc_clrPin(D14);			\
			break;					\
		case 15:					\
			mc_clrPin(D15);			\
			break;					\
		case 16:					\
			mc_clrPin(D16);			\
			break;					\
		case 17:					\
			mc_clrPin(D17);			\
			break;					\
		case 18:					\
			mc_clrPin(D18);			\
			break;					\
		case 19:					\
			mc_clrPin(D19);			\
			break;					\
		case 20:					\
			mc_clrPin(D20);			\
			break;					\
		case 21:					\
			mc_clrPin(D21);			\
			break;					\
		case 22:					\
			mc_clrPin(D22);			\
			break;					\
		case 23:					\
			mc_clrPin(D23);			\
			break;					\
		case 24:					\
			mc_clrPin(D24);			\
			break;					\
		case 25:					\
			mc_clrPin(D25);			\
			break;					\
		case 26:					\
			mc_clrPin(D26);			\
			break;					\
		case 27:					\
			mc_clrPin(D27);			\
			break;					\
		case 28:					\
			mc_clrPin(D28);			\
			break;					\
	}	
	
/* Pin Direction */
#define mc_makeInput(pin)               (kREG_##pin##_DIR |= k8_##pin##_MASK)
#define mc_makeOutput(pin)              (kREG_##pin##_DIR &= ~k8_##pin##_MASK)

/* Input Pins */
#define mc_getPinState(pin)             ((k8_##pin##_MASK==(kREG_##pin##_VAL&k8_##pin##_MASK)) ? HIGH : LOW)

/* Output Pins */
#define mc_setPin(pin)                  (kREG_##pin##_OUT |= k8_##pin##_MASK)
#define mc_clrPin(pin)                  (kREG_##pin##_OUT &= ~k8_##pin##_MASK)
#define mc_togglePin(pin)               (kREG_##pin##_OUT ^= k8_##pin##_MASK)

/* Public Function Prototypes */
void configPin(uint8_t ui8Pin, uint8_t ui8Direction);
void changePinState(uint8_t ui8Pin, enum PinStateOperation_et eOperation);
bool_t checkPinState(uint8_t ui8Pin);

#endif/* end of hal_gpio.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

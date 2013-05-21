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
#include <PhilRoboKit_CoreLib_Macro.h>
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

/* PORTD, Ready to Fly Port */
#define SERVO                           D21
#define BUZZER                          D22
#define SW2                             D23
#define SW1                             D24
#define LED4                            D25
#define LED3                            D26
#define LED2                            D27
#define LED1                            D28

enum AnalogPins_et
{
    //AN0, AN1, AN2, AN3, AN4, AN5, AN6
    A0, A1, A2, A3, A4, A5, A6
};

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

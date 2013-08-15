/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_pwm.h"                                 |
* |:----          |:----                                        |
* |Description:   | This is a header file of the driver for micrcochip capture compare peripheral used for PWM  |
* |Revision:      | v00.02.00                                   |
* |Author:        | Efren S. Cruzat II                          |
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
* |v00.00.01    |20120620   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130205   |ESCII              |Modified For Layered Architecture  |
* |v00.02.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_PWM_H__
#define __HAL_PWM_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "hal_pwm_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#include "hal_8bit_timer.h"
#endif

/* Global Constants */
/* CCP_PWM Mode */
enum PWMModes_et
{
    PWM_OFF                                 = 0x00,
    COMP_TOGGLE_CCPO                        = 0x02,
    CAPTURE_FALL                            = 0x04,
    CAPTURE_RISE                            = 0x05,
    CAPTURE_4TH_FALL                        = 0x06,
    CAPTURE_16TH_RISE                       = 0x07,
    PWM_MODE                                = 0x0C
            // 0x0D
            // 0x0E
            // 0x0F
};

#define CCP_PWM_MODE                        PWM_MODE

enum PWMPrescaler_et
{
    PRESCALE0_VAL                           = 0,
    PRESCALE1_VAL                           = 1,
    PRESCALE2_VAL                           = 2
};

//***********************************************************************************
// TMR Prescaler Value
//      0  - 1
//      1  - 4
//      2  - 16
//***********************************************************************************
#if (_XTAL_FREQ == 32000000) || (defined S_SPLINT_S)
//***********************************************************************************
// @32Mhz -> TOSC = 31.25nS
// PWM Period = [(PR2) + 1] * 4 * TOSC * Prescaler
// Period(uS)  = [PR2+1]  * 125nS * Prescaler
// 1.96kHz - 500kHz
// Prescaler 1
// 31.25Khz     -> uS
// 8Mhz         -> uS
//
// Prescaler 4
// 7.81Khz      -> uS
// 2Mhz         -> uS
//
// Prescaler 16
// 1.96Khz      -> uS
// 500kHz       -> uS
//
// ui16Frequency: in 10Hz/Bit Resolution (e.g. 1kHz/10Hz = 100)
//***********************************************************************************
#define K_T_SCALED                          125
#define K_MAX_FREQ_RANGE                    20000       // 200kH @ 10Hz resolution
#define K_MIN_FREQ_RANGE                    196         // 1.96kHz @ 10Hz resolution

#define K_PERIOD_SAT_LIM                    255

#define K_PRESCALE0_FREQ_LIM                3125        // >31.25kHz, div by 1
#define K_PRESCALE1_FREQ_LIM                781         // >7.81kHz, div by 4
#define K_PRESCALE2_FREQ_LIM                196         // >1.96kHz, div by 16

#elif (_XTAL_FREQ == 20000000)
//***********************************************************************************
// @20Mhz -> TOSC = 50nS
// PWM Period = [(PR2) + 1] * 4 * TOSC * Prescaler
// Period(uS)  = [PR2+1]  * 200nS * Prescaler
// 1.22kHz - 200kHz
// Prescaler 1
// 19.53Khz     -> 51.20uS
// 200Khz       -> 5.00uS
//
// Prescaler 4
// 4.88Khz      -> 204.92uS
// 19.53Khz     -> 51.20uS
//
// Prescaler 16
// 1.22Khz      -> 819.67uS
// 4.88kHz      -> 204.92uS
//
// ui16Frequency: in 10Hz/Bit Resolution (e.g. 1kHz/10Hz = 100)
//***********************************************************************************
#define K_T_SCALED                          200

#define K_MAX_FREQ_RANGE                    20000       // 200kH @ 10Hz resolution
#define K_MIN_FREQ_RANGE                    122         // 1.22kHz @ 10Hz resolution

#define K_PERIOD_SAT_LIM                    255

#define K_PRESCALE0_FREQ_LIM                1953        // >19.53kHz, div by 1
#define K_PRESCALE1_FREQ_LIM                488         // >4.88kHz, div by 4
#define K_PRESCALE2_FREQ_LIM                122         // >1.22kHz, div by 16

#else
#warning Clock Frequency Not Defined

#endif

//***********************************************************************************
// @20Mhz -> TOSC = 50nS
// Pulse Width =(CCPR1L:CCP1CON<5:4>) * TOSC *Prescaler
// Pulse Width  = CCP1CON  * 50nS * Prescaler
//
// ui16DutyCycle: 0.1%/Bit Resolution (e.g. 50% /0.1% = 500)
//***********************************************************************************
#define K_DUTY_SAT_LIM                      1000        // 100% duty cycle @ 0.1% resolution

/* Macro and Configuration Definitions */
#if 0   // not for PIC16F877A
/* Configure PWM to use TMR4 Module */
#define TMR2_CLOCK                          0x00
#define TMR4_CLOCK                          0x01
#define TMR6_CLOCK                          0x02

#define CCP_PWM_CLOCK                       TMR2_CLOCK

#define mc_PWMClk_Source(a)                 \
    REG_CCPTMRS &= ~C1_TIMERSEL_MASK;       \
    REG_CCPTMRS |= a&C1_TIMERSEL_MASK       // semi-collon intentionally omitted
#endif

#define hal_enablePWMTmrInt()               hal_enableTMR2Int()
#define hal_disablePWMTmrInt()              hal_disableTMR2Int()
#define hal_clrPWMTmrIntFlag()              hal_clrTMR2IntFlag()

#define hal_enablePWMTmr()                  hal_enableTMR2()
#define hal_disablePWMTmr()                 hal_disableTMR2()

#define hal_configCCP1Mode(a)               \
    REGISTER_CCP1CON = a&CCP_MODE_MASK      // semi-collon intentionally omitted

#define hal_configCCP2Mode(a)               \
    REGISTER_CCP2CON = a&CCP_MODE_MASK      // semi-collon intentionally omitted

#define hal_setPWM0_On()                    \
    hal_configCCP1Mode(PWM_MODE)            // semi-collon intentionally omitted
//hal_enablePWMTmr()

#define hal_setPWM0_Off()                   \
    hal_configCCP1Mode(PWM_OFF)             // semi-collon intentionally omitted
//hal_disablePWMTmr()

#define hal_setPWM1_On()                    \
    hal_configCCP2Mode(PWM_MODE)            // semi-collon intentionally omitted
//hal_enablePWMTmr()

#define hal_setPWM1_Off()                   \
    hal_configCCP2Mode(PWM_OFF)             // semi-collon intentionally omitted
//hal_disablePWMTmr()

#define hal_initPWMTimer(a)                 setup8BitTimerFull(TIMER2,nullTMRFunction,a,0)

#define hal_setPWMPeriod(period)            set8BitTimer(TIMER2,period)

#define hal_setPWM0Ton(a)                   \
    REGISTER_CCP1CON &= ~PWM_DC_LSB_MASK;   \
    REGISTER_CCP1CON |= (a&0x0003)<<4;      \
    REGISTER_CCPR1L = (a&0x03FC)>>2         // semi-collon intentionally omitted

#define hal_setPWM1Ton(a)                   \
    REGISTER_CCP2CON &= ~PWM_DC_LSB_MASK;   \
    REGISTER_CCP2CON |= (a&0x0003)<<4;      \
    REGISTER_CCPR2L = (a&0x03FC)>>2         // semi-collon intentionally omitted

/* Public Function Prototypes */
/* none */

#endif  /* end of hal_pwm.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

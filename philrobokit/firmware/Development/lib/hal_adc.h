/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_adc.h"                                 |
* |:----          |:----                                        |
* |Description:   | This is a header file of the ADC peripheral configuration driver |
* |Revision:      | v01.01.00                                   |
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
* |v00.01.00    |20110xxx   |Giancarlo A.       |Library Initial Release            |
* |v00.01.01    |201203xx   |Giancarlo A.       |Fix Bugs, add removeADC            |
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130307   |ESC II             |Organized functions into HAL and CoreLib|
* |v01.00.02    |20130513   |ESC II             |fixed hal_configADCPins, cleared config before write, found on corelib_adc module testing|
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_ADC_H__
#define __HAL_ADC_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                        // autodefined at unit testing script
#include "hal_adc_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#endif

/* User Configuration Definitions */
/* none */

/* Global Constants */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
/* PIC18F4520 Specific */
enum adcModuleCfg_et
{
    CFG_ALLANALOG                                       = 0x00,
    CFG_ALLDIGITAL                                      = 0x0F,
    CFG_EXTVREF                                         = 0x10
};

#elif (__PHR_CONTROLLER__==__MCU_PIC16__)
/* PIC16F877A Specific */
enum adcModuleCfg_et
{
    CFG_ALLANALOG                                       = 0x00,
    CFG_ALLDIGITAL                                      = 0x07,
    CFG_EXTVREF                                         = 0x01
};

#else
#endif

/* Macro and Configuration Definitions */
#define hal_enableADCInt()                              (BIT_PIE1_ADIE = 1)
#define hal_disableADCInt()                             (BIT_PIE1_ADIE = 0)
#define hal_getADCIntEnableStatus()                     ((BIT_PIE1_ADIE) ? true : false)

#define hal_clrADCIntFlag()                             (BIT_PIR1_ADIF = 0)
#define hal_getADCIntFlag()                             ((BIT_PIR1_ADIF) ? true : false)

#define hal_enableADC()                                 (BIT_ADCON0_ADON = 1)
#define hal_disableADC()                                (BIT_ADCON0_ADON = 0)

#define hal_startADCConversion()                        (BIT_ADCON0_GO_DONE = 1)
#define hal_checkADCEndofConversion()                   ((BIT_ADCON0_GO_DONE) ? false : true)

#if (__PHR_CONTROLLER__==__MCU_PIC18__)

#define hal_leftAligned()                               (BIT_ADCON2_ADFM = 0)
#define hal_rightAligned()                              (BIT_ADCON2_ADFM = 1)

#define hal_configADCPinsClock(config)                  \
    REGISTER_ADCON2 &=~ADC_CONVCLOCK_MASK;              \
    REGISTER_ADCON2 |= ADC_CONVCLOCK_MASK               // semi-collon intentionally omitted

#define hal_configADCAqDelay(config)                    \
    REGISTER_ADCON2 &=~ADC_TAD_MASK;                    \
    REGISTER_ADCON2 |= (config<<3)&ADC_TAD_MASK         // semi-collon intentionally omitted

#define hal_setADCChannel(channel)                      \
    REGISTER_ADCON0 &=~ADC_CHANSEL_MASK;                    \
    REGISTER_ADCON0 |= (channel<<2)&ADC_CHANSEL_MASK        // semi-collon intentionally omitted

#elif (__PHR_CONTROLLER__==__MCU_PIC16__)

#define hal_leftAligned()                               (BIT_ADCON1_ADFM = 0)
#define hal_rightAligned()                              (BIT_ADCON1_ADFM = 1)

#define hal_configADCPinsClock(config)                  \
    REGISTER_ADCON0 &=~ADC_CONVCLOCK_MASK;              \
    REGISTER_ADCON0 |= (config<<6)&ADC_CONVCLOCK_MASK;  \
    BIT_ADCON1_ADCS2 = (((config&0x04)>0) ? 1 : 0)      // semi-collon intentionally omitted

#define hal_setADCChannel(channel)                      \
    REGISTER_ADCON0 &=~ADC_CHANSEL_MASK;                    \
    REGISTER_ADCON0 |= (channel<<3)&ADC_CHANSEL_MASK        // semi-collon intentionally omitted
#else
#endif

#define hal_configADCPins(config)                       \
    REGISTER_ADCON1 &= ~ADC_CONFIG_MASK;                \
    REGISTER_ADCON1 |= (config&ADC_CONFIG_MASK)         // semi-collon intentionally omitted

#define readADCResult()                                 ((((uint16_t)REGISTER_ADRESH<<8) + REGISTER_ADRESL) & 0x03FF)

/* Public Function Prototypes */
void configLowLvlADC(void);

#endif /* end of hal_adc.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "soft_dac.h"                                |
* |:----          |:----                                        |
* |Description:   | This is a header file for the Software Implemented DAC library   |
* |Revision:      | v00.00.01                                   |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |v00.00.01    |20130225   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_SOFTDAC_H__
#define __PH_SOFTDAC_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
#include "corelib_8bit_timer.h"
#include "corelib_gpio.h"

/* User Configuration Definitions */
#define K_DAC_TIMER             TIMER2
    
/* Global Constants */
#define K_SOFT_DAC_PERIOD       255       // 390.625Hz (2.56mS)

enum SoftDACModules_e
{
    SDAC0
    ,SDAC1
    ,SDAC2
    ,SDAC3
    ,MAX_NUM_OF_SDAC
};

/* Macro and Configuration Definitions */
#ifdef PHILROBOKIT_LITE
#define removeDACOutputPin(pin)							inline_makeInput(pin)
#define configDACOutputPin(pin)							inline_makeOutput(pin)
#define setDACPin(pin)									inline_setPin(pin)
#define clrDACPin(pin)									inline_clrPin(pin)

#define setupSDACTimer(tmr_module,isr_pointer)			\
        hal_setTMR2Prescaler(K_10US_PRESCALE);			\
        hal_setTMR2Postscaler(K_10US_POSTSCALE);		\
        pt2TMR2ISR = isr_pointer
		
#define setSDACTimer(tmr_timer,value)					\
        hal_setTMR2Value(value);						\
        hal_clrTMR2IntFlag();							\
        hal_enableTMR2Int();							\
        hal_enableTMR2()
		
#else
#define removeDACOutputPin(pin)							configPin(pin, INPUT)
#define configDACOutputPin(pin)							configPin(pin, OUTPUT)
#define setDACPin(pin)									changePinState(pin, SET_PIN)
#define clrDACPin(pin)									changePinState(pin, CLR_PIN)

#define setupSDACTimer(tmr_module,isr_pointer)			setup8BitTimer(tmr_module,isr_pointer)
#define setSDACTimer(tmr_timer,value)					set8BitTimer(tmr_timer,value)

#endif

/* Public Function Prototypes */
void setupSoftDAC(enum SoftDACModules_e eSDACModule, uint8_t ui8Pin, uint8_t ui8Value);
void setSoftDAC(enum SoftDACModules_e eSDACModule, uint8_t ui8Value);
void removeSoftDAC(enum SoftDACModules_e eSDACModule);

#endif /* end of soft_dac.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_adc.h"                             |
* |:----          |:----                                        |
* |Description:   | This is a header file for the ADC library   |
* |Revision:      | v01.02.00                                   |
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
* |v01.01.00    |20130408   |ESC II             |Defined option for timer or counter delay|
* |v01.02.00    |20130514   |ESCII              |Code Formatted, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_ADC_H__
#define __PH_ADC_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_adc_test_stub.h"
#else
#include "PhilRoboKit_CoreLib_Macro.h"
#include "hal_adc.h"
#endif

/* Global Constants */
#define __USE_TIMER__                               (0)
#define __USE_COUNTER__                             (1)

enum ADCVrefSource_et
{
    VDD,
    EXT,
    INTL                                            // not used on Anito
};

/* User Configuration Definitions */
#define ADC_CYCLE_COUNTER_TIMEOUT           5       // 5mS with 0.5uS resolution

//#if (__PHR_CONTROLLER__==__MCU_PIC18__)
//#define __POLLING_DELAY__                   __USE_COUNTER__
//#else
//#define __POLLING_DELAY__                   __USE_COUNTER__//__USE_TIMER__
//#endif

//#if (__POLLING_DELAY__ == __USE_TIMER__)
//#define ADC_CYCLE_TIMEOUT                   5       // 5mS with 1mS resolution
//#else
//#define ADC_CYCLE_COUNTER_TIMEOUT           5       // 5mS with 0.5uS resolution
//#endif

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void adcISR(void);
void adcCycle(void);

void setupADC(enum ADCVrefSource_et eVrefSource);
uint16_t adcRead(uint8_t ui8Channel);
void removeADC(void);

#endif /* end of corelib_adc.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

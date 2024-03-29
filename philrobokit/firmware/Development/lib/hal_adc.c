/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_adc.c"                                 |
* |:----          |:----                                        |
* |Description:   | This is a driver for ADC peripheral configuration |
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
* |v00.01.01    |201203xx   |Giancarlo A.       |Fix Bugs, add setupADCPinsToDigital|
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130307   |ESC II             |Organized functions into HAL and CoreLib|
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_Macro.h"
#if defined (USE_ADC)
#include "hal_adc.h"

/* Local Constants */


/* Local Variables */
/* none */

/* Private Function Prototypes */
/* none */

/* Public Functions */
/*******************************************************************************//**
* \brief MCU Level configuration of ADC perpheral
*
* > This function is called to configure the ADC peripheral at MCU level.
*
* > <BR>
* > **Syntax:**<BR>
* >     configLowLvlADC()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
/*@ignore@*/                                // esc.comment SPLINT warns a function configLowLvlADC overshadows outer declaration, this line is not a declaration but a definition, must be a bug on SPLINT
#if 0 // replaced by macro to save stack
void configLowLvlADC(void)
{
    /* 20Mhz Clock: Anito PIC16F877A Specific */
    hal_configADCPinsClock(FOSC_DIV64);     // 64Tosc @20MHz   12*TAD for 10bit, TAD = 20MHz/64 3 --- 8.4uS
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
    hal_configADCAqDelay(TAD_12);
#endif
    /* Right Justified */
    hal_rightAligned();
}
#endif
/*@end@*/

/* Private Functions */
/* none */

#endif
/* end of hal_adc.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

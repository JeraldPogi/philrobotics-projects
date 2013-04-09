/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_adc.c"                                 |
* |:----          |:----                                        |
* |Description:   | This is a driver for ADC peripheral configuration |
* |Revision:      | v01.00.01                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_adc.h"

/* Local Constants */
    /* PIC16F877A Specific */
static enum adcClockCfg_et
{
    FOSC_DIV2
    ,FOSC_DIV8
    ,FOSC_DIV32
    ,FOSC_INTRC0
    ,FOSC_DIV4
    ,FOSC_DIV16
    ,FOSC_DIV64 
    ,FOSC_INTRC1 
};

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
void configLowLvlADC(void)
{
#if (__TEST_MODE__==__STACK_TEST__)
	incrementStack(30);
#endif

    /* 20Mhz Clock: Anito PIC16F877A Specific */
    hal_configADCPinsClock(FOSC_DIV64);     // 64Tosc @20MHz   12*TAD for 10bit, TAD = 20MHz/64 3 --- 8.4uS
    
    /* Right Justified */
	hal_rightAligned();
    
#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();
#endif
}

/* Private Functions */
    /* none */
    
/* end of hal_adc.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
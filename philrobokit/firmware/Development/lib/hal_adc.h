/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_adc.h"                                 |
* |:----          |:----                                        |
* |Description:   | This is a header file of the ADC peripheral configuration driver |
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
* |v00.01.01    |201203xx   |Giancarlo A.       |Fix Bugs, add removeADC            |
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130307   |ESC II             |Organized functions into HAL and CoreLib|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_ADC_H__
#define __HAL_ADC_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>

/* User Configuration Definitions */
    /* none */
    
/* Global Constants */
    /* PIC16F877A Specific */
enum adcModuleCfg_e
{
    CFG_ALLANALOG   = 0x00
    ,CFG_ALLDIGITAL = 0x07
    ,CFG_EXTVREF    = 0x01
};

/* Macro and Configuration Definitions */
	/*@notfunction@*/
	#define hal_enableADCInt()           			(BIT_PIE1_ADIE = 1)
	/*@notfunction@*/
	#define hal_disableADCInt()          			(BIT_PIE1_ADIE = 0)
    /*@notfunction@*/
    #define hal_getADCIntEnableStatus()           	((BIT_PIE1_ADIE) ? true : false)
    
	/*@notfunction@*/
	#define hal_clrADCIntFlag()         			(BIT_PIR1_ADIF = 0)
    /*@notfunction@*/
    #define hal_getADCIntFlag()                     ((BIT_PIR1_ADIF) ? true : false)

	/*@notfunction@*/
	#define hal_enableADC()                 		(BIT_ADCON0_ADON = 1)
	/*@notfunction@*/
	#define hal_disableADC()                		(BIT_ADCON0_ADON = 0)

	/*@notfunction@*/
    #define hal_startADCConversion()                (BIT_ADCON0_GO_DONE = 1)
    /*@notfunction@*/
    #define hal_checkADCEndofConversion()           ((BIT_ADCON0_GO_DONE) ? false : true)

    /*@notfunction@*/
    #define hal_configADCPins(config)               (REGISTER_ADCON1 = (config&ADC_CONFIG_MASK)) 

    /*@notfunction@*/
    #define hal_leftAligned()                       (BIT_ADCON1_ADFM = 0)
    /*@notfunction@*/
    #define hal_rightAligned()                      (BIT_ADCON1_ADFM = 1)
    
    /*@notfunction@*/
    #define hal_setADCChannel(channel)                  \
    REGISTER_ADCON0 &=~ADC_CHANSEL_MASK;        	    \
    REGISTER_ADCON0 |= (channel<<3)&ADC_CHANSEL_MASK    // semi-collon intentionally omitted 
     
    /*@notfunction@*/
    #define hal_configADCPinsClock(config)              \
    REGISTER_ADCON0 &=~ADC_CONVCLOCK_MASK;        	    \
    REGISTER_ADCON0 |= (config<<6)&ADC_CONVCLOCK_MASK;  \
    BIT_ADCON1_ADCS2 = ((config&0x04) ? 1 : 2)          // semi-collon intentionally omitted 
    
    /*@notfunction@*/
    #define readADCResult()                         ((((uint16_t)REGISTER_ADRESH<<8) + REGISTER_ADRESL) & 0x03FF)
    
/* Public Function Prototypes */
void configLowLvlADC(void);
void makeADCPinsInput(void);
	
#endif /* end of hal_adc.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Header.h"              |
* |:----          |:----                                        |
* |Description:   | Header for Anito setup routines             |
* |Revision:      | v00.00.01                                   |
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
* |FW Version   |Date       |Author             |Description                                                |
* |:----        |:----      |:----              |:----                                                      |
* |v00.00.01    |201112xx   |Giancarlo A.       |Library Initial Release                                    |
* |v00.00.02    |201204xx   |Giancarlo A.       |Modify CONST_DEFAULT_CONFIG_PORTA                          |
* |v00.00.03    |20120708   |ESCII              |Modified delayUs and delayMs to disable timer 1 peripheral |
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture                  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_HEADER_H__
#define __PHILROBOKIT_HEADER_H__

/* Include .h Library Files */    
#include "PhiRoboKit_HW_Config.h"

#if defined(HI_TECH_C)  
    #ifndef S_SPLINT_S 	/* Suppress SPLint Unrecognized ID Errors */
        #include "compilers\htc\htc_common.h"
    #else
        #include "compilers\htc\htc_common_SPLint.h"
    #endif
#endif

#if (__PHR_BOARD__==__HW_PHR_ANITO__)
    //#include "variants\anito\setupAnito.h"
    #include "setupAnito.h"
#endif
        
/* User Configuration Definitions */  
#if (__PHR_CONTROLLER__==__MCU_PIC__)   
    #if defined(HI_TECH_C)  
        #if defined( _16F873A ) || defined( _16F874A ) || defined( _16F876A ) || defined( _16F877A )  	
            #ifndef S_SPLINT_S 	    // Suppress SPLint Unrecognized ID Errors
                #include "compilers\htc\htc_16f87xa.h"
            #else
                #include "compilers\htc\htc_16f87xa_SPLint.h"
            #endif
                    
            #ifndef _XTAL_FREQ
                #define _XTAL_FREQ 20000000	 /* 20MHz Crystal */
            #endif
        #endif
                  
        #if defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 )  		
            //#include "htc_18fxx20.h"
            
            #ifndef _XTAL_FREQ
                #define _XTAL_FREQ 8000000	 /* 8MHz Internal Crystal */
            #endif
        #endif
    #endif
#endif

/* Global Constants */
#define	INPUT					(1)
#define	OUTPUT					(0)
#define	ANALOG					(1)

#define	HIGH					(1)
#define	LOW						(0)

#ifndef TRUE
    #define	TRUE				(1)
    #define	FALSE				(0)
#endif

#ifndef NULL
    #define NULL                ('\0')
#endif
    
/* Macro and Configuration Definitions */
#if defined(HI_TECH_C) 
    /* esc.comment: to be updated to comply with the layered architecture */
    #define delayUs(x)		            \
        BIT_PIE1_TMR1IE = 0;	        \
        BIT_T1CON_TMR1ON = 0;	        \
        __delay_us(x);			        \
        BIT_PIE1_TMR1IE = 1;	        \
        BIT_T1CON_TMR1ON = 1	        /* Line Terminator Intentionally Omitted */

    #define delayMs(x)		            \
        BIT_PIE1_TMR1IE = 0;	        \
        BIT_T1CON_TMR1ON = 0;	        \
        __delay_ms(x);			        \
        BIT_PIE1_TMR1IE = 1;	        \
        BIT_T1CON_TMR1ON = 1	        /* Line Terminator Intentionally Omitted */
#endif

/* Public Function Prototypes */ 
    /* none */ 
    
#endif/* end of PhilRoboKit_CoreLib_Header.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
    
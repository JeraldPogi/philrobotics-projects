/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "htc_common_SPLint.h"                       |
* |:----          |:----                                        |
* |Description:   | (Dummy) Hi-Tech C Compiler Register Definitions|
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
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.01.00    |201112xx   |Giancarlo A.       |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifdef S_SPLINT_S 			// Suppress SPLint Unrecognized ID Errors
/* Include .h Library Files */
    /* none */

/* User Configuration Definitions */
    /* none */
    
/* Global Constants */
	#define	REGISTER_TRISA		0x55		
	#define	REGISTER_TRISB		0x55
	#define	REGISTER_TRISC		0x55
	#define	REGISTER_TRISD		0x55
	#define	REGISTER_TRISE		0x55
	
	#define	REGISTER_PORTA		0x55
		#define REGISTER_PORTA_0	0x00
		#define REGISTER_PORTA_1	0x00
		#define REGISTER_PORTA_2	0x00
		#define REGISTER_PORTA_3	0x00
		#define REGISTER_PORTA_4	0x00
		#define REGISTER_PORTA_5	0x00
		#define REGISTER_PORTA_6	0x00
		#define REGISTER_PORTA_7	0x00	
				
	#define	REGISTER_PORTB		0x55
		#define REGISTER_PORTB_0	0x00
		#define REGISTER_PORTB_1	0x00
		#define REGISTER_PORTB_2	0x00
		#define REGISTER_PORTB_3	0x00
		#define REGISTER_PORTB_4	0x00
		#define REGISTER_PORTB_5	0x00
		#define REGISTER_PORTB_6	0x00
		#define REGISTER_PORTB_7	0x00
	
	#define	REGISTER_PORTC		0x55
		#define REGISTER_PORTC_0	0x00
		#define REGISTER_PORTC_1	0x00
		#define REGISTER_PORTC_2	0x00
		#define REGISTER_PORTC_3	0x00
		#define REGISTER_PORTC_4	0x00
		#define REGISTER_PORTC_5	0x00
		#define REGISTER_PORTC_6	0x00
		#define REGISTER_PORTC_7	0x00

	#define	REGISTER_PORTD		0x55
		#define REGISTER_PORTD_0	0x00
		#define REGISTER_PORTD_1	0x00
		#define REGISTER_PORTD_2	0x00
		#define REGISTER_PORTD_3	0x00
		#define REGISTER_PORTD_4	0x00
		#define REGISTER_PORTD_5	0x00
		#define REGISTER_PORTD_6	0x00
		#define REGISTER_PORTD_7	0x00
	
	#define	REGISTER_PORTE		0x55
		#define REGISTER_PORTE_0	0x00
		#define REGISTER_PORTE_1	0x00
		#define REGISTER_PORTE_2	0x00
		#define REGISTER_PORTE_3	0x00
		#define REGISTER_PORTE_4	0x00
		#define REGISTER_PORTE_5	0x00
		#define REGISTER_PORTE_6	0x00
		#define REGISTER_PORTE_7	0x00
	
	#define	REGISTER_TXREG		0x55
	#define	REGISTER_RCREG		0x55
	#define	REGISTER_SPBRG		0x55
	
	#define	REGISTER_TMR0H		0x55	
	#define	REGISTER_TMR0L		0x55
	
	#define	REGISTER_TMR1H		0x55
	#define	REGISTER_TMR1L		0x55
	
	#define	REGISTER_TMR2H		0x55	
	#define	REGISTER_TMR2L		0x55
	
	#define	REGISTER_ADRESH		0x55
	#define	REGISTER_ADRESL		0x55

/* Macro and Configuration Definitions */
    /* none */

/* Public Function Prototypes */ 
    /* none */
	
#endif/* end of htc_common_SPLint.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
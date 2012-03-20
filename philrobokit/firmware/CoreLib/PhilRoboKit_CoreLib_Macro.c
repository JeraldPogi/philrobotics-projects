//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// http://wiki.philrobotics.com | http://philrobotics.com/forum
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_Macro.c - PhilRobokit Macro File
// Description:	
// Revision:    v00.01.02
// Author:      Giancarlo Acelajado
//             	
// Vendor:      Microchip Technology
// Family:      PIC16F8X7A
// Processor:   PIC16F877A
// Compiler:    Hitech C 9.82
//
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//***********************************************************************************
// FW Version      Date        Author         Description
// v00.01.01       201112xx    Giancarlo A.   Library Initial Release
// v00.01.02       201202xx    Giancarlo A.   Modify LowLevel Configuration of Pins
//***********************************************************************************

#include "PhilRoboKit_CoreLib_Macro.h"

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Functions */
void configPin(unsigned char ucPinName, char bDirection)
{
	if(ucPinName <= 7){		//TRISC
		
		if(bDirection){		//Input
			REGISTER_TRISC	|=	(1<<ucPinName);			
		}
		else{		//Output
			REGISTER_TRISC	&=	~(1<<ucPinName);
		}	
	}	
	else if(ucPinName >= 8 && ucPinName <= 13){		//TRISB
		
		ucPinName -= 8;
		
		if(bDirection){		//Input
			REGISTER_TRISB	|=	(1<<ucPinName);
		}
		else{		//Output
			REGISTER_TRISB	&=	~(1<<ucPinName);
		}	
	}	
	else if(ucPinName >= 14 && ucPinName <= 20){	//TRISA, TRISE
		ucPinName -= 14;
		if(bDirection){		//Input
			if(ucPinName <= 2){//RA0 to RA2
				REGISTER_TRISA	|=	(1<<ucPinName);			
			}	
			else if(ucPinName == 3){ //RA5
				REGISTER_TRISA	|=	(1<<(ucPinName+2));			
			}
			else if(ucPinName >= 4 && ucPinName <= 6){ //RE0 to RE2
				ucPinName -= 4;
				REGISTER_TRISE	|=	(1<<ucPinName);
			}		
		}
		else{		//Output
			if(ucPinName <= 2){//RA0 to RA2
				REGISTER_TRISA	&=	~(1<<ucPinName);
			}	
			else if(ucPinName == 3){ //RA5
				REGISTER_TRISA	&=	~(1<<(ucPinName+2));
			}
			else if(ucPinName <= 4 && ucPinName <= 6){ //RE0 to RE2
				ucPinName -= 4;
				REGISTER_TRISE	&=	~(1<<ucPinName);
			}		
		}	
	}
	else if(ucPinName >= 21 && ucPinName <= 28){	//TRISD
		ucPinName -= 21;
		
		if(bDirection){		//Input
			REGISTER_TRISD	|=	(1<<ucPinName);
		}
		else{		//Output
			REGISTER_TRISD	&=	~(1<<ucPinName);
		}
	}		
}	

unsigned char checkPinState(unsigned char ucPinName, char bCheckState)
{
	if(ucPinName<=7){
		if(REGISTER_PORTC&(1<<ucPinName)){
			if(bCheckState){
				return TRUE; 
			}
			else{
				return FALSE;	
			}		
		}
		else{
			if(bCheckState){
				return FALSE; 
			}
			else{
				return TRUE;	
			}
		}
	}
	else if(ucPinName >= 8 && ucPinName <= 13){		//TRISB
		ucPinName -= 8;
		if(REGISTER_PORTB&(1<<ucPinName)){
			if(bCheckState){
				return TRUE; 
			}
			else{
				return FALSE;	
			}
		}
		else{
			if(bCheckState){
				return FALSE; 
			}
			else{
				return TRUE;	
			}
		}
	}
	else if(ucPinName >= 14 && ucPinName <= 20){		//TRISA, TRISE
		ucPinName -= 14;
		if(ucPinName <= 2){//RA0 to RA2
			if(REGISTER_PORTA&(1<<ucPinName)){
				if(bCheckState){
					return TRUE; 
				}
				else{
					return FALSE;	
				}
			}
		}	
		else if(ucPinName == 3){ //RA5
			if(REGISTER_PORTA&(1<<ucPinName+2)){
				if(bCheckState){
					return TRUE; 
				}
				else{
					return FALSE;	
				}
			}		
		}
		else if(ucPinName >= 4 && ucPinName <= 6){ //RE0 to RE2
			ucPinName -= 4;
			
			if(REGISTER_PORTE&(1<<ucPinName+2)){
				if(bCheckState){
					return TRUE; 
				}
				else{
					return FALSE;	
				}
			}
		}		
	}		
	else if(ucPinName >= 21 && ucPinName <= 28){	//TRISD
		ucPinName -= 21;
		
		if(REGISTER_PORTD&(1<<ucPinName)){
			if(bCheckState){
				return TRUE; 
			}
			else{
				return FALSE;	
			}
		}
		else{
			if(bCheckState){
				return FALSE; 
			}
			else{
				return TRUE;	
			}
		}	
	}
	
	return FALSE;
}	
/* End of Global PhilRobokit Functionss */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

// ==========================================================================================================================================
// Functions
// ==========================================================================================================================================
void philrobokit_init(void)
{
	REGISTER_TRISA = CONST_DEFAULT_CONFIG_PORTA;
	REGISTER_TRISB = CONST_DEFAULT_CONFIG_PORTB;
	REGISTER_TRISC = CONST_DEFAULT_CONFIG_PORTC;
	REGISTER_TRISD = CONST_DEFAULT_CONFIG_PORTD;
	REGISTER_TRISE = CONST_DEFAULT_CONFIG_PORTE;	
}	

//Main Program Routine
int main(void)
{
	philrobokit_init();	//Configure Defaults	
	timerInit();	//Hardware Delay	
	
	init();
	
	while(1){
		program();	
	}	
	
	return 0;
}	

// ==========================================================================================================================================
// Interrupt Service Routine
// ==========================================================================================================================================
void interrupt isr(void)
{
	//adcInterruptHandler();
	serialRxInterruptHandler();	
	serialTxInterruptHandler();	
	timerInterruptHandler();
	//userInterruptHandler();			
}

/* End of PhilRoboKit_CoreLib_Macro.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

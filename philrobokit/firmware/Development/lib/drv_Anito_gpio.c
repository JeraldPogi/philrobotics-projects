//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// http://wiki.philrobotics.com | http://philrobotics.com/forum
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	drv_Anito_gpio.c 
// Description:	General Purpose Input/Output Driver Layer for PIC
// Revision:    v01.00.00
// Author:      Giancarlo Acelajado
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
// v01.00.00       201209xx    Giancarlo A.   Leverage Library for PhilRotics Standard 
//                                            FW Guidelines; 
//***********************************************************************************
#include "hal_Anito_gpio.h"

void setupGpio(void)
{
    /* Set GPIO Direction and Initial States */
    REGISTER_TRISA = REGISTER_PORTA = K8_DEFAULT_CONFIG_PORTA;
    REGISTER_TRISB = REGISTER_PORTB = K8_DEFAULT_CONFIG_PORTB;
    REGISTER_TRISC = REGISTER_PORTC = K8_DEFAULT_CONFIG_PORTC;
    REGISTER_TRISD = REGISTER_PORTD = K8_DEFAULT_CONFIG_PORTD;
    REGISTER_TRISE = REGISTER_PORTE = K8_DEFAULT_CONFIG_PORTE;
}

void configPin(uint8_t ui8PinName, bool_t blDirection)
{
	if(ui8PinName <= D7){		//TRISC
		
		if(blDirection){		//Input
			REGISTER_TRISC	|=	(1UL<<ui8PinName);			
		}
		else{		//Output
			REGISTER_TRISC	&=	~(1UL<<ui8PinName);
		}	
	}	
	else if(ui8PinName >= D8 && ui8PinName <= D13){		//TRISB
		
		ui8PinName -= D8;
		
		if(blDirection){		//Input
			REGISTER_TRISB	|=	(1UL<<ui8PinName);
		}
		else{		//Output
			REGISTER_TRISB	&=	~(1UL<<ui8PinName);
		}	
	}	
	else if(ui8PinName >= D14 && ui8PinName <= D20){	//TRISA, TRISE
		ui8PinName -= D14;
		if(blDirection){		//Input
			if(ui8PinName <= 2){//RA0 to RA2
				REGISTER_TRISA	|=	(1UL<<ui8PinName);			
			}	
			else if(ui8PinName == 3){ //RA5
				REGISTER_TRISA	|=	(1UL<<(ui8PinName+2));			
			}
			else if(ui8PinName >= 4 && ui8PinName <= 6){ //RE0 to RE2
				ui8PinName -= D4;
				REGISTER_TRISE	|=	(1UL<<ui8PinName);
			}		
		}
		else{		//Output
			if(ui8PinName <= 2){//RA0 to RA2
				REGISTER_TRISA	&=	~(1UL<<ui8PinName);
			}	
			else if(ui8PinName == 3){ //RA5
				REGISTER_TRISA	&=	~(1UL<<(ui8PinName+2));
			}
			else if(ui8PinName <= 4 && ui8PinName <= 6){ //RE0 to RE2
				ui8PinName -= 4;
				REGISTER_TRISE	&=	~(1UL<<ui8PinName);
			}		
		}	
	}
	else if(ui8PinName >= SERVO && ui8PinName <= LED1){	//TRISD, built-in components
		ui8PinName -= SERVO; /* ui8PinName - 21 */
		
		if(blDirection){		//Input
			REGISTER_TRISD	|=	(1UL<<ui8PinName);
		}
		else{		//Output
			REGISTER_TRISD	&=	~(1UL<<ui8PinName);
		}
	}		
}	

bool_t checkPinState(uint8_t ui8PinName)
{
	if(ui8PinName<=D7){
		if(REGISTER_PORTC&(1UL<<ui8PinName)){
			return TRUE; 				
		}
		else{
			return FALSE; 			
		}
	}
	else if(ui8PinName >= D8 && ui8PinName <= D13){		//TRISB
		ui8PinName -= D8;
        
		if(REGISTER_PORTB&(1UL<<ui8PinName)){
			return TRUE; 
		}
		else{
			return FALSE;
		}
	}
	else if(ui8PinName >= D14 && ui8PinName <= D20){		//TRISA, TRISE
		ui8PinName -= D14;
        
		if(ui8PinName <= 2){//RA0 to RA2
			if(REGISTER_PORTA&(1UL<<ui8PinName)){
				return TRUE; 
			}
			else{
				return FALSE;				
			}
		}	
		else if(ui8PinName == 3){ //RA5
			if(REGISTER_PORTA&(1UL<<ui8PinName+2)){
				return TRUE; 
			}
			else{
				return FALSE;				
			}		
		}
		else if(ui8PinName >= 4 && ui8PinName <= 6){ //RE0 to RE2
			ui8PinName -= 4;	
            
			if(REGISTER_PORTE&(1UL<<ui8PinName+2)){
				return TRUE; 
			}
			else{
				return FALSE;	
			}
		}		
	}		
	else if(ui8PinName >= SERVO && ui8PinName <= LED1){	//TRISD
		ui8PinName -= SERVO;
		
		if(REGISTER_PORTD&(1UL<<ui8PinName)){
			return TRUE; 			
		}
		else{
			return FALSE;			
		}	
	}
	
	return FALSE;
}
#if (__DEBUG__==__FUNC__)
    void togglePin(uint8_t ui8PinName)
    {
        if(ui8PinName<=D7) { 
            REGISTER_PORTC ^= (1UL<<ui8PinName); 
        }else if(ui8PinName>=D8 && ui8PinName<=D13) { 
            REGISTER_PORTB ^= (1UL<<(ui8PinName-D8)); 
        }else if(ui8PinName>=SERVO && ui8PinName<=LED1) { 
            REGISTER_PORTD ^= (1UL<<(ui8PinName-SERVO)); 
        } 
    }

    void setPinState(uint8_t ui8PinName, bool_t blPinState)
    {
        if(blDirection){
            if(ui8PinName<=D7) { 
                REGISTER_PORTC |= (1UL<<ui8PinName); 
            }else if(ui8PinName>=D8 && ui8PinName<=D13) { 
                REGISTER_PORTB |= (1UL<<(ui8PinName-D8)); 
            }else if(ui8PinName>=SERVO && ui8PinName<=LED1) { 
                REGISTER_PORTD |= (1UL<<(ui8PinName-SERVO)); 
            }   
        }
        else{
            if(ui8PinName<=D7) { 
                REGISTER_PORTC &= ~(1UL<<ui8PinName); 
            }else if(ui8PinName>=D8 && ui8PinName<=D13) { 
                REGISTER_PORTB &= ~(1UL<<(ui8PinName-D8)); 
            }else if(ui8PinName>=SERVO && ui8PinName<=LED1) { 
                REGISTER_PORTD &= ~(1UL<<(ui8PinName-SERVO)); 
            } 
        }
    }   
#endif
/* End of drv_Anito_gpio.c*/
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

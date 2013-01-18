//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	drv_Anito_adc.c - ADC File
// Description:	
// Revision:    v00.01.00
// Author:      Giancarlo Acelajado
//
// Dependencies:
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
// v00.01.00       20110xxx    Giancarlo A.   Library Initial Release
// v00.01.01       201203xx    Giancarlo A.   Fix Bugs, add setupADCPinsToDigital
// 
//***********************************************************************************
#include "drv_Anito_adc.h"
	

void adcInterruptHandler(void)
{	
	/* Do Nothing */
}	

void setupADC(void)
{	
	REGISTER_TRISA = 0x3F;
	REGISTER_TRISE = 0x07;
	
	BIT_ADCON0_ADON = 0; //AD Converter is temporarily disable	

	BIT_ADCON1_PCFG0 = 0; //All Ports are analog, VDD as VREF
	BIT_ADCON1_PCFG1 = 0;
	BIT_ADCON1_PCFG2 = 0;
	BIT_ADCON1_PCFG3 = 0;
	
	BIT_ADCON0_CHS0 = 0; //Channel 0(AN0) initially selected
	BIT_ADCON0_CHS1 = 0;
	BIT_ADCON0_CHS2 = 0;
		
	BIT_ADCON1_ADFM = 1; //Right Justified

	//if(FOSC_FREQ == 20000000)	//if FOSC is @20MHz
	{
		BIT_ADCON0_ADCS0 = 0; //64Tosc @20MHz   12*TAD for 10bit, TAD = 20MHz/64 3 --- 8.4uS
		BIT_ADCON0_ADCS1 = 1;
		BIT_ADCON1_ADCS2 = 1;
	}

	BIT_ADCON0_ADON  = 1; //AD Converter is enable	
	
	//Enable Interrupt Here

	BIT_PIR1_ADIF = 0; //Clear ADC Interrupt Flag
	BIT_PIE1_ADIE = 0; //Disable ADC Interrupt ByDefault
		
}	

void setupADCPinsToDigital(void)
{
	REGISTER_ADCON1 |= 0x07; //Set ADC Pins to Digital IO
	BIT_ADCON0_ADON = 0; //Turn off ADC Module
	
	REGISTER_TRISA = 0x3F/*K8_DEFAULT_CONFIG_PORTA*/;	
	REGISTER_PORTA = 0x3F/*K8_DEFAULT_CONFIG_PORTA*/;	

	REGISTER_TRISE = 0x07/*K8_DEFAULT_CONFIG_PORTE*/;
	REGISTER_PORTE = 0x07/*K8_DEFAULT_CONFIG_PORTE*/;
}

void adcSetChannel(uint8_t ui8Channel)
{	
	switch(ui8Channel){
		case 0x00:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 0; break;
		case 0x01:	BIT_ADCON0_CHS0 = 1; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 0; break;
		case 0x02:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 1; BIT_ADCON0_CHS2 = 0; break;
		case 0x03:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 1; break;
		case 0x04:	BIT_ADCON0_CHS0 = 1; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 1; break;
		case 0x05:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 1; BIT_ADCON0_CHS2 = 1; break;
		case 0x06:	BIT_ADCON0_CHS0 = 1; BIT_ADCON0_CHS1 = 1; BIT_ADCON0_CHS2 = 1; break;
		
		default:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 0; break;	//Default is AN0
	}		
	delayUs(10); 
}	

void adcStart(void)
{	
	BIT_ADCON0_ADON  = 1; //AD Converter is enable
	BIT_ADCON0_GO_DONE = 1; //Start Conversion	
}	

uint16_t adcRead(void)
{
	uint16_t ui16ADCVal;
	
	BIT_ADCON0_GO_DONE = 1; //Start Conversion						

	while(!isADCConversionDone());	//While conversion is on going

	ui16ADCVal = (REGISTER_ADRESH<<8);
	ui16ADCVal |= REGISTER_ADRESL;
	ui16ADCVal &= 0x7FF;
					
	return ui16ADCVal;
}	

uint16_t adcReadOnly(void)
{	
	uint16_t ui16ADCVal;
			
	ui16ADCVal = (REGISTER_ADRESH<<8);
	ui16ADCVal |= REGISTER_ADRESL;
	ui16ADCVal &= 0x7FF;
					
	return ui16ADCVal;
}	

uint16_t adcReadOnChannel(uint8_t ui8Channel)
{
    adcSetChannel(ui8Channel);
    
    return adcRead();
}

bool_t isADCConversionDone(void)
{
    return (BIT_ADCON0_GO_DONE?FALSE:TRUE);
}

/* end of drv_Anito_adc.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
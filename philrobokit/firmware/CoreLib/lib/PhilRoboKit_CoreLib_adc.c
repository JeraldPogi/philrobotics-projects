//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_adc.c - ADC File
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
#include "PhilRoboKit_CoreLib_adc.h"
	
//--- Private Variables -----------------------------------------------------------------
	static float ADCVref = 5.00;

/*
void adcInterruptHandler(void)
{	
	if(BIT_PIR1_ADIF){
		
		BIT_PIE1_ADIE = 0; //Disable ADC Interrupt
		BIT_PIR1_ADIF = 0; //Clear ADC Interrupt Flag
	}
}	
*/
void setupADC(void)
{	
	REGISTER_TRISA = 0xFF;
	REGISTER_TRISE = 0xFF;
	
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
		BIT_ADCON0_ADCS0 = 0; //64Tosc @20MHz   11*TAD for 10bit, TAD = 20MHz/64
		BIT_ADCON0_ADCS1 = 1;
		BIT_ADCON1_ADCS2 = 1;
	}

	BIT_ADCON0_ADON  = 1; //AD Converter is enable	
	
	//Enable Interrupt Here

	BIT_PIR1_ADIF = 0; //Clear ADC Interrupt Flag
	BIT_PIE1_ADIE = 0; //Disable ADC Interrupt ByDefault
		
	BIT_INTCON_PEIE = 1; //Enable Peripheral Interrupt
	BIT_INTCON_GIE = 1;	 //Enable Global Interrupt
}	
/*
void setupADCPinsToDigital(void)
{

}
*/
void adcSetChannel(unsigned char ucChannel)
{	
	switch(ucChannel){
		case 0x00:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 0; break;
		case 0x01:	BIT_ADCON0_CHS0 = 1; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 0; break;
		case 0x02:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 1; BIT_ADCON0_CHS2 = 0; break;
		case 0x03:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 1; break;
		case 0x04:	BIT_ADCON0_CHS0 = 1; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 1; break;
		case 0x05:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 1; BIT_ADCON0_CHS2 = 1; break;
		//case 0x06:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 1; BIT_ADCON0_CHS2 = 1; break;
		
		default:	BIT_ADCON0_CHS0 = 0; BIT_ADCON0_CHS1 = 0; BIT_ADCON0_CHS2 = 0; break;	//Default is AN0
	}	
}	

//float adcRead(void)
//{	
//	BIT_ADCON0_GO_DONE = 1; //Start Conversion						
//		
//	while(/*BIT_PIE1_ADIE || */BIT_ADCON0_GO_DONE)	//While conversion is on going
//		continue;
//	
//	BIT_PIE1_ADIE = 1; //Enable ADC Interrupt
//	BIT_PIR1_ADIF = 0; //Clear ADC Interrupt Flag
//		
//	return	((((REGISTER_ADRESH << 8) | REGISTER_ADRESL) * ADCVref)/1023.00); // VREF * (ADCValue)/(2^n)-1, where n is the bit resolution
//}	

float adcReadOnly(void)
{	
	//while(BIT_ADCON0_GO_DONE);	//While conversion is on going		
		//continue;
		
	return	((((REGISTER_ADRESH << 8) | REGISTER_ADRESL) * ADCVref)/K16_ADC_RESOLUTION); // VREF * (ADCValue)/(2^n)-1, where n is the bit resolution
}	

void adcStart(void)
{
	/*
	BIT_PIE1_ADIE = 0; //Disable ADC Interrupt
	BIT_PIR1_ADIF = 0; //Clear ADC Interrupt Flag
	*/
	BIT_ADCON0_ADON  = 1; //AD Converter is enable
	BIT_ADCON0_GO_DONE = 1; //Start Conversion	
}	

void adcSetVref(float Vref)
{
	BIT_ADCON1_PCFG0 = 1; //AN3 is VREF
	BIT_ADCON1_PCFG1 = 0;
	BIT_ADCON1_PCFG2 = 0;
	BIT_ADCON1_PCFG3 = 0;	
	
	ADCVref	= Vref;
}	
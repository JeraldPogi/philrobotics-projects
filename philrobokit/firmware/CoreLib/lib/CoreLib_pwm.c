//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	CoreLib_pwm.c - PWM Module
// Description:	
// Revision:    v00.00.01
// Author:      Efren S. Cruzat II
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
// v00.00.01	20120710	ESCII			Library Initial Release
//***********************************************************************************
#include "CoreLib_pwm.h"

static	uint8_t		mui8PreScaler=1, mui8PreScalerVal=1, mui8PR2plus1=0;

//***********************************************************************************
// @20Mhz -> TOSC = 50nS
// PWM Period = [(PR2) + 1] * 4 * TOSC * Prescaler
// Period(uS)  = [PR2+1]  * 200nS * Prescaler
// 1.22kHz - 200kHz
// Prescaler 1	
// 19.53Khz		-> 51.20uS
// 200Khz		-> 5.00uS
//	
// Prescaler 4	
// 4.88Khz		-> 204.92uS
// 19.53Khz		-> 51.20uS
//	
// Prescaler 16	
// 1.22Khz		-> 819.67uS
// 4.88kHz		-> 204.92uS
//
// ui16Frequency: in 10Hz/Bit Resolution (e.g. 1kHz/10Hz = 100)
//***********************************************************************************
void setPWMFrequency(uint16_t ui16Frequency)
{
	uint16_t	ui16TempVar;
	uint24_t	ui24Period;						// 0.01uS/Bit Resolution	
	
	/* Check Frequency Range */
	if(ui16Frequency > 20000)					// > 200kHz
	{
		ui16Frequency = 20000;
	}
	else if(ui16Frequency < 122)				// < 1.22kHz
	{
		ui16Frequency  = 122;
	}
	else
	{
		/* Frequency within Range */
		/* Do Nothing */
	}
	
	/* Check Prescaler Range */
	if(ui16Frequency >= 1953)					// 19.53kHz - 200kHz
	{
		mui8PreScalerVal = 0;					// div by 1
	}
	else if(ui16Frequency >= 488)				// 4.88kHz - 19.53kHz
	{
		mui8PreScalerVal = 1;					// div by 4
	}
	else										// 1.22kHz - 4.88kHz
	{	
		mui8PreScalerVal = 2;					// div by 16
	}
	
	mui8PreScaler = mui8PreScalerVal << 1;
	mui8PreScaler = (uint8_t)1 << mui8PreScaler;// secret :p
	
	ui24Period = (uint24_t)(10000000UL / ui16Frequency);
	
	ui16TempVar = (uint16_t)20 * mui8PreScaler;
	ui24Period = ui24Period/ui16TempVar;
	
	/* Check Saturation */
	if(ui24Period > 255)
	{
		mui8PR2plus1 = 255;
	}
	else
	{
		mui8PR2plus1 = (uint8_t)ui24Period;
	}
	
	mc_setPWMPeriod(mui8PR2plus1);
}


//***********************************************************************************
// @20Mhz -> TOSC = 50nS
// Pulse Width =(CCPR1L:CCP1CON<5:4>) * TOSC *Prescaler
//  Pulse Width  = CCP1CON  * 50nS * Prescaler
//
// ui16DutyCycle: 0.1%/Bit Resolution (e.g. 50% /0.1% = 500)
//***********************************************************************************
void setPWMDuty(enum ePWMModules ePWM_Module, uint16_t ui16DutyCycle)
{
	uint16_t	ui16TempVar;
	
	/* Maximum of 100% Only */
	if(ui16DutyCycle > 1000)
	{
		ui16DutyCycle = 1000;
	}
	
	ui16TempVar = (uint16_t)mui8PR2plus1 << 2;									// secret :p
	ui16TempVar = (uint16_t)(((uint32_t)ui16TempVar * ui16DutyCycle) / 1000);	
	
	if(PWM0 == ePWM_Module)
	{
		mc_setPWM0Ton(ui16TempVar);
	}
	else if(PWM1 == ePWM_Module)
	{
		mc_setPWM1Ton(ui16TempVar);
	}
	else
	{
		/* Invalid PWM Module */
		/* Do Nothing */
	}
}


void setupPWM(enum ePWMModules ePWM_Module, uint16_t ui16Frequency, uint16_t ui16DutyCycle)
{
    /* Set the PWM period */
    setPWMFrequency(ui16Frequency);				// Common for CCP1 and CCP2
    
    /* Load the default PWM duty value */
	setPWMDuty(ePWM_Module,ui16DutyCycle);

    /* Configure Timer */
        /* Select Source */
        //mc_PWMClk_Source(CCP_PWM_CLOCK);			// not for PIC16F877A
        
        /* Clear TMRxIF */
        //mc_PWMTimerIFClr() ;                  					// not critical
        
        /* Configure Prescaler value */
        mc_PWMTimer_Init(mui8PreScalerVal);		// Common for CCP1 and CCP2

    /* Configure CCP to PWM mode */
	if(PWM0 == ePWM_Module)
	{
		mc_configCCP1Mode(CCP_PWM_MODE);
		setPinOutput(D2);
	}
	else if(PWM1 == ePWM_Module)
	{
		mc_configCCP2Mode(CCP_PWM_MODE);
		setPinOutput(D1);
	}
	else
	{
		/* Invalid PWM Module */
		/* Do Nothing */
	}	
            
    /* Enable Timer */
    mc_EnablePWMTmr();                        	// Common for CCP1 and CCP2
} 


void setAnalogOut(enum ePWMModules eDAC_Module, uint16_t ui16Value) 
{
	uint16_t ui16DutyCycle;
	
	/* 0 - 1023 : 0 - 1000  */
	ui16DutyCycle = (uint16_t)(((uint24_t)976 * ui16Value) / 1000);
	
	setupPWM(eDAC_Module, 122, ui16DutyCycle);	// 1.22kHz Default Frequency
}

void removeAnalogOut(enum ePWMModules eDAC_Module)
{
	removePWM(eDAC_Module);
}

void removePWM(enum ePWMModules ePWM_Module)
{
	if(PWM0 == ePWM_Module)
	{
		mc_setPWM0_Off();
	}
	else if(PWM1 == ePWM_Module)
	{
		mc_setPWM1_Off();
	}	
	else
	{
		/* Invalid PWM Module */
		/* Do Nothing */	
	}
}

/* end of CoreLib_pwm.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	corelib_pwm.h - PWM Module Header File
// Description:	This header file of the driver for PIC PWM modules
// Revision:    v00.00.02
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
// FW Version      	Date        	Author         	Description
// v00.00.01		20120710		ESCII			- Library Initial Release
// v00.00.02		20120713		ESCII			- removed include of stdint.h
// 													- removed include of corelib_8bit_timer.h
//													- enumerated PWM Modes
//***********************************************************************************
#ifndef __PH_PWM_H__
#define __PH_PWM_H__

#if defined(HI_TECH_C)
	#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
		#include "htc_common.h"
	#else
		#include "htc_common_SPLint.h"
	#endif
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
			#include "htc_16f87xa.h"
		#else
			#include "htc_16f87xa_SPLint.h"
		#endif
	#endif
#endif

#include <PhilRoboKit_CoreLib_Macro.h>

/* User Configuration Definitions */
/* PWMs */
enum ePWMModules
{
	PWM0
	,PWM1
};

#define DAC0							PWM0
#define DAC1							PWM1

/* CCP_PWM Mode */
enum ePWMModes
{
	PWM_OFF             				= 0x00
	,COMP_TOGGLE_CCPO    				= 0x02
	,CAPTURE_FALL        				= 0x04
	,CAPTURE_RISE        				= 0x05
	,CAPTURE_4TH_FALL    				= 0x06
	,CAPTURE_16TH_RISE   				= 0x07
	,PWM_MODE            				= 0x0C
											// 0x0D
											// 0x0E
											// 0x0F
};
                         
#define CCP_PWM_MODE        PWM_MODE

#if 0 	// not for PIC16F877A
	/* Configure PWM to use TMR4 Module */
	#define TMR2_CLOCK          0x00
	#define TMR4_CLOCK          0x01
	#define TMR6_CLOCK          0x02

	#define CCP_PWM_CLOCK       TMR2_CLOCK

	#define mc_PWMClk_Source(a)             \
	    REG_CCPTMRS &= ~C1_TIMERSEL_MASK;   \
	    REG_CCPTMRS |= a&C1_TIMERSEL_MASK   // semi-collon intentionally omitted
#endif

#define mc_PWMTimerIntEn()            	mc_timer2IntEn()
#define mc_PWMTimerIntDis()           	mc_timer2IntDis() 
#define mc_PWMTimerIFClr()            	mc_timer2IFClr()

#define mc_EnablePWMTmr()           	mc_enableTMR2()
#define mc_DisablePWMTmr()          	mc_disableTMR2()

#define mc_configCCP1Mode(a)            \
REGISTER_CCP1CON = a&CCP_MODE_MASK      // semi-collon intentionally omitted

#define mc_configCCP2Mode(a)            \
REGISTER_CCP2CON = a&CCP_MODE_MASK      // semi-collon intentionally omitted

#define mc_setPWM0_On()                 \
mc_configCCP1Mode(PWM_MODE);            // semi-collon intentionally omitted
//mc_EnablePWMTmr() 

#define mc_setPWM0_Off()                \
mc_configCCP1Mode(PWM_OFF);             // semi-collon intentionally omitted
//mc_DisablePWMTmr() 

#define mc_setPWM1_On()                 \
mc_configCCP2Mode(PWM_MODE);            // semi-collon intentionally omitted
//mc_EnablePWMTmr()

#define mc_setPWM1_Off()                \
mc_configCCP2Mode(PWM_OFF);             // semi-collon intentionally omitted
//mc_DisablePWMTmr() 

#define mc_PWMTimer_Init(a)       		setup8BitTimer(TIMER2,a,0)

#define mc_setPWMPeriod(a)        			setTimerValue(TIMER2,a)
#define mc_setPWM0Ton(a)                	\
    REGISTER_CCP1CON &= ~PWM_DC_LSB_MASK;   \
    REGISTER_CCP1CON |= (a&0x0003)<<4;      \
    REGISTER_CCPR1L = (a&0x03FC)>>2         // semi-collon intentionally omitted
#define mc_setPWM1Ton(a)                	\
    REGISTER_CCP2CON &= ~PWM_DC_LSB_MASK;   \
    REGISTER_CCP2CON |= (a&0x0003)<<4;      \
    REGISTER_CCPR2L = (a&0x03FC)>>2         // semi-collon intentionally omitted
	

/* Public Function Prototypes */
void setupPWM(enum ePWMModules ePWM_Module, uint16_t ui16Frequency, uint16_t ui16DutyCycle);
void setPWMFrequency(uint16_t ui16Frequency);
void setPWMDuty(enum ePWMModules ePWM_Module, uint16_t ui16DutyCycle);
void removePWM(enum ePWMModules ePWM_Module);

void setAnalogOut(enum ePWMModules eDAC_Module, uint16_t ui16Value);
void removeAnalogOut(enum ePWMModules eDAC_Module);

#endif/* end of corelib_pwm.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
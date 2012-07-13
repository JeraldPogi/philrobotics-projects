//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	corelib_adc.h - ADC Header File
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

#ifndef __PH_ADC_H
#define __PH_ADC_H

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
		#define K16_ADC_RESOLUTION	(1023.00)
	#endif
#endif

/* ADCRoutine */
	#define	isADCConversionDone()	(BIT_ADCON0_GO_DONE? 0: 1)
	
	void setupADC(void);
	void setupADCPinsToDigital(void);
	void adcStart(void);
	void adcSetChannel(unsigned char ucChannel);
	float adcReadOnly(void);
	void adcSetVref(float Vref);

#endif/* end of corelib_adc.h */
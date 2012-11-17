//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_common_adc.h - ADC Header File
// Description:	
// Revision:    v01.00.00
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
// v01.00.00       201210xx    Giancarlo A.   Leverage Library to Standard Architecture
// 
//***********************************************************************************

#ifndef __HAL_COMMON_ADC_H__
#define __HAL_COMMON_ADC_H__

#include "PhilRoboKit_CoreLib_DataTypes.h"
	
	void setupADC(void);
	void setupADCPinsToDigital(void);
	void adcSetChannel(uint8_t ui8Channel);
    void adcStart(void);	
    uint16_t adcRead(void);
	uint16_t adcReadOnly(void);
    uint16_t adcReadOnChannel(uint8_t ui8Channel);
    bool isADCConversionDone(void);

#endif/* end of hal_common_adc.h */
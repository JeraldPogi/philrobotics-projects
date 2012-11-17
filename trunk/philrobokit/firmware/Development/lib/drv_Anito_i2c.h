//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// http://wiki.philrobotics.com | http://philrobotics.com/forum
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	drv_Anito_i2c.h - 
// Description:	
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

#ifndef __PH_I2C_H__
#define __PH_I2C_H__

#include "PhilRoboKit_CoreLib_DataTypes.h"

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

#define BUFFER_SIZE			(16)

#define K1_MASTER_MODE		(0)
#define K1_SLAVE_MODE		(1)

	struct{
		uint8_t I2CBuffer[BUFFER_SIZE];
		uint8_t Head;
		uint8_t Tail;
	}i2cTXFiFo, i2cRXFiFo;


void setupI2C(bool blOperation, uint8_t ui8Frequency);

void i2cRead(bool blAck);
void i2cWrite(uint8_t ui8Data);
bool isI2CBufferFull(void);
bool isI2CDataAvailable(void);

void i2cInterruptHandler(void);
void i2cTxInterruptHandler(void);
void i2cRxInterruptHandler(void);

#endif /* End of drv_Anito_i2c.h */


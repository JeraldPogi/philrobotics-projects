//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	i2c.h - I2C Header File
// Description:	
// Revision:    v00.00.02
// Author:      Giancarlo Acelajado
//				Keith Beja
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
// v00.00.01       201202xx    Giancarlo A.   - Library Initial Release
// v00.00.02	   20120829	   Keith B.		  - Code Cleanup
//											  - Modified I2C pins to be tri-state instead of output high
//											  - Added i2c setup feature
//***********************************************************************************

//Based from Regulus Berdin I2C routines for PIC Microcontroller
//http://www.electronicslab.ph/forum/index.php?topic=4679.msg76635#msg76635
#ifndef __PH_I2C_H__
#define __PH_I2C_H__

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A ) 
		#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
			#include "htc_16f87xa.h"
		#else
			#include "htc_16f87xa_SPLint.h"
		#endif
	#endif
#endif

#include <PhilRoboKit_CoreLib_Macro.h>

/* Macro Functions */
#define setSCL()	setPinInput(i2c[i2cMod][I2C_SCLPIN])
#define clrSCL()	setPinLow(i2c[i2cMod][I2C_SCLPIN]); setPinOutput(i2c[i2cMod][I2C_SCLPIN])

#define setSDA()	setPinInput(i2c[i2cMod][I2C_SDAPIN])
#define clrSDA()	setPinLow(i2c[i2cMod][I2C_SDAPIN]); setPinOutput(i2c[i2cMod][I2C_SDAPIN])
	
enum
{
	I2C_NO_ERROR
	,I2C_ERROR_NO_ACK
};

enum i2cModules
{
	I2C0
	,I2C1
	,I2C3
	,MAXI2CMOD
};

/* Public Function Prototypes */
void i2cSetup(enum i2cModules i2cMod, uchar_t ucSDAPin, uchar_t ucSCLPin);

void i2cStart(enum i2cModules i2cMod);
void i2cStop(enum i2cModules i2cMod);

uchar_t i2cWrite(enum i2cModules i2cMod, uchar_t i2cData);
uchar_t i2cRead(enum i2cModules i2cMod, bool blAcknowledge);

#endif /* end of i2c.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

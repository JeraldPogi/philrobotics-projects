//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	i2c.h - I2C Header File
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
// v00.00.01       201202xx    Giancarlo A.   Library Initial Release
// 
//***********************************************************************************

//Based from Regulus Berdin I2C routines for PIC Microcontroller
//http://www.electronicslab.ph/forum/index.php?topic=4679.msg76635#msg76635

#ifndef __PH_I2C_H
#define __PH_I2C_H

#include "PhilRobokit_Macro.h"

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "htc_16f87xa.h"
	#endif
#endif

/* I2C Routine */		
	enum {
		I2C_NO_ERROR,
		I2C_ERROR_NO_ACK
	};
	
	//--- Private Functions ------------------------------	
	void i2cSendAck(unsigned char ucSDAPin, unsigned char ucSCLPin, char blAcknowledge);	
	//--- End of Private Functions ------------------------------
	
	//--- Public Functions ------------------------------	
	void i2cStart(unsigned char ucSDAPin, unsigned char ucSCLPin);
	void i2cStop(unsigned char ucSDAPin, unsigned char ucSCLPin);
	
	void setupI2C(unsigned char ucSDAPin, unsigned char ucSCLPin);
	void i2cWrite(unsigned char ucSDAPin, unsigned char ucSCLPin, unsigned char i2cData);
	unsigned char i2cRead(unsigned char ucSDAPin, unsigned char ucSCLPin, char blAcknowledge);
	//--- End of Public Functions ------------------------------
	
#endif
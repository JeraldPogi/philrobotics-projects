//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	i2c.c - I2C File
// Description:	
// Revision:    v00.00.02
// Author:      Giancarlo Acelajado
//              Keith Beja
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
// v00.00.02       20120829    Keith B.       - Code Cleanup
//                                            - Modified I2C pins to be tri-state instead of output high
//                                            - Added i2c setup feature
//***********************************************************************************

//Based from Regulus Berdin I2C routines for PIC Microcontroller
//http://www.electronicslab.ph/forum/index.php?topic=4679.msg76635#msg76635
#include "i2c.h"

/* Local Variables */
enum i2cInfo
{
	I2C_SDAPIN
	,I2C_SCLPIN
	,MAXI2CINFO
};

static uint8_t i2c[MAXI2CMOD][MAXI2CINFO] = {0};

static uint8_t ui8Ctr;
static uint8_t ui8i2cData;

/* Private Function Prototypes */
static void i2cSendAck(enum i2cModules i2cMod, bool blAcknowledge);	

/* Public Functions */
void i2cSetup(enum i2cModules i2cMod, uchar_t ucSDAPin, uchar_t ucSCLPin)
{
	i2c[i2cMod][I2C_SDAPIN] = ucSDAPin;
	i2c[i2cMod][I2C_SCLPIN] = ucSCLPin;
}

void i2cStart(enum i2cModules i2cMod)
{
	setSCL(); //Set SCL Pin to High
	//Optional Delay Here
	setSDA(); //Set SDA Pin to High
	//Optional Delay Here
	clrSDA(); //Set SDA Pin to Low		
	//Optional Delay Here
	clrSCL(); //Set SCL Pin to Low
	//Optional Delay Here
}

void i2cStop(enum i2cModules i2cMod)
{
	clrSDA(); //Set SDA Pin to Low		
	//Optional Delay Here
	setSCL(); //Set SCL Pin to High
	//Optional Delay Here
	setSDA(); //Set SDA Pin to High
	//Optional Delay Here
}

uchar_t i2cWrite(enum i2cModules i2cMod, uchar_t i2cData)
{
	ui8Ctr = 8;	

	clrSCL(); //Set SCL Pin to Low

	do {
		if (i2cData & 0x80) {
			setSDA(); //Set SDA Pin to High
		} 
		else {
			clrSDA(); //Set SDA Pin to Low
		}

		//Optional Delay Here
		setSCL(); //Set SCL Pin to High
		//Optional Delay Here
		clrSCL(); //Set SCL Pin to Low
		//Optional Delay Here
		i2cData<<=1; //Shift Data
	} while (--ui8Ctr);

	//get acknowledge
	setSDA(); //Set SDA Pin to High
	setSCL(); //Set SCL Pin to High
	//Optional Delay here

	if (isPinHigh(i2c[i2cMod][I2C_SDAPIN])) {
		//SDA remains high, not acknowledged
		//Optional Delay Here
		clrSCL(); //Set SCL Pin to Low
		//Optional Delay Here
		return I2C_ERROR_NO_ACK;
	}

	//Optional Delay Here
	clrSCL(); //Set SCL Pin to Low
	//Optional Delay Here

	return I2C_NO_ERROR;
}

uchar_t i2cRead(enum i2cModules i2cMod, bool blAcknowledge)
{
	ui8Ctr = 8;
	ui8i2cData = 0;
	
	clrSCL(); //Set SCL Pin to Low
	//Optional Delay Here
	setSDA(); //Set SDA Pin to High
	
	do {
		ui8i2cData<<=1;
		setSCL(); //Set SCL Pin to High
		//Optional Delay Here
		
		if (isPinHigh(i2c[i2cMod][I2C_SDAPIN])) {
			ui8i2cData |= 1;
		}
		
		//Optional Delay Here
		clrSCL(); //Set SCL Pin to Low
		//Optional Delay Here
	} while (--ui8Ctr);
	
	i2cSendAck(i2cMod, blAcknowledge); //Send Acknowledge Routine
	
	return ui8i2cData;
}

/* Private Functions */
static void i2cSendAck(enum i2cModules i2cMod, bool blAcknowledge)
{
	clrSCL(); //Set SCL Pin to Low
	//Optional Delay Here

	if(blAcknowledge){
		clrSDA(); //Set SDA Pin to Low
	}
	else{
		setSDA(); //Set SDA Pin to High
	}

	//Optional Delay Here
	setSCL(); //Set SCL Pin to High
	//Optional Delay Here
	clrSCL(); //Set SCL Pin to Low
	//Optional Delay Here

	if(blAcknowledge){
		setSDA(); //Set SDA Pin to High
	}
}
/* end of i2c.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

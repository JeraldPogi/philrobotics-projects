//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	spi.h - SPI Header File
// Description:	
// Revision:    v00.01.00
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
// FW Version      Date        Author         Description
// v00.00.01       201202xx    Giancarlo A.   Library Initial Release
// 
//***********************************************************************************

#ifndef __PH_SPI_H
#define __PH_SPI_H

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "htc_16f87xa.h"
	#endif
#endif

/* SPI Routine*/	
	void setupSPI(unsigned char ucSDOPin, unsigned char ucSDIPin,unsigned char ucSCKPin, unsigned char ucCSPin);
	void spiSend(unsigned char ucSDOPin, unsigned char ucSCKPin, unsigned char spiData);
	unsigned char spiRead(unsigned char ucSDIPin, unsigned char ucSCKPin);
	void spiSlaveSelectHigh(unsigned char ucCSPin);
	void spiSlaveSelectLow(unsigned char ucCSPin);


#endif
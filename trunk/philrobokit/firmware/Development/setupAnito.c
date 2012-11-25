//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum 
// http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	setupAnito.C - Anito setup File
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
// FW Version      Date        Author         Description
// v01.00.00       201209xx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#include  "setupAnito.h"

    void setupAnito(void)
    {
        setupGpio();
        setupTimer();	//Hardware Delay        
        setupADC();
        //setupUart();
        
        BIT_INTCON_PEIE = 1; //Enable Peripheral Interrupt
		BIT_INTCON_GIE = 1;	 //Enable Global Interrupt
    }
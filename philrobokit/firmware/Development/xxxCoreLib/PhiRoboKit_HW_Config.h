//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum 
// http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_HW_Config.h - PhilRobokit Hardware Header File
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
// v01.00.00       201209xxx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#ifndef __PHILROBOKIT_HW_CONFIG_H__
#define __PHILROBOKIT_HW_CONFIG_H__

/* PhilRoboKit Controller Selection */
#define __MCU_PIC__                 (0)
#define __ARM_ST__                  (1)

/* PhilRoboKit Board Selection */
#define __HW_PHR_ANITO__            (0)
#define __HW_PHR_BATHALA__          (1)
#define __HW_EGIZMO_EPICPICMO__     (2)


/* PhilRoboKit Hardware Configuration */
#define __PHR_CONTROLLER__   (__MCU_PIC__)
#define __PHR_BOARD__        (__HW_PHR_ANITO__)

/* End of PhilRoboKit_HW_Config.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif
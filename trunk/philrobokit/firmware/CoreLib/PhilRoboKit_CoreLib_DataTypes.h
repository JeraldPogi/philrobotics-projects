//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_DataTypes.h - PhilRobokit Standard Datatypes
// Description:	
// Revision:    	v00.00.01
// Author:      	Efren S. Cruzat II
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
// v00.00.01	20120713	ESCII		- Library Initial Release
//***********************************************************************************
#ifndef __PH_DATATYPES_H__
#define __PH_DATATYPES_H__

#include <stdbool.h>
#include <stdint.h>

	/* Hi-Tech C Datatypes Mapped to PhilRobokit Standard Datatypes */
	#if defined(HI_TECH_C)
	/*bit */
		#define bit_t	bit;
		/* same as with Hi-Tech C, not recommended */
		
	/* bool */
		/* Same as stdbool.h */

	/* unsigned char */	
		#ifndef uchar_t
		typedef unsigned char uchar_t;
		#define uchar_t uchar_t
		#define UCHAR_MAX (255)
		#endif
		
	/* unsigned int 8 */
		/* int8_t */
		/* Same as stdbool.h */
		
	/* unsigned int 16 */
		/* int16_t */
		/* Same as stdint.h */

	/* unsigned int 24 */
		/* int24_t */
		/* Same as stdint.h */

	/* unsigned int 32 */
		/* int32_t */
		/* Same as stdint.h */
		
	/* signed char */	
		#ifndef char_t
		typedef signed char char_t;
		#define char_t char_t
		#define CHAR_MIN (-128)
		#define CHAR_MAX (127)
		#endif
		
	/* signed int 8 */
		/* int8_t */
		/* Same as stdbool.h */
		
	/* signed int 16 */
		/* int16_t */
		/* Same as stdint.h */

	/* signed int 24 */
		/* int24_t */
		/* Same as stdint.h */

	/* signed int 32 */
		/* int32_t */
		/* Same as stdint.h */

	/* float (24Bits) */
		#ifndef float_t
		typedef float float_t;
		#define float_t float_t
		#endif
		/* not recommended */

	/* double (24bits  default /32 bits) */
		#ifndef double_t
		typedef double double_t;
		#define double_t double_t
		#endif
		/* not recommended */

	/* long double */
		/* none */
	#endif

#endif/* end of DataTypes.h */
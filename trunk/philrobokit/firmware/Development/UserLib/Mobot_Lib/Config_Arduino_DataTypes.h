/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_DataTypes.h"           |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Standard Data Types Definition  |
* |Revision:      | v00.02.01                                   |
* |Author:        | Efren S. Cruzat II                          |
* |               |                                             |
* |Dependencies:  |                                             |
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.01    |20120713   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130408   |ESCII              |Move location of bool type definition|
* |v00.02.00    |20130514   |ESCII              |Code Formatted, removed Hitech C on the options|
* |v00.02.01    |20130515   |ESCII              |Fixed SPLINT error by enclosing definition in ignore tag|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_DATATYPES_H__
#define __PH_DATATYPES_H__

/* Include .h Library Files */
#include <stdbool.h>
#include <stdint.h>

/* User Configuration Definitions */

/*bit */
/* same as with Hi-Tech C, not recommended */
//#ifndef S_SPLINT_S /* Suppress SPLint Parse Errors */
//#define bit_t   bit;
//#else
#define bit_t   unsigned char
//#endif

/* bool */
#ifndef bool_t
typedef unsigned char bool_t;

#ifndef TRUE
#define FALSE                   (0==1)
#define TRUE                    (1==1)
#endif

#define bool_t  bool_t
#endif

/*@ignore@*/ // Suppress SPLint Parse Errors
// esc.comment: placed ignore because some terms were already defined by splint
/* unsigned char */
#ifndef uchar_t
typedef unsigned char uchar_t;
#define uchar_t uchar_t
#define UCHAR_MAX (255)
#endif

/* unsigned int 8 */
/* uint8_t */
/* Same as stdint.h */

/* unsigned int 16 */
/* uint16_t */
/* Same as stdint.h */

/* unsigned int 24 */
/* uint24_t */
/* Same as stdint.h */

/* unsigned int 32 */
/* uint32_t */
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
/*@end@*/

/* long double */
/* none */

/* Global Constants */
/* none */

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
/* none */

#endif/* end of PhilRoboKit_CoreLib_DataTypes.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_GlobalDefs.c"          |
* |:----          |:----                                        |
* |Description:   | Global Variable Definitions                 |
* |Revision:      | v00.00.01                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#if 0
/* Local Constants */
    /* none */

/* Global Variables */
static volatile	uint8_t		gui8SampleGlobal;

/* Private Function Prototypes */
void setSampleGlobalValue(uint8_t ui8Value);
uint8_t getSampleGlobalValue(void);

/* Public Functions */
/*******************************************************************************//**
* \brief Set the value of a global variable
*
* > This function is called to set the value of a global variable
*
* > <BR>
* > **Syntax:**<BR>
* >      setSampleGlobalValue(value
* > <BR><BR>
* > **Parameters:**<BR>
* >     value - the value to be stored on a global variable
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setSampleGlobalValue(uint8_t ui8Value)
{
	gui8SampleGlobal = ui8Value
}

/*******************************************************************************//**
* \brief Get the value of a global variable
*
* > This function is called to get the value of a global variable
*
* > <BR>
* > **Syntax:**<BR>
* >      register = getSampleGlobalValue()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     value - value of the global variable
* > <BR><BR>
***********************************************************************************/
uint8_t getSampleGlobalValue(void)
{
	return gui8SampleGlobal;
}

/* Private Functions */
    /* none */
    
#endif
/* end of PhilRoboKit_CoreLib_GlobalDefs.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
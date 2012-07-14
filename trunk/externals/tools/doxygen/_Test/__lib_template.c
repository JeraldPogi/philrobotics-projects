/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:	| "__lib_template.c"							|
* |:----		|:----											|			
* |Description:	| This is a coding standard template file		|											
* |Revision:	| v00.00.01										|											
* |Author:    	| Efren S. Cruzat II							|
* | 			|												|										
* |Dependencies:|												|
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <br><br>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
*
*---------------------------------------------------------------------------------------------
* |FW Version      	|Date       |Author         |Description				|
* | :----			|:----		|:----			|:----						|
* |v00.00.01       	|20120714	|ESCII		   	|Library Initial Release	|
*********************************************************************************************/
#define __MODULE_HEADER__ 								/*!< \brief This section was added for the Module Header to be shown on the documentation */
#undef  __MODULE_HEADER__

#include "__lib_template.h"

/* Local Constants */
#define K8_CONSTANTS							3UC		/*!< - \brief Constants (Local or Global)
																+ must have prefixed with "K<#of_bits>_"
																+ must be written on all caps
																+ value must have explicitly defined type
														*/
                                                        

/* Local Variables */
static uint8_t	ui8LocalVariable;						/*!< - \brief Variables local to a module
																+ must be declared static 
																+
														*/


/* Private Function Prototypes */
static void callPrivateFunctions(void);					/*!< - \brief Private Functions
																+ must always be declared static 
																+ prototypes are declared on the .c file where the function is located
														*/
/* Public Functions */
/*******************************************************************************//**
* \brief Public Functions are functions that are accessible outside the module
*
* - function name must follow the format <action><Module><Parameter>
*       + e.g. getPinValue(Pin)
* - A prototype of the function must always be defined at the .h file of that module
* - If a function has no parameter the "void" type is omitted to prevent Hi-Tech C
*	warnings
***********************************************************************************/
void callPublicFunctions()
{
    uint16_t ui16Y_Value=0;								/*!< Variables local to a function must have assigned values before it can be used */
	
    ui16Y_Value = showFormula(K8_CONSTANTS);

}	

/*******************************************************************************//**
* \brief Formula can also be documented by enclosing it between \\f$ symbol
*
* This example function converts the input X to corresponding Y value...
* > \f$ Y = 3/4 X + 10 \f$
***********************************************************************************/
uint8_t showFormula(uint8_t ui8X_Value)
{
	uint16_t ui16Y_Value=0;
	
	ui16Y_Value = ((uint16_t)ui8X_Value * K8_CONSTANTS) >> 2 + 10;
	
	return (uint8_t)ui16Y_Value;
}

/*******************************************************************************//**
* \brief Tables are good for representing boolean relationships
*
* |Left Aligned |Center Aligned |Right Aligned  |
* |:----        |:---:          |----:          |
* |0            |0              |0              |
* |0            |1              |1              |
* |1            |0              |1              |
* |1            |1              |0              |
*
***********************************************************************************/
uint8_t showTables(uint8_t ui8X_Value)
{
	uint16_t ui16Y_Value=0;								/*!< Variables local to a function must have assigned values before it can be used */
	
	ui16Y_Value = ((uint16_t)ui8X_Value * K8_CONSTANTS) >> 2 + 10;
	
	return (uint8_t)ui16Y_Value;
}

/*******************************************************************************//**
* \brief Contains a brief description of what a function does.
* This brief description can span multiple lines and is terminated by an empty line.
*
* Detailed Description can start after the empty line. Entries entered on the 
* detailed description are not shown on the summary view
***********************************************************************************/
void main(void)
{
	callPrivateFunctions();
	
	while(1)
	{
		callPublicFunctions();
	}
}

/* Private Functions */
/*******************************************************************************//**
* \brief Private Functions are functions that are accessible only within the module
*
* - must always be declared static 
* - prototypes are declared on the .c file where the function is located
***********************************************************************************/
static void callPrivateFunctions(void)
{
	uint16_t ui16Y_Value=0;								/*!< Variables local to a function must have assigned values before it can be used */
}

/* end of <filename>.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
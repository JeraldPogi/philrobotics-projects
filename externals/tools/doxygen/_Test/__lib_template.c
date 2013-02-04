/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "[filename].c"                              |
* |:----          |:----                                        |
* |Description:   | This is a coding standard template file     |
* |Revision:      | vxx.xx.xx                                   |
* |Author:        | [author's name]                             |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |vxx.xx.xx    |YYYYMMDD   |[author's name]    |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

/* Include .h File */
#include "__lib_template.h"

/* Local Constants */
#define KU16_CONSTANTS               1023UI      /*!< \brief Constants (Local or Global)

                                                        + must have a **prefix of K[unsigned][num_of_bits]_**
                                                        + must be written on *all caps*
                                                        + numerical literal must have **explicitly defined** data type
                                                        
                                                        |data types |prefix                                     |example                        |
                                                        |:----      |:----                                      |:----                          |
                                                        |signed     |K[none]                                    | \#define K16_CONST     1023I  |
                                                        |unsigned   |K[U]                                       | \#define KU16_CONST    1023UI |  
                                                        |integer    |K[16] or K[8](depending on architecture)   | \#define K16_CONST     1023I  |
                                                        |long       |K[32]                                      | \#define K32_CONST     1023L  |
                                                        |float      |K[F]                                       | \#define KF_CONST      10.23F |
                                                        */

/* Local Variables */
static uint8_t	ui8LocalVariable;                /*!< \brief Local Variables (variables that are local to a module)

                                                        + must be declared **static**
                                                        + the name must be a *noun that will best describe its purpose* 
                                                            - (e.g. ui8EventsCounter, ui8TimeDelay, ui8SecTimer)
                                                        + the name must have a prefix that follows [Hungarian Notation](http://en.wikipedia.org/wiki/Hungarian_notation). (see table below)
                                                        + succeeding words must follow [CamelCase Notation](http://en.wikipedia.org/wiki/CamelCase) where the first letter of each word must be capitalized
                                                        
                                                        |data types |prefix     |example        |
                                                        |:----      |:----      |:----          |
                                                        |local      |none       |i8TempVar      |
                                                        |global     |g          |gi8TempVar     |
                                                        |signed     |none       |i8TempVar      |
                                                        |unsigned   |u          |ui8TempVar     |
                                                        |array      |a          |ai8TempVar     |
                                                        |char_t     |c          |cTempVar       |
                                                        |int8_t     |i8         |i8TempVar      |
                                                        |int16_t    |i16        |i16TempVar     |
                                                        |int24_t    |i24        |i24TempVar     |
                                                        |int32_t    |i32        |i32TempVar     |
                                                        |float_t    |f          |fTempVar       |
                                                        |double_t   |d          |dTempVar       |
                                                        |bit_t      |b          |bTempVar       |
                                                        |bool_t     |bl         |blTempVar      |
                                                        */
static uint8_t  ui8IIR_BuffPrev;
static uint8_t  ui8IIR_BuffCurr;
                                                        
/* Private Function Prototypes */
static void createFunctionNames(void);
static void callPrivateFunctions(void);

/* Public Functions */
/*******************************************************************************//**
* \brief Public Functions are functions that are accessible 
* outside the module
*
* >  - functions must always have a prototype and must be declared at the ".h file" 
* >  of that module
* >  - if a function has no parameter and can be called from the .phr file, 
* >  the **"void" type may be omitted** in order to prevent compiler warnings 
* >  (specifically for the Hi-Tech C)
*
* > <BR>
* > **Syntax:**<BR>
* >     callPublicFunctions()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void callPublicFunctions(void)
{
    ui8IIR_BuffCurr = adcReadOnly(0);
    ui8IIR_BuffPrev = (uint8_t)showFormula(&ui8IIR_BuffCurr, &ui8IIR_BuffPrev);
    
    showTables(ui8IIR_BuffPrev);
    showFlowCharts(ui8IIR_BuffPrev);
    showStateCharts(TRUE); 
}

/*******************************************************************************//**
* \brief This is a **function header template**. This part contains a brief  
* description of what a function does. This brief description can span multiple 
* lines and is terminated by an empty line.
*
* > A detailed description can start after the empty line. Entries entered on the 
* > detailed description are not shown on the "Functions Summary View"
*
* > <BR>
* > **Syntax:**<BR>
* >     main()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
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
* \brief Function Naming Convention
*
* > - names must be as short as possible (2-4 words long)
* > - function names must follow the format [verb][Noun][Noun] 
* > a more specific format may be [action][Module][Parameter]
* >     + e.g. getPinValue(Pin)
* > - the [Parameter] may be omitted if there are no parameters to be set or derived
* > on/from the module
* >     + e.g. setPin(Pin), clrPin(Pin)
* > - the [Module] may be omitted if the [Parameter] is exclusive to the module or 
* > for the purpose of simplicity
* >     + e.g. getMS()
* > it must follow camelCase naming convention where the first letter of each word, 
* > except for the first word, must be capitalized
*
* > <BR>
* > **Syntax:**<BR>
* >     createFunctionNames()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void createFunctionNames(void)
{
    uint16_t ui16VariablesLocal=0;               /*!< Local Variables (variables that are local to a function)
                                                        + must have assigned values before they can be used
                                                        + interrupt local variables must be declared static
                                                        */
}

/*******************************************************************************//**
* \brief Private Functions are functions that are accessible only 
* within the module
*
* > - it must always be declared as static 
* > - prototypes must be declared on the ".c file" where the function is located 
* 
* > <BR>
* > **Syntax:**<BR>
* >     callPrivateFunctions()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void callPrivateFunctions(void)
{
    createFunctionNames();
}

/* end of [filename].c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
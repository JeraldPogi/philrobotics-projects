/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:	| "[filename].c"							    |
* |:----		|:----											|			
* |Description:	| This is a coding standard template file		|											
* |Revision:	| vxx.xx.xx					                    |											
* |Author:    	| [author's name]							    |
* | 			|												|										
* |Dependencies:| "__lib_template.h"							|
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
* |FW Version      	|Date       |Author         |Description				|
* | :----			|:----		|:----			|:----						|
* |v00.00.01       	|20120714	|ESCII		   	|Library Initial Release	|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section is to include Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "__lib_template.h"

/* Local Constants */
#define KU8_CONSTANTS							3UC		/*!< \brief Constants (Local or Global)

                                                                + must have a **prefix of K[unsigned][num_of_bits]_**
                                                                + must be written on *all caps*
                                                                + value must have **explicitly defined** data type
														*/

/* Local Variables */
static uint8_t	ui8LocalVariable;						/*!< \brief Local Variables (variable that are local to a module)

                                                                + must be declared **static**
                                                                + the name must be a *noun that will best describe its purpose* 
                                                                    - (e.g. ui8EventsCounter, ui8TimeDelay, ui8SecTimer)
                                                                + the name must follow [Hungarian Notation](http://en.wikipedia.org/wiki/Hungarian_notation) for adding name prefix
                                                                
                                                                |data types |prefix     |example        |
                                                                |:----      |:----      |:----          |
                                                                |local      |none       |i8TempVar      |
                                                                |global     |g          |gi8TempVar     |
                                                                |signed     |none       |i8TempVar      |
                                                                |unsigned   |u          |ui8TempVar     |
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

enum    valid_states_e                                  //!< \brief Enumeration
{
    EU8_STATE0      = 0UC                               //!< + enumeration identifier must have a *suffix of _e* to distinguish that it is an enumeration id
    ,EU8_STATE1     = 1UC                               //!< + if one of the list entry has its value defined, all the others must also be defined
    ,EU8_STATE2     = 2UC                               //!< + must have a **prefix of E[unsigned][num_of_bits]_**
    ,EU8_STATE3     = 3UC                               //!< + must be written on *all caps*
    ,EU8_STATE4     = 4UC                               //!< + value must have **explicitly defined** data type
}eValidStates;                                          

/* Private Function Prototypes */
static void createFunctionNames(void);                  
static void callPrivateFunctions(void);	
static void showStateDiagrams(uint8_t ui8X_Value);	
static void showFlowCharts(uint8_t ui8X_Value);		    

/* Public Functions */
/*******************************************************************************//**
* \brief Description: Public Functions are functions that are accessible 
* outside the module
*
* - functions must always have a prototype and must be declared at the ".h file" 
* of that module
* - if a function has no parameter, the "void" type is omitted in order to prevent  
* compiler warnings (specifically for the Hi-Tech C) when used on the .phr 
* without the void
***********************************************************************************/
void callPublicFunctions()
{
    uint16_t ui16Y_Value=0;								/*!< Local Variables (variables that are local to a function)
                                                                + must have assigned values before it can be used
                                                                + interrupt local variables must be declared static
                                                        */
	
    ui16Y_Value = showFormula(K8_CONSTANTS);
    ui16Y_Value = showTables(K8_CONSTANTS);
}	

/*******************************************************************************//**
* \brief Description: Formula can be documented by enclosing it between two \\f$ symbol
*
* This is an example of a function that converts the input X to corresponding Y value.
* 
***********************************************************************************/
uint8_t showFormula(uint8_t ui8X_Value)
{
	uint16_t ui16Y_Value=0;
	
    /*! > \f$ Y = 3/4 X + 10 \f$ */
	ui16Y_Value = ((uint16_t)ui8X_Value * K8_CONSTANTS) >> 2 + 10;
	
	return (uint8_t)ui16Y_Value; /*!< function returns and assignment to variables must be explicitly casted to proper types */
}

/*******************************************************************************//**
* \brief Description: Tables are good for representing logic behavior
*
* 
***********************************************************************************/
void showTables(uint8_t ui8X_Value)
{
    static uint16_t ui16Y_Value;
    
    ui16Y_Value += (uint16_t)ui8X_Value;
    
    /*!
        |Left Aligned |Center Aligned |Right Aligned  |
        |:----        |:---:          |----:          |
        |0            |0              |0              |
        |0            |1              |1              |
        |1            |0              |1              |
        |1            |1              |0              |
    */
    if(KU8_CONSTANTS == ui8X_Value)
    {
        /*!< when using the *== operator* to compare a variable to a constant, 
            it is best to place the constant on the left hand side of the operation
            because this prevents the possibility of assigning a value, instead of 
            comparing it, when one of the '=' sign gets accidentally omitted.
            For consistency, same rule applies for the *!=* operator.
        */
        showFlowCharts(ui8X_Value);
    }
    else if(ui8X_Value < KU8_CONSTANTS)
    {
        showStateDiagrams(ui8X_Value);
    }
    else
    {
        /*!< every **if-else if** statement must end with else condition even if it is doing nothing */
    }
}

/*******************************************************************************//**
* \brief Description: Flow Charts are good for showing sequential program flow
* 
* 
*
***********************************************************************************/
static void showFlowCharts(uint8_t ui8X_Value)
{
    /*! 
      \dot
        digraph G {
          {node[shape=box] process1 process2 process3}
          {node[shape=diamond] decision1}
          start -> process1 -> decision1
          process2 -> process3 -> end
          decision1 -> process3 [label=n]
          decision1 -> process2 [label=y]
        }
      \enddot
    */
}

/*******************************************************************************//**
* \brief Description: State Diagrams are good for showing distinct state behavior
* 
* 
*
***********************************************************************************/
static void showStateDiagrams(uint8_t ui8X_Value)
{
    /*! 
      \dot
        digraph finite_state_machine {
            size="5,5"
            {node [shape = doublecircle] STATE0}
            node [shape = circle];
            STATE0 -> STATE2 [ label = "Turning On" ]
            STATE0 -> STATE3 [ label = "Fast Turn On" ]
            STATE2 -> STATE3 [ label = "All Green" ]
            STATE3 -> STATE1 [ label = "Fault" ]
            STATE1 -> STATE2 [ label = "Recovered" ]
            STATE1 -> STATE0 [ label = "Turning Off" ]
            STATE3 -> STATE0 [ label = "Fast Turn Off" ]
        }
      \enddot
    */
    switch(ui8X_Value)
    {
        case STATE0:
        {
            break;
        }
        case STATE1:
        {
            break;
        }
        case STATE2:    /*!< all switch cases must have a break at the end. */
        case STATE3:    /*!< if it is an intentional fallthrough, the purpose must be clearly documented */
        {
            break;
        }
        default:        /*!< there should always have a default condition on every switch statements */
        {
            break;
        }
    }
}

/*******************************************************************************//**
* \brief Description: Contains a brief description of what a function does.
* This brief description can span multiple lines and is terminated by an empty line.
*
* A detailed description can start after the empty line. Entries entered on the 
* detailed description are not shown on the Functions summary view
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
* \brief Description: Function Naming Conventions 
*
* - must be as short as possible (2-4 words long)
* - function names must follow the format [action][Module][Parameter]
*       + e.g. getPinValue(Pin)
* - the [Parameter] may be omitted if there are no parameters to be set or derived
* on the module
*       + e.g. setPin(Pin), clrPin(Pin)
* - the [Module] may be omitted if the [Parameter] is exclusive to the module or 
* for the purpose of simplicity
*       + e.g. getMS()
*
***********************************************************************************/
void createFunctionNames(void)
{
	uint16_t ui16VariablesLocal=0;						/*!< Local Variables (variables that are local to a function)
                                                                + must have assigned values before they can be used
                                                                + interrupt local variables must be declared static
                                                        */
}

/*******************************************************************************//**
* \brief Description: Private Functions are functions that are accessible only 
* within the module
*
* - it must always be declared static 
* - prototypes must be declared on the ".c file" where the function is located
***********************************************************************************/
static void callPrivateFunctions(void)
{
    createFunctionNames();
}

/* end of <filename>.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
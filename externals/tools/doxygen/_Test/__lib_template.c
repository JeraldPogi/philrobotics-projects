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
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "__lib_template.h"

/* Local Constants */
#define KU16_CONSTANTS                      1023UI      /*!< \brief Constants (Local or Global)

                                                        + must have a **prefix of K[unsigned][num_of_bits]_**
                                                        + must be written on *all caps*
                                                        + value must have **explicitly defined** data type
                                                        */

/* Local Variables */
static uint8_t	ui8LocalVariable;                       /*!< \brief Local Variables (variables that are local to a module)

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

/*! \brief Enumeration */
enum    valid_states_e                                  /*!< + enumeration identifier must have a *suffix of _e* to distinguish that it is an enumeration id */                               
{                                                       
    E_INIT                              
    ,E_OFF                              
    ,E_BOOT                             
    ,E_ON                             
    ,E_FAULTED                             
};                                          

enum    led_limits_e
{
    EU16_LED4_LIM   = 1024UI                            //!< + if one of the list entry has its value defined, all the others must also be defined             
    ,EU16_LED3_LIM  = 768UI                             //!< + must have a **prefix of E[unsigned][num_of_bits]_**             
    ,EU16_LED2_LIM  = 512UI                             //!< + must be written on *all caps*
    ,EU16_LED1_LIM  = 256UI                             //!< + value must have **explicitly defined** data type
}eLEDLimits;

/* Private Function Prototypes */
static void createFunctionNames(void);
static void callPrivateFunctions(void);
static void showStateCharts(void);
static void showFlowCharts(void);

/* Public Functions */
/*******************************************************************************//**
* \brief Public Functions are functions that are accessible 
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
    uint16_t ui16Y_Value=0;                             /*!< Local Variables (variables that are local to a function)
                                                                + must have assigned values before it can be used
                                                                + interrupt local variables must be declared static
                                                                */

    ui16Y_Value = (uint8_t)showFormula(K8_CONSTANTS);
    showTables(KU16_CONSTANTS);
    showFlowCharts();
    showStateCharts(); 
}

/*******************************************************************************//**
* \brief Formula can be documented by enclosing it between two \\f$ symbol
*
* This is an example of a function that converts the input X to corresponding Y value.
* 
***********************************************************************************/
uint8_t showFormula(uint8_t ui8X_Value)
{
    uint16_t ui16Y_Value=0;

    /*! > \f$ Y = 3/4 * X + 10 \f$ */
    ui16Y_Value = ((uint16_t)ui8X_Value * K8_CONSTANTS) >> 2 + 10;

    return (uint8_t)ui16Y_Value; /*!< function returns and assignment to variables must be explicitly casted to proper types */
}

/*******************************************************************************//**
* \brief Tables must be used to represent truth table, fuzzy logic,
* or simple decision making logics
* 
***********************************************************************************/
void showTables(uint16_t ui16Value)
{
    /*! \brief Flash Converter Logic Example
        |Left Aligned<BR>From   |Center Aligned<BR>To   |Right Aligned<BR>LED   |
        |:----                  |:---:                  |----:                  |
        |768                    |1023                   |LED4                   |
        |512                    |767                    |LED3                   |
        |256                    |511                    |LED2                   |
        |0                      |255                    |LED1                   |
    */
    if(ui16Value < EU16_LED1_LIM)
    {
        setPinHigh(LED1);
    }
    else if(ui16Value < EU16_LED2_LIM)
    {
        setPinHigh(LED2);
    }
    else if(ui16Value < EU16_LED3_LIM)
    {
        setPinHigh(LED3);
    }    
    else if(ui16Value <= EU16_LED4_LIM)
    {
        setPinHigh(LED4);
    }
    else
    {
        /*!< every **if-else if** statement must end with else condition even if it is doing nothing */
        /* Do Nothing */
    }
}

/*******************************************************************************//**
* \brief Flow Charts must be use to show sequential program flow
* 
* 
*
***********************************************************************************/
static void showFlowCharts(void)
{
    /*! \brief Generic Fault Detection Sequence
      \dot
        digraph flow_chart {
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
* \brief State Diagrams must be used to show distinct state behavior
* 
* 
*
***********************************************************************************/
static void showStateCharts(void)
{
    static enum  valid_states_e  eValidStates = E_INIT;
    
    if(eValidStates < E_ON)
    {
        eValidStates++;
    }
    
    /*! \brief Generic System State Machine
      \dot
        digraph state_chart {
            graph[size="5,6",page="11.69,8.27",compound=true,rankdir=TB,center=true,orientation=portrait];
            edge[fontname="Helvetica",fontsize=8,arrowhead=vee];
            node[fontname="Helvetica",fontsize=10,shape=ellipse];
    
            //{ rank=same; Boot }
            //{ rank=same; Init; On; Off }
            //{ rank=same; Faulted }
            
            Init[style=filled,shape=doublecircle,color=black,label="",width=.2,height=.2]; 

            Init -> Off [ label = "Entry" ];
            Off -> Off[ label = "Turned Off" ];
            Off -> Boot [ label = "Cold Start" ];
            Off -> On [ label = "Warm Start" ];
            On -> Off [ label = "Critical/\nPower Down" ];  
            Boot -> On [ label = "Turning On" ];
            On -> Faulted [ label = "Fault" ]; 
            On -> On [ label = "Normal" ]; 
            Faulted -> On [ label = "Recover" ]; 
            Faulted -> Off [ label = "Timeout" ];
         }
      \enddot
    */
    switch(eValidStates)
    {
        case E_OFF:
        {
            break;          /*!< all switch cases must have a break at the end. */
        }
        case E_BOOT:        /*!< if it is an intentional fallthrough, the purpose must be clearly documented */
        case E_ON:          
        {
            /*!
              * when using the *== operator* to compare a variable to a constant, 
              * it is best to place the constant on the left hand side of the operation
              * because this prevents the possibility of assigning a value, instead of 
              * comparing it, when one of the '=' sign gets accidentally omitted.
              */
            if(TRUE == gblFaultDetected)
            {
                eValidStates = E_FAULTED;            
            }
            break;
        }
        case E_FAULTED:
        {
            /*! 
              * For consistency, same rule applies for the *!=* operator. 
              */
            if(TRUE != gblFaultDetected)
            {
                eValidStates = E_ON;
            }
            else
            {
                if(ui8FaultCounter++ > KUI_ALLOWEDFAULTS)
                {
                    eValidStates = E_OFF;
                }
            }
            break;
        }        
        default:            /*!< there should always have a default condition on every switch statements */
        {
            eValidStates = E_OFF;
            break;
        }
    }
}

/*******************************************************************************//**
* \brief Contains a brief description of what a function does.
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
* \brief Function Naming Conventions 
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
    uint16_t ui16VariablesLocal=0;                      /*!< Local Variables (variables that are local to a function)
                                                                + must have assigned values before they can be used
                                                                + interrupt local variables must be declared static
                                                                */
}

/*******************************************************************************//**
* \brief Private Functions are functions that are accessible only 
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
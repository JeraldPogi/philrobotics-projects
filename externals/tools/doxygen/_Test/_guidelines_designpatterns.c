/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "_guidelines_designpatterns.c"              |
* |:----          |:----                                        |
* |Description:   | This is a coding standard template file for documenting common patterns in FW design |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |v00.00.01    |20120719   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "_guidelines_designpatterns.h"

/* Local Constants */
#define KU16_ALLOWEDFAULTS              8UI      /*!< \brief Constants (Local or Global)

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
static bool_t	blBooted;                        /*!< \brief Local Variables (variables that are local to a module)

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

/*! \brief Enumeration */
enum    valid_states_e                           //!< + enumeration identifier must have a *suffix of _e* to distinguish that it is an enumeration id                             
{                                                       
    E_INIT                              
    ,E_OFF                              
    ,E_BOOT                             
    ,E_ON                             
    ,E_FAULTED                             
};                                          

enum    led_limits_e
{
    EU16_LED4_LIM   = 1024UI                     //!< + if one of the list entry has its value defined, all the others must also be defined             
    ,EU16_LED3_LIM  = 768UI                      //!< + must have a **prefix of E[unsigned][num_of_bits]_**             
    ,EU16_LED2_LIM  = 512UI                      //!< + must be written on *all caps*
    ,EU16_LED1_LIM  = 256UI                      //!< + value must have **explicitly defined** data type
}eLEDLimits;

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Formula can be documented by enclosing it between two \\f$ symbols
*
* > This is an example of a function that performs a basic IIR filtering
* > <BR><BR>
* > **Syntax:**<BR>
* >     showFormula(&CurrentBuff,&PrevBuff)
* > <BR><BR>
* > **Parameters:**<BR>
* >     CurrentBuff - current IIR value storage variable
* >     PrevBuff - current IIR value storage variable
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t (0 - 65535), filtered value
* > <BR><BR>
***********************************************************************************/
uint16_t showFormula(uint8_t  *ui16LocIIRBuffCurr, uint8_t  *ui16LocIIRBuffPrev)
{
    uint32_t ui32Y_Value=0;
    
    if('\0' == ui16LocIIRBuffCurr)                                              //!< pointers passed to a function must be checked for null before it can be used
    {
        return 0;
    }
    else if('\0' == ui16LocIIRBuffPrev)
    {
        return 0;
    }
    else
    {
        /* Do Nothing */
    }

    /*! 
    * formula shall be placed on top of every computation routine
    * \f$ Y = \frac{3}{4}X_{previous} + \frac{1}{4}X_{current} \f$ 
    */
    ui32Y_Value = (uint32_t)(*ui16LocIIRBuffPrev) + (*ui16LocIIRBuffPrev);      //!< assignment to variables must be explicitly casted to proper types
    ui32Y_Value += (uint32_t)(*ui16LocIIRBuffCurr);
    ui32Y_Value >>= 2;

    ui16LocIIRBuffPrev = (uint16_t)ui32Y_Value;
    
    return (uint16_t)ui32Y_Value;                                               //!< function returns must be explicitly casted to proper types
}

/*******************************************************************************//**
* \brief Tables shall be used to represent truth behavior, fuzzy logic,
* or simple decision making logics
*
* > This is an example of a function that lit an LED depending on the level of the
* > ADC Input
* > <BR><BR>
* > **Syntax:**<BR>
* >     showTables(Input)
* > <BR><BR>
* > **Parameters:**<BR>
* >     Input - Filtered ADC Input to be converted
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void showTables(uint16_t ui16Value)
{
    /* Initialize Values */
    setPinLow(LED1);
    setPinLow(LED2);
    setPinLow(LED3);
    setPinLow(LED4);
    
    /*! \brief **VU Meter / Window Comparator Logic Example**
        |Left Aligned<BR>From   |Center Aligned<BR>To   |Right Aligned<BR>LED Output    |
        |:----                  |:---:                  |----:                          |
        |768                    |1023                   |LED4                           |
        |512                    |767                    |LED3                           |
        |256                    |511                    |LED2                           |
        |0                      |255                    |LED1                           |
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
    else
    {
        setPinHigh(LED4);
    }
}

/*******************************************************************************//**
* \brief Flow Charts shall be used to show sequential program flow
*
* > This is an example of a function for checking faults. It sets or clears a flag,
* > with some validation delay, if the level is above or below the limit respectively.
* > Improvement can be made by allowing hysteresis on the recover conditions.
* > <BR><BR>
* > **Syntax:**<BR>
* >     showFlowCharts(Input)
* > <BR><BR>
* > **Parameters:**<BR>
* >     Input - the level of the parameter to be checked against the limit
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void showFlowCharts(uint16_t ui16Value)
{
    static uint16 ui16AssertTimer=0, ui16DeassertTimer=0;
    
    /*! \brief **Generic Fault Detection Sequence**
    \dot
        digraph flow_chart {
            // set graph defaults
            graph[size="8,8",page="11.69,8.27",compound=true,rankdir=LR,center=true,orientation=portrait];
            edge[fontname="Helvetica",fontsize=12,arrowhead=vee];
 
            { rank=same; start; condition1; process3; condition3; end; }
            { rank=same; process4; process2; node2;}
            { rank=same; condition2; node1; }
            { rank=same; process1; node3; node4}
            
            // Start
            start[shape=ellipse, label=start];
            start -> condition1;
            
            // Check if Limits Exceeded
            condition1[shape=hexagon, label="Limit\n Exceeded"];
            process4[shape=box, label="Clear Deassert\n Timer"];
            condition1 -> process4[label=y];
            process4 -> condition2;
            
            process3[shape=box, label="Clear Assert\n Timer"];
            condition1 -> process3[label=n];
            process3 -> condition3;
            
            // Else Check Deassert
            condition3[shape=hexagon, label= "Deassert\n Timeout"];
            condition3 -> process2[label=y];
            condition3 -> end[label=n];
            
            // Check Assert Timeout
            condition2[shape=hexagon, label= "Assert\n Timeout"];
            condition2 -> process1[label=y];
            condition2 -> node1[arrowhead=none,label=n];
            node1 -> node3;
 
            // Assert and Deassert Faults 
            process1[shape=box, label="Set Fault"];
            process1 -> node3[arrowhead=none];
            node3 -> node4;
            node4 -> node2[arrowhead=none];
            
            process2[shape=box, label="Clear Fault"];
            process2 -> node2;
            node2 -> end;
            
            // Exit
            end[shape=ellipse, label=end];
             
            node1[shape=point];
            node2[shape=point];
            node3[shape=point];
            node4[shape=point];
        }
    \enddot
    * < when comparing to protection upper limits, the operator must be ">" 
    * < there shall be no magic numbers (all constants must be defined on the .h file)
    */
    if(ui16Value > KU16FAULTLIMIT)                   
    {
        ui16DeassertTimer = getTimeMs();
        if(getElapsedTime(ui16AssertTimer) >= KU16VALIDATION_DELAY)             //!< when comparing to elapsed time, the operator must be ">=" 
        {
            mc_SetFaultFlag();
        }
    }
    else
    {
        ui16AssertTimer  = getTimeMs();
        if(getElapsedTime(ui16DeassertTimer) >= KU16VALIDATION_DELAY)
        {
            mc_ClrFaultFlag();
        }   
    }
}

/*******************************************************************************//**
* \brief State Diagrams shall be used to show distinct state behavior
*
* > This is an example of a generic system state machine
* > <BR><BR>
* > **Syntax:**<BR>
* >     showStateCharts(onState)
* > <BR><BR>
* > **Parameters:**<BR>
* >     onState - could either be TRUE/FALSE to represent on of off state of the system
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void showStateCharts(bool_t	blOnOffCommand)
{
    static enum  valid_states_e  eValidStates = E_INIT;
    
    if(eValidStates < E_ON)
    {
        eValidStates++;
    }
    
    /*! \brief **Generic System State Machine**
    \dot
        digraph state_chart {
            // set graph defaults
            graph[size="5,6",page="11.69,8.27",compound=true,rankdir=TB,center=true,orientation=portrait];
            edge[fontname="Helvetica",fontsize=8,arrowhead=vee];
            node[fontname="Helvetica",fontsize=10,shape=ellipse];

            //{ rank=same; Boot }
            //{ rank=same; Init; On; Off }
            //{ rank=same; Faulted }

            Init[style=filled,shape=circle,color=black,label="",width=.2,height=.2]; 

            Init -> Off [ label = "Entry" ];
            Off -> Off [ label = "Turned Off" ];
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
            if(TRUE == blOnOffCommand)
            {
                /*!
                    * when using the *'== operator'* to compare a variable to a constant, 
                    * it is best to place the constant on the left hand side of the operation
                    * because this prevents the possibility of assigning a value, instead of 
                    * comparing it, when one of the '=' sign gets accidentally omitted.
                    */
                if(TRUE == blBooted)
                {
                    eValidStates = E_ON;
                }
                /*! 
                    * for consistency, same rule applies for the *'!='* operator. 
                    */
                else if(TRUE != blBooted)
                {
                    eValidStates = E_BOOT;
                }
                else
                {
                    /*!< every **if-else if** statement must end with else condition even if it is doing nothing */
                    /* Do Nothing */                
                }
            }
            break;                          //!< all switch cases must have a break at the end. 
        }
        case E_BOOT:        
            blBooted = TRUE;                //!< if it is an intentional fallthrough, the purpose must be clearly documented
        case E_ON:          
        {
            if(TRUE == readFaultFlag())
            {
                eValidStates = E_FAULTED;            
            }
            else if(FALSE == blOnOffCommand)
            {
                eValidStates = E_OFF;  
            }
            break;
        }
        case E_FAULTED:
        {
            if(FALSE == readFaultFlag())
            {
                eValidStates = E_ON;
            }
            else
            {
                if(ui8FaultCounter++ > KU16_ALLOWEDFAULTS)
                {
                    eValidStates = E_OFF;
                }
            }
            break;
        }        
        default:                        //!< there should always have a default condition on every switch statements
        {
            eValidStates = E_OFF;
            break;
        }
    }
}

/* Private Functions */
    /* none */

/* end of _guidelines_designpatterns.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
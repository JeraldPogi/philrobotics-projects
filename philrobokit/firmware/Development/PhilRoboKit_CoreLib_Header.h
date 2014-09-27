/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Header.h"              |
* |:----          |:----                                        |
* |Description:   | Header for Anito setup routines             |
* |Revision:      | v01.01.00                                   |
* |Author:        | Giancarlo Acelajado                         |
* |               |                                             |
* |Dependencies:  |                                             |
*
* > This program is free software under the terms of the GNU General Public License
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                                                |
* |:----        |:----      |:----              |:----                                                      |
* |v00.00.01    |201112xx   |Giancarlo A.       |Library Initial Release                                    |
* |v00.00.02    |201204xx   |Giancarlo A.       |Modify CONST_DEFAULT_CONFIG_PORTA                          |
* |v00.00.03    |20120708   |ESCII              |Modified delayUs and delayMs to disable timer 1 peripheral |
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture                  |
* |v01.00.01    |20130321   |ESC II             |Moved delay macro to compiler specific header              |
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning                       |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_HEADER_H__
#define __PHILROBOKIT_HEADER_H__

/* Include .h Library Files */
#include "PhilRoboKit_HW_Config.h"

/* User Configuration Definitions */
/* SPLINT Static Analysis */
#if defined S_SPLINT_S
#include "compilers\htc\htc_pic_SPLint.h"           /* Suppress SPLint Unrecognized ID Errors */

/* Normal Compile Path */
#else

/* remove the comment to enable */
#define USE_ADC
#define USE_UART
#define USE_INTERRUPT
#define USE_8BIT_TIMER
#if defined USE_8BIT_TIMER
#define USE_PWM
#endif
#define USE_16BIT_TIMER
#define PHILROBOKIT_LITE

#if defined(HI_TECH_C)

#if (__PHR_CONTROLLER__==__MCU_PIC16__)
/* Anito Rev0 */
#if defined(_16F877A)
#include "compilers\htc\htc_16f87xa.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000     /* 20MHz Crystal */
#endif
#else
#error Device not yet supported!!!
#endif

#elif (__PHR_CONTROLLER__==__MCU_PIC18__)
/* Anito Rev1 */
#if defined(_18F4520)
#include "compilers\htc\htc_18fxx20.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 32000000     /* 32MHz, 8Mhz Crystal + 4x PLL */
#endif

/* Unsupported Device */
#else
#error Device not yet supported!!!
#endif  /* MCU Part Compile Switch */

#else
#error Controller not yet supported!!!
#endif  /* Controller Family Compile Switch */

#elif defined(SDCC)
#if (__PHR_CONTROLLER__==__MCU_PIC16__)
#include <pic16regs.h>

/* Anito Rev0 */
#if defined(__SDCC_PIC16F877A)
#include "compilers\sdcc\sdcc_pic16.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000     /* 20MHz Crystal */
#endif
#else
#error Device not yet supported!!!
#endif

#elif (__PHR_CONTROLLER__==__MCU_PIC18__)
#include <pic18fregs.h>

/* Anito Rev1 */
#if defined(__SDCC_PIC18F4520)
#include "compilers\sdcc\sdcc_pic18.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 32000000     /* 32MHz, 8Mhz Crystal + 4x PLL */
#endif

/* Unsupported Device */
#else
#error Device not yet supported!!!
#endif  /* MCU Part Compile Switch */

#else
#error Controller not yet supported!!!
#endif  /* Controller Family Compile Switch */

#else
#error Compiler not yet supported!!!

#endif  /* Compiler Compile Switch */

#endif  /* Test Compile Switch */

#if (__PHR_BOARD__==__HW_PHR_ANITO__)
#include "corelib_masterlib.h"

#include "hal_timer.h"
#include "corelib_basetimer.h"

#include "hal_gpio.h"
#include "corelib_gpio.h"

#if defined (USE_ADC)
#include "hal_adc.h"
#include "corelib_adc.h"
#endif

#if defined (USE_UART)
#include "hal_uart.h"
#include "corelib_uart.h"
#endif

#if defined (USE_INTERRUPT)
#include "hal_user_interrupt.h"
#include "corelib_user_interrupt.h"
#endif

#if defined (USE_8BIT_TIMER)
#include "hal_8bit_timer.h"
#include "corelib_8bit_timer.h"
#endif

#if defined (USE_PWM)
#include "hal_pwm.h"
#include "corelib_pwm.h"
#include "corelib_dac.h"
#endif

#if defined (USE_16BIT_TIMER)
#include "hal_16bit_timer.h"
#include "corelib_16bit_timer.h"
#endif

#else
#error Board not yet supported!!!
#endif

/* Global Constants */
#ifndef TRUE
#define TRUE                                    (1==1)
#define FALSE                                   (1==0)
#endif

#define INPUT                                   (1)
#define OUTPUT                                  (0)
//#define ANALOG                                (1)

#define HIGH                                    (1)
#define LOW                                     (0)

/*@ignore@*/                                    // esc.comment SPLINT warns it is redefined but an #ifndef check has been made, must be a bug on SPLINT
#ifndef NULL
#define NULL                                    ('\0')
#endif
/*@end@*/

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
/* none */

#endif/* end of PhilRoboKit_CoreLib_Header.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


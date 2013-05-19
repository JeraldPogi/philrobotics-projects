#ifndef __corelib_basetimer_test_stub__
#define __corelib_basetimer_test_stub__

/* Board Configuration */
#define __MCU_PIC16__               (0)
#define __MCU_PIC18__               (1)

#define __PHR_CONTROLLER__          (__MCU_PIC16__)
//#define __PHR_CONTROLLER__          (__MCU_PIC18__)

#if (__PHR_CONTROLLER__ == __MCU_PIC18__)
#define _18F4520
#define _XTAL_FREQ                  8000000         /* 8MHz Crystal */
#else
#define _16F877A
#define _XTAL_FREQ                  20000000        /* 20MHz Crystal */
#define SHIFT_MULT                  2               // results must be x4
#endif

#include "PhilRoboKit_CoreLib_DataTypes.h"
#include "System.h"
#include "uCUnit-v1.0.h"
#include "corelib_basetimer.h"
/* mock definitions */
/* MCU Mock Registers */
struct bit_field
{
    uint8_t Bit0                   :1;
    uint8_t Bit1                   :1;
    uint8_t Bit2                   :1;
    uint8_t Bit3                   :1;
    uint8_t Bit4                   :1;
    uint8_t Bit5                   :1;
    uint8_t Bit6                   :1;
    uint8_t Bit7                   :1;
};
union MCU_MockReg
{
    uint8_t                        Reg;
    struct bit_field               Byte;
};

/* Define MCUREG(Template) */
//extern    union MCU_MockReg           [MCUREG];
//#define REGISTER_[MCUREG]         ([MCUREG].Reg)
//#define   BIT_[MCUREG]_[BIT7]         ([MCUREG].Byte.Bit7)
//#define   BIT_[MCUREG]_[BIT6]         ([MCUREG].Byte.Bit6)
//#define   BIT_[MCUREG]_[BIT5]         ([MCUREG].Byte.Bit5)
//#define   BIT_[MCUREG]_[BIT4]         ([MCUREG].Byte.Bit4)
//#define   BIT_[MCUREG]_[BIT3]         ([MCUREG].Byte.Bit3)
//#define   BIT_[MCUREG]_[BIT2]         ([MCUREG].Byte.Bit2)
//#define   BIT_[MCUREG]_[BIT1]         ([MCUREG].Byte.Bit1)
//#define   BIT_[MCUREG]_[BIT0]         ([MCUREG].Byte.Bit0)

/* mock functions and macro */
void callMockFunction(void);
void setMockFunctionReturnValue(int* reg, int value);
int getMockFunctionReturn(int* reg);

/* mock functions without return */
#define disableGlobalInt()              callMockFunction()
#define enableGlobalInt()               callMockFunction()

/* mock functions with return and input parameters */
extern int hal_getBaseTimerValue_return;
#define hal_getBaseTimerValue()         getMockFunctionReturn(&hal_getBaseTimerValue_return)

extern int get_gui16TimerMs_Value_return;
#define get_gui16TimerMs_Value()        getMockFunctionReturn(&get_gui16TimerMs_Value_return)

extern int getGlobalIntEnableStatus_return;
#define getGlobalIntEnableStatus()      getMockFunctionReturn(&getGlobalIntEnableStatus_return)

#endif

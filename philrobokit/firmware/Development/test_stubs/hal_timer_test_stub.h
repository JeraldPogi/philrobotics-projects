#ifndef __hal_timer_test_stub__
#define __hal_timer_test_stub__

/* Board Configuration */
#define __MCU_PIC16__               (0)
#define __MCU_PIC18__               (1)

#define __PHR_CONTROLLER__          (__MCU_PIC16__)
//#define __PHR_CONTROLLER__          (__MCU_PIC18__)

#if (__PHR_CONTROLLER__ == __MCU_PIC16__)
#define _16F877A
#define _XTAL_FREQ                  20000000        /* 20MHz Crystal */
#else
#define _18F4520
#define _XTAL_FREQ                  8000000         /* 8MHz Crystal */
#endif

#include "PhilRoboKit_CoreLib_DataTypes.h"
#include "System.h"
#include "uCUnit-v1.0.h"
#include "hal_timer.h"
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

/* Define OPTION_REG or T0CON */
extern  union MCU_MockReg           OPTION_REG; // or T0CON for the case of 18F4520
#define REGISTER_T0CON              (OPTION_REG.Reg)
#define BIT_T0CON_TMR0ON            (OPTION_REG.Byte.Bit7)
#define BIT_T0CON_T08BIT            (OPTION_REG.Byte.Bit6)
#define BIT_T0CON_T0CS              (OPTION_REG.Byte.Bit5)
#define BIT_T0CON_T0SE              (OPTION_REG.Byte.Bit4)
#define BIT_T0CON_PSA               (OPTION_REG.Byte.Bit3)
#define BIT_T0CON_PS2               (OPTION_REG.Byte.Bit2)
#define BIT_T0CON_PS1               (OPTION_REG.Byte.Bit1)
#define BIT_T0CON_PS0               (OPTION_REG.Byte.Bit0)

#define TMR0_PRESCALE_MASK  0x07            // Bit 0 to Bit 2

extern  union MCU_MockReg           TMR0L;
#define REGISTER_TMR0L              (TMR0L.Reg)

extern  union MCU_MockReg           TMR0H;
#define REGISTER_TMR0H              (TMR0H.Reg)

/* Define INTCON */
extern  union MCU_MockReg           INTCON;
#define REGISTER_INTCON             (INTCON.Reg)
#define BIT_INTCON_GIE              (INTCON.Byte.Bit7)
#define BIT_INTCON_PEIE             (INTCON.Byte.Bit6)
#define BIT_INTCON_TMR0IE           (INTCON.Byte.Bit5)
#define BIT_INTCON_INTE             (INTCON.Byte.Bit4)
#define BIT_INTCON_RBIE             (INTCON.Byte.Bit3)
#define BIT_INTCON_TMR0IF           (INTCON.Byte.Bit2)
#define BIT_INTCON_INTF             (INTCON.Byte.Bit1)
#define BIT_INTCON_RBIF             (INTCON.Byte.Bit0)

/* mock functions and macro */
void callMockFunction(void);
void setMockFunctionReturnValue(int* reg, int value);
int getMockFunctionReturn(int* reg);

/* mock functions without return */

/* mock functions with return and input parameters */
extern uint16_t inc_gui16TimerUsMSB_Value_param1;
#define inc_gui16TimerUsMSB_Value(value)    (inc_gui16TimerUsMSB_Value_param1+=value)
#define get_gui16TimerUsMSB_Value()         (inc_gui16TimerUsMSB_Value_param1&0xFF00)

extern uint16_t inc_gui16TimerMs_Value_param1;
#define inc_gui16TimerMs_Value()            (inc_gui16TimerMs_Value_param1++)
#define get_gui16TimerMs_Value()            (inc_gui16TimerMs_Value_param1)


#endif

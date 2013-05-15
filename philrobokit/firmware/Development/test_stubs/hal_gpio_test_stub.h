#ifndef __hal_gpio_test_stub__
#define __hal_gpio_test_stub__

#include "PhilRoboKit_CoreLib_DataTypes.h"
#include "System.h"
#include "uCUnit-v1.0.h"
#include "hal_gpio.h"

/* mock definitions */
/* MCU Mock Registers */
struct bit_field
{
    uint8_t Bit0                    :1;
    uint8_t Bit1                    :1;
    uint8_t Bit2                    :1;
    uint8_t Bit3                    :1;
    uint8_t Bit4                    :1;
    uint8_t Bit5                    :1;
    uint8_t Bit6                    :1;
    uint8_t Bit7                    :1;
};

union MCU_MockReg
{
    uint8_t                         Reg;
    struct bit_field                Byte;
};

/* Controller Configurations */
#define __MCU_PIC16__               (0)
#define __MCU_PIC18__               (1)

#define __PHR_CONTROLLER__          (__MCU_PIC16__)
#define _16F877A
#define _XTAL_FREQ                  20000000     /* 20MHz Crystal */

/* Boolean Conditions */
#ifndef TRUE
#define TRUE                        (1==1)
#define FALSE                       (1==0)
#endif

#define INPUT                       (1)
#define OUTPUT                      (0)
//#define ANALOG                    (1)

#define HIGH                        TRUE
#define LOW                         FALSE

/* Define TRISA */
extern  union MCU_MockReg           TRISA;
#define REGISTER_TRISA              (TRISA.Reg)

/* Define TRISB */
extern  union MCU_MockReg           TRISB;
#define REGISTER_TRISB              (TRISB.Reg)

/* Define TRISC */
extern  union MCU_MockReg           TRISC;
#define REGISTER_TRISC              (TRISC.Reg)

/* Define TRISD */
extern  union MCU_MockReg           TRISD;
#define REGISTER_TRISD              (TRISD.Reg)

/* Define TRISE */
extern  union MCU_MockReg           TRISE;
#define REGISTER_TRISE              (TRISE.Reg)

/* Define PORTA */
extern  union MCU_MockReg           PORTA;
#define REGISTER_PORTA              (PORTA.Reg)

/* Define PORTB */
extern  union MCU_MockReg           PORTB;
#define REGISTER_PORTB              (PORTB.Reg)

/* Define PORTC */
extern  union MCU_MockReg           PORTC;
#define REGISTER_PORTC              (PORTC.Reg)

/* Define PORTD */
extern  union MCU_MockReg           PORTD;
#define REGISTER_PORTD              (PORTD.Reg)

/* Define PORTE */
extern  union MCU_MockReg           PORTE;
#define REGISTER_PORTE              (PORTE.Reg)

/* mock functions and macro */
void callMockFunction(void);
void setMockFunctionReturnValue(int* reg, int value);
int getMockFunctionReturn(int* reg);

/* mock functions without return */
//#define [function_name]()         callMockFunction()
/* mock functions with return and input parameters */
//extern int [function_name]_return;
//extern int [function_name]_param1;
//#define [function_name](param)        ([function_name]_param1 = param)

#endif

#ifndef __hal_uart_test_stub__
#define __hal_uart_test_stub__

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
#include "hal_uart.h"

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

/* USART - Serial Communication Peripheral */
/* Define TXSTA */
extern  union MCU_MockReg           TXSTA;
#define REGISTER_TXSTA              (TXSTA.Reg)
#define BIT_TXSTA_CSRC              (TXSTA.Byte.Bit7)
#define BIT_TXSTA_TX9               (TXSTA.Byte.Bit6)
#define BIT_TXSTA_TXEN              (TXSTA.Byte.Bit5)
#define BIT_TXSTA_SYNC              (TXSTA.Byte.Bit4)
//#define BIT_TXSTA_RESERVED        (TXSTA.Byte.Bit3)
#define BIT_TXSTA_BRGH              (TXSTA.Byte.Bit2)
#define BIT_TXSTA_TRMT              (TXSTA.Byte.Bit1)
#define BIT_TXSTA_TX9D              (TXSTA.Byte.Bit0)

/* Define RCSTA */
extern  union MCU_MockReg           RCSTA;
#define REGISTER_RCSTA              (RCSTA.Reg)
#define BIT_RCSTA_SPEN              (RCSTA.Byte.Bit7)
#define BIT_RCSTA_RX9               (RCSTA.Byte.Bit6)
#define BIT_RCSTA_SREN              (RCSTA.Byte.Bit5)
#define BIT_RCSTA_CREN              (RCSTA.Byte.Bit4)
#define BIT_RCSTA_ADDEN             (RCSTA.Byte.Bit3)
#define BIT_RCSTA_FERR              (RCSTA.Byte.Bit2)
#define BIT_RCSTA_OERR              (RCSTA.Byte.Bit1)
#define BIT_RCSTA_RX9D              (RCSTA.Byte.Bit0)

extern  union MCU_MockReg           TXREG;
#define REGISTER_TXREG              (TXREG.Reg)
extern  union MCU_MockReg           RCREG;
#define REGISTER_RCREG              (RCREG.Reg)
extern  union MCU_MockReg           SPBRG;
#define REGISTER_SPBRG              (SPBRG.Reg)

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

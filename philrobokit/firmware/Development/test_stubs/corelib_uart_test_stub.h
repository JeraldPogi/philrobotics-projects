#ifndef __corelib_uart_test_stub__
#define __corelib_uart_test_stub__
#include "PhilRoboKit_CoreLib_DataTypes.h"
#include "System.h"
#include "uCUnit-v1.0.h"
#include "corelib_uart.h"
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

#define K_RXREG_BUFF                (REGISTER_RCREG)
#define K_TXREG_BUFF                (REGISTER_TXREG)

/* mock functions and macro */
void callMockFunction(void);
void setMockFunctionReturnValue(int* reg, int value);
int getMockFunctionReturn(int* reg);
/* mock functions without return */
#define hal_setSerialBAUD(a)        callMockFunction()
#define hal_enableSerialTX()        callMockFunction()
#define hal_enableSerialRX()        callMockFunction()
#define hal_disableUARTTXInt()      callMockFunction()
#define hal_clrUARTTXIntFlag()      callMockFunction()
#define hal_enableUARTRXInt()       callMockFunction()
#define hal_clrUARTRXIntFlag()      callMockFunction()
#define hal_enableUARTTXInt()       callMockFunction()
#define hal_disableUARTRXInt()      callMockFunction()

/* mock functions with return and input parameters */
extern int hal_getUARTRXIntFlag_return;
#define hal_getUARTRXIntFlag()          ((bool_t)getMockFunctionReturn(&hal_getUARTRXIntFlag_return))

extern int hal_getUARTRXIntEnableStatus_return;
#define hal_getUARTRXIntEnableStatus()  ((bool_t)getMockFunctionReturn(&hal_getUARTRXIntEnableStatus_return))

extern int hal_getUARTTXIntFlag_return;
#define hal_getUARTTXIntFlag()          ((bool_t)getMockFunctionReturn(&hal_getUARTTXIntFlag_return))

extern int hal_getUARTTXIntEnableStatus_return;
#define hal_getUARTTXIntEnableStatus()  ((bool_t)getMockFunctionReturn(&hal_getUARTTXIntEnableStatus_return))

/* mock functions with return and input parameters */
//extern int [function_name]_return;
//#define [function_name]()         ((uint16_t)getMockFunctionReturn([function_name]_return))
//extern int [function_name]_param1;
//#define [function_name](param)        ([function_name]_param1 = param)
#endif

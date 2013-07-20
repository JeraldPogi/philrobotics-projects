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
/* Define PIR1 */
extern  union MCU_MockReg           PIR1;
#define REGISTER_PIR1               (PIR1.Reg)
#define BIT_PIR1_PSPIF              (PIR1.Byte.Bit7)
#define BIT_PIR1_ADIF               (PIR1.Byte.Bit6)
#define BIT_PIR1_RCIF               (PIR1.Byte.Bit5)
#define BIT_PIR1_TXIF               (PIR1.Byte.Bit4)
#define BIT_PIR1_SSPIF              (PIR1.Byte.Bit3)
#define BIT_PIR1_CCP1IF             (PIR1.Byte.Bit2)
#define BIT_PIR1_TMR2IF             (PIR1.Byte.Bit1)
#define BIT_PIR1_TMR1IF             (PIR1.Byte.Bit0)

/* Define PIE1 */
extern  union MCU_MockReg           PIE1;
#define REGISTER_PIE1               (PIE1.Reg)
#define BIT_PIE1_PSPIE              (PIE1.Byte.Bit7)
#define BIT_PIE1_ADIE               (PIE1.Byte.Bit6)
#define BIT_PIE1_RCIE               (PIE1.Byte.Bit5)
#define BIT_PIE1_TXIE               (PIE1.Byte.Bit4)
#define BIT_PIE1_SSPIE              (PIE1.Byte.Bit3)
#define BIT_PIE1_CCP1IE             (PIE1.Byte.Bit2)
#define BIT_PIE1_TMR2IE             (PIE1.Byte.Bit1)
#define BIT_PIE1_TMR1IE             (PIE1.Byte.Bit0)

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

/* TX Macro */
#define hal_enableUARTTXInt()       (BIT_PIE1_TXIE = 1)
#define hal_disableUARTTXInt()      (BIT_PIE1_TXIE = 0)
#define hal_getUARTTXIntEnableStatus()          ((BIT_PIE1_TXIE) ? true : false)

#define hal_clrUARTTXIntFlag()      (BIT_PIR1_TXIF = 0)
#define hal_getUARTTXIntFlag()      ((BIT_PIR1_TXIF) ? true : false)

/* RX Macro */
#define hal_enableUARTRXInt()       (BIT_PIE1_RCIE = 1)
#define hal_disableUARTRXInt()      (BIT_PIE1_RCIE = 0)
#define hal_getUARTRXIntEnableStatus()          ((BIT_PIE1_RCIE) ? true : false)

#define hal_clrUARTRXIntFlag()      (BIT_PIR1_RCIF = 0)
#define hal_getUARTRXIntFlag()      ((BIT_PIR1_RCIF) ? true : false)

#define hal_checkUARTRxError()      ((BIT_RCSTA_OERR) ? true : false)

#define hal_restartUARTRx()                     \
    BIT_RCSTA_CREN = 0;                         \
    BIT_RCSTA_CREN = 1                          // semi-collon intentionally omitted

/* mock functions without return */
#define hal_setSerialBAUD(a)        callMockFunction()
#define hal_enableSerialTX()        callMockFunction()
#define hal_enableSerialRX()        callMockFunction()

/* mock functions with return and input parameters */

/* mock functions with return and input parameters */
//extern int [function_name]_return;
//#define [function_name]()         ((uint16_t)getMockFunctionReturn([function_name]_return))
//extern int [function_name]_param1;
//#define [function_name](param)        ([function_name]_param1 = param)

/* module's private externs */
extern bool_t isSerialDataAvailable(void);
extern bool_t isSerialBufferFull(void);
#endif

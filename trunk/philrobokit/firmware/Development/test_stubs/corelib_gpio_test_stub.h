#ifndef __corelib_gpio_test_stub__
#define __corelib_gpio_test_stub__

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
#include "corelib_gpio.h"
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

#if (__PHR_CONTROLLER__==__MCU_PIC18__)
extern  union MCU_MockReg           LATA;
#define REGISTER_LATA               (LATA.Reg)

extern  union MCU_MockReg           LATB;
#define REGISTER_LATB               (LATB.Reg)

extern  union MCU_MockReg           LATC;
#define REGISTER_LATC               (LATC.Reg)

extern  union MCU_MockReg           LATD;
#define REGISTER_LATD               (LATD.Reg)

extern  union MCU_MockReg           LATE;
#define REGISTER_LATE               (LATE.Reg)
#endif
/* Port Value and Direction Defaults (from hal_gpio.h) */
/* Port A */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTA_OUT                       REGISTER_LATA
#else
#define PORTA_OUT                       REGISTER_PORTA
#endif
#define PORTA_VAL                       REGISTER_PORTA
#define PORTA_DIR                       REGISTER_TRISA

/* Port B */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTB_OUT                       REGISTER_LATB
#else
#define PORTB_OUT                       REGISTER_PORTB
#endif
#define PORTB_VAL                       REGISTER_PORTB
#define PORTB_DIR                       REGISTER_TRISB

/* Port C */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTC_OUT                       REGISTER_LATC
#else
#define PORTC_OUT                       REGISTER_PORTC
#endif
#define PORTC_VAL                       REGISTER_PORTC
#define PORTC_DIR                       REGISTER_TRISC

/* Port D */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTD_OUT                       REGISTER_LATD
#else
#define PORTD_OUT                       REGISTER_PORTD
#endif
#define PORTD_VAL                       REGISTER_PORTD
#define PORTD_DIR                       REGISTER_TRISD

/* Port E */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define PORTE_OUT                       REGISTER_LATE
#else
#define PORTE_OUT                       REGISTER_PORTE
#endif
#define PORTE_VAL                       REGISTER_PORTE
#define PORTE_DIR                       REGISTER_TRISE

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

void configPin(uint8_t ui8Pin, uint8_t ui8Direction);
void changePinState(uint8_t ui8Pin, enum PinStateOperation_et eOperation);
bool_t checkPinState(uint8_t ui8Pin);

#endif

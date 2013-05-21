#ifndef __corelib_adc_test_stub__
#define __corelib_adc_test_stub__

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
#include "corelib_adc.h"

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

enum DigitalPins_et
{
    D0, D1, D2, D3, D4, D5, D6,                         /* PORTC */
    D7, D8, D9, D10, D11, D12, D13,                     /* PORTB */
    D14, D15, D16, D17, D18, D19, D20,                  /* PORTA and PORTE (Analog Pins Configured as Digital Pins */
    D21, D22, D23, D24, D25, D26, D27, D28              /* PORTD, Ready to Fly Port */
};

enum adcModuleCfg_et
{
    CFG_ALLANALOG                                       = 0x00,
    CFG_ALLDIGITAL                                      = 0x07,
    CFG_EXTVREF                                         = 0x01
};

/* Define ADCON0 */
extern  union MCU_MockReg           ADCON0;
#define REGISTER_ADCON0             (ADCON0.Reg)
#define BIT_ADCON0_ADCS1            (ADCON0.Byte.Bit7)
#define BIT_ADCON0_ADCS0            (ADCON0.Byte.Bit6)
#define BIT_ADCON0_CHS2             (ADCON0.Byte.Bit5)
#define BIT_ADCON0_CHS1             (ADCON0.Byte.Bit4)
#define BIT_ADCON0_CHS0             (ADCON0.Byte.Bit3)
#define BIT_ADCON0_GO_DONE          (ADCON0.Byte.Bit2)
#define BIT_ADCON0_ADON             (ADCON0.Byte.Bit0)

#define ADC_CONVCLOCK_MASK  0xC0            // Bit 6 to 7
#define ADC_CHANSEL_MASK    0x38            // Bit 3 to 5

/* Define ADCON1 */
extern  union MCU_MockReg           ADCON1;
#define REGISTER_ADCON1             (ADCON1.Reg)
#define BIT_ADCON1_ADFM             (ADCON1.Byte.Bit7)
#define BIT_ADCON1_ADCS2            (ADCON1.Byte.Bit6)
#define BIT_ADCON1_PCFG3            (ADCON1.Byte.Bit3)
#define BIT_ADCON1_PCFG2            (ADCON1.Byte.Bit2)
#define BIT_ADCON1_PCFG1            (ADCON1.Byte.Bit1)
#define BIT_ADCON1_PCFG0            (ADCON1.Byte.Bit0)

#define ADC_CONFIG_MASK     0x0F            // Bit 0 to 3

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

/* Define ADRESH and ADRESL */
extern  union MCU_MockReg           ADRESH;
#define REGISTER_ADRESH             (ADRESH.Reg)
extern  union MCU_MockReg           ADRESL;
#define REGISTER_ADRESL             (ADRESL.Reg)

/* Define TRISA */
extern  union MCU_MockReg           TRISA;
#define REGISTER_TRISA              (TRISA.Reg)
#define BIT_TRISA_RA7               (TRISA.Byte.Bit7)
#define BIT_TRISA_RA6               (TRISA.Byte.Bit6)
#define BIT_TRISA_RA5               (TRISA.Byte.Bit5)
#define BIT_TRISA_RA4               (TRISA.Byte.Bit4)
#define BIT_TRISA_RA3               (TRISA.Byte.Bit3)
#define BIT_TRISA_RA2               (TRISA.Byte.Bit2)
#define BIT_TRISA_RA1               (TRISA.Byte.Bit1)
#define BIT_TRISA_RA0               (TRISA.Byte.Bit0)

/* Define TRISE */
extern  union MCU_MockReg           TRISE;
#define REGISTER_TRISE              (TRISE.Reg)
#define BIT_TRISE_RE7               (TRISE.Byte.Bit7)
#define BIT_TRISE_RE6               (TRISE.Byte.Bit6)
#define BIT_TRISE_RE5               (TRISE.Byte.Bit5)
#define BIT_TRISE_RE4               (TRISE.Byte.Bit4)
#define BIT_TRISE_RE3               (TRISE.Byte.Bit3)
#define BIT_TRISE_RE2               (TRISE.Byte.Bit2)
#define BIT_TRISE_RE1               (TRISE.Byte.Bit1)
#define BIT_TRISE_RE0               (TRISE.Byte.Bit0)

/* mock functions and macro */
void callMockFunction(void);
void setMockFunctionReturnValue(int* reg, int value);
int getMockFunctionReturn(int* reg);

/* taken from hal_adc.h */
#define hal_enableADCInt()                              (BIT_PIE1_ADIE = 1)
#define hal_disableADCInt()                             (BIT_PIE1_ADIE = 0)
#define hal_getADCIntEnableStatus()                     ((BIT_PIE1_ADIE) ? true : false)

#define hal_clrADCIntFlag()                             (BIT_PIR1_ADIF = 0)
#define hal_getADCIntFlag()                             ((BIT_PIR1_ADIF) ? true : false)

#define hal_enableADC()                                 (BIT_ADCON0_ADON = 1)
#define hal_disableADC()                                (BIT_ADCON0_ADON = 0)

#define hal_startADCConversion()                        (BIT_ADCON0_GO_DONE = 1)
#define hal_checkADCEndofConversion()                   ((BIT_ADCON0_GO_DONE) ? false : true)

#define hal_configADCPins(config)                       \
    REGISTER_ADCON1 &= ~ADC_CONFIG_MASK;                \
    REGISTER_ADCON1 |= (config&ADC_CONFIG_MASK)         // semi-collon intentionally omitted

#define hal_leftAligned()                               (BIT_ADCON1_ADFM = 0)
#define hal_rightAligned()                              (BIT_ADCON1_ADFM = 1)

//#define hal_setADCChannel(channel)                      \
//    REGISTER_ADCON0 &=~ADC_CHANSEL_MASK;                \
//    REGISTER_ADCON0 |= (channel<<3)&ADC_CHANSEL_MASK    // semi-collon intentionally omitted

#define hal_configADCPinsClock(config)                  \
    REGISTER_ADCON0 &=~ADC_CONVCLOCK_MASK;              \
    REGISTER_ADCON0 |= (config<<6)&ADC_CONVCLOCK_MASK;  \
    BIT_ADCON1_ADCS2 = (((config&0x04)>0) ? 1 : 0)      // semi-collon intentionally omitted

#define readADCResult()                                 ((((uint16_t)REGISTER_ADRESH<<8) + REGISTER_ADRESL) & 0x03FF)

/* mock functions without return */
#define configLowLvlADC()                   callMockFunction()
#define mc_makeInput(pin)                   callMockFunction()
#define delayUs(delay)                      callMockFunction()

/* mock functions with return and input parameters */
extern int getMs_return;
#define getMs()                             ((uint16_t)getMockFunctionReturn(&getMs_return))
#define getElapsedMs(stamp)                 ((uint16_t)getMs() - stamp)

extern int hal_setADCChannel_param1;
#define hal_setADCChannel(channel)          (hal_setADCChannel_param1 = channel)

#endif

#ifndef __hal_adc_test_stub__
#define __hal_adc_test_stub__

#include "PhilRoboKit_CoreLib_DataTypes.h"
#include "System.h"
#include "uCUnit-v1.0.h"
#include "hal_adc.h"

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

/* mock functions and macro */
//

#endif

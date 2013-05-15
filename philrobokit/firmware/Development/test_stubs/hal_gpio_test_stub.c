#include "hal_gpio_test_stub.h"

/* uCUnit Globals */
static int ucunit_checks_failed = 0;                /* Numer of failed checks */
static int ucunit_checks_passed = 0;                /* Number of passed checks */
static int ucunit_testcases_failed = 0;             /* Number of failed test cases */
static int ucunit_testcases_passed = 0;             /* Number of passed test cases */
static int ucunit_testcases_failed_checks = 0;  /* Number of failed checks in a testcase */
static int ucunit_checklist_failed_checks = 0;  /* Number of failed checks in a checklist */
static int ucunit_action = UCUNIT_ACTION_WARNING;  /* Action to take if a check fails */
static int ucunit_checkpoints[UCUNIT_MAX_TRACEPOINTS]; /* Max. number of tracepoints */
static int ucunit_index = 0;                        /* Tracepoint index */

/* mock definitions */
/* MCU Mock Registers */
/* Define TRISA */
union MCU_MockReg               TRISA;
#define BITPOS_TRISA_RA7            (7)
#define BITPOS_TRISA_RA6            (6)
#define BITPOS_TRISA_RA5            (5)
#define BITPOS_TRISA_RA4            (4)
#define BITPOS_TRISA_RA3            (3)
#define BITPOS_TRISA_RA2            (2)
#define BITPOS_TRISA_RA1            (1)
#define BITPOS_TRISA_RA0            (0)

/* Define TRISB */
union MCU_MockReg               TRISB;
#define BITPOS_TRISB_RB7            (7)
#define BITPOS_TRISB_RB6            (6)
#define BITPOS_TRISB_RB5            (5)
#define BITPOS_TRISB_RB4            (4)
#define BITPOS_TRISB_RB3            (3)
#define BITPOS_TRISB_RB2            (2)
#define BITPOS_TRISB_RB1            (1)
#define BITPOS_TRISB_RB0            (0)

/* Define TRISC */
union MCU_MockReg               TRISC;
#define BITPOS_TRISC_RC7            (7)
#define BITPOS_TRISC_RC6            (6)
#define BITPOS_TRISC_RC5            (5)
#define BITPOS_TRISC_RC4            (4)
#define BITPOS_TRISC_RC3            (3)
#define BITPOS_TRISC_RC2            (2)
#define BITPOS_TRISC_RC1            (1)
#define BITPOS_TRISC_RC0            (0)

/* Define TRISD */
union MCU_MockReg               TRISD;
#define BITPOS_TRISD_RD7            (7)
#define BITPOS_TRISD_RD6            (6)
#define BITPOS_TRISD_RD5            (5)
#define BITPOS_TRISD_RD4            (4)
#define BITPOS_TRISD_RD3            (3)
#define BITPOS_TRISD_RD2            (2)
#define BITPOS_TRISD_RD1            (1)
#define BITPOS_TRISD_RD0            (0)

/* Define TRISE */
union MCU_MockReg               TRISE;
#define BITPOS_TRISE_RE7            (7)
#define BITPOS_TRISE_RE6            (6)
#define BITPOS_TRISE_RE5            (5)
#define BITPOS_TRISE_RE4            (4)
#define BITPOS_TRISE_RE3            (3)
#define BITPOS_TRISE_RE2            (2)
#define BITPOS_TRISE_RE1            (1)
#define BITPOS_TRISE_RE0            (0)

/* Define PORTA */
union MCU_MockReg               PORTA;
#define BITPOS_PORTA_RA7            (7)
#define BITPOS_PORTA_RA6            (6)
#define BITPOS_PORTA_RA5            (5)
#define BITPOS_PORTA_RA4            (4)
#define BITPOS_PORTA_RA3            (3)
#define BITPOS_PORTA_RA2            (2)
#define BITPOS_PORTA_RA1            (1)
#define BITPOS_PORTA_RA0            (0)

/* Define PORTB */
union MCU_MockReg               PORTB;
#define BITPOS_PORTB_RB7            (7)
#define BITPOS_PORTB_RB6            (6)
#define BITPOS_PORTB_RB5            (5)
#define BITPOS_PORTB_RB4            (4)
#define BITPOS_PORTB_RB3            (3)
#define BITPOS_PORTB_RB2            (2)
#define BITPOS_PORTB_RB1            (1)
#define BITPOS_PORTB_RB0            (0)

/* Define PORTC */
union MCU_MockReg               PORTC;
#define BITPOS_PORTC_RC7            (7)
#define BITPOS_PORTC_RC6            (6)
#define BITPOS_PORTC_RC5            (5)
#define BITPOS_PORTC_RC4            (4)
#define BITPOS_PORTC_RC3            (3)
#define BITPOS_PORTC_RC2            (2)
#define BITPOS_PORTC_RC1            (1)
#define BITPOS_PORTC_RC0            (0)

/* Define PORTD */
union MCU_MockReg               PORTD;
#define BITPOS_PORTD_RD7            (7)
#define BITPOS_PORTD_RD6            (6)
#define BITPOS_PORTD_RD5            (5)
#define BITPOS_PORTD_RD4            (4)
#define BITPOS_PORTD_RD3            (3)
#define BITPOS_PORTD_RD2            (2)
#define BITPOS_PORTD_RD1            (1)
#define BITPOS_PORTD_RD0            (0)

/* Define PORTE */
union MCU_MockReg               PORTE;
#define BITPOS_PORTE_RE7            (7)
#define BITPOS_PORTE_RE6            (6)
#define BITPOS_PORTE_RE5            (5)
#define BITPOS_PORTE_RE4            (4)
#define BITPOS_PORTE_RE3            (3)
#define BITPOS_PORTE_RE2            (2)
#define BITPOS_PORTE_RE1            (1)
#define BITPOS_PORTE_RE0            (0)

//
//int [function_name]_return=0;

/* module's private externs */
//extern int [variable_name];

/* proxy for functions without return */
void callMockFunction(void)
{
    ;
}

/* proxy for functions with return */
void setMockFunctionReturnValue(int* reg, int value)
{
    *reg = value;
}

int getMockFunctionReturn(int* reg)
{
    return *reg;
}

/* unit tests */
static TEST_configPin(void)
{
    //    D0, D1, D2, D3, D4, D5, D6,                         /* PORTC */
    //    D7, D8, D9, D10, D11, D12, D13,                     /* PORTB */
    //    D14, D15, D16, D17, D18, D19, D20,                  /* PORTA and PORTE (Analog Pins Configured as Digital Pins */
    //    D21, D22, D23, D24, D25, D26, D27, D28              /* PORTD, Ready to Fly Port */
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("configPin: Configure All GPIO Pins as Inputs");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    UCUNIT_CheckIsEqual(REGISTER_TRISA, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISB, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISC, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISD, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISE, 0x00);
    /* Set all pins to inputs */
    configPin(D0, INPUT);
    configPin(D1, INPUT);
    configPin(D2, INPUT);
    configPin(D3, INPUT);
    configPin(D4, INPUT);
    configPin(D5, INPUT);
    configPin(D6, INPUT);
    configPin(D7, INPUT);
    configPin(D8, INPUT);
    configPin(D9, INPUT);
    configPin(D10, INPUT);
    configPin(D11, INPUT);
    configPin(D12, INPUT);
    configPin(D13, INPUT);
    configPin(D14, INPUT);
    configPin(D15, INPUT);
    configPin(D16, INPUT);
    configPin(D17, INPUT);
    configPin(D18, INPUT);
    configPin(D19, INPUT);
    configPin(D20, INPUT);
    configPin(D21, INPUT);
    configPin(D22, INPUT);
    configPin(D23, INPUT);
    configPin(D24, INPUT);
    configPin(D25, INPUT);
    configPin(D26, INPUT);
    configPin(D27, INPUT);
    configPin(D28, INPUT);
    /* Refer to hal_gpio.h for used gpio and assignments */
    UCUNIT_CheckIsEqual(REGISTER_TRISA, 0x27);
    UCUNIT_CheckIsEqual(REGISTER_TRISB, 0x3F);
    UCUNIT_CheckIsEqual(REGISTER_TRISC, 0xFF);
    UCUNIT_CheckIsEqual(REGISTER_TRISD, 0xFF);
    UCUNIT_CheckIsEqual(REGISTER_TRISE, 0x07);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(8);
    UCUNIT_CheckTracepointNonCoverage(9);                   // only for outputs
    UCUNIT_CheckTracepointNonCoverage(10);                  // null pointer, must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("configPin: Configure All GPIO Pins as Outputs");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    /* Set all pins to inputs */
    configPin(D0, OUTPUT);
    configPin(D1, OUTPUT);
    configPin(D2, OUTPUT);
    configPin(D3, OUTPUT);
    configPin(D4, OUTPUT);
    configPin(D5, OUTPUT);
    configPin(D6, OUTPUT);
    configPin(D7, OUTPUT);
    configPin(D8, OUTPUT);
    configPin(D9, OUTPUT);
    configPin(D10, OUTPUT);
    configPin(D11, OUTPUT);
    configPin(D12, OUTPUT);
    configPin(D13, OUTPUT);
    configPin(D14, OUTPUT);
    configPin(D15, OUTPUT);
    configPin(D16, OUTPUT);
    configPin(D17, OUTPUT);
    configPin(D18, OUTPUT);
    configPin(D19, OUTPUT);
    configPin(D20, OUTPUT);
    configPin(D21, OUTPUT);
    configPin(D22, OUTPUT);
    configPin(D23, OUTPUT);
    configPin(D24, OUTPUT);
    configPin(D25, OUTPUT);
    configPin(D26, OUTPUT);
    configPin(D27, OUTPUT);
    configPin(D28, OUTPUT);
    /* Refer to hal_gpio.h for used gpio and assignments */
    UCUNIT_CheckIsEqual(REGISTER_TRISA, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISB, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISC, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISD, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_TRISE, 0x00);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(8);                   // only for inputs
    UCUNIT_CheckTracepointCoverage(9);
    UCUNIT_CheckTracepointNonCoverage(10);                  // null pointer, must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_changePinState(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("changePinState: Configure All Output Pins High");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    UCUNIT_CheckIsEqual(REGISTER_PORTA, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTB, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTC, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTD, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTE, 0x00);
    /* Set all pins to high */
    changePinState(D0, SET_PIN);
    changePinState(D1, SET_PIN);
    changePinState(D2, SET_PIN);
    changePinState(D3, SET_PIN);
    changePinState(D4, SET_PIN);
    changePinState(D5, SET_PIN);
    changePinState(D6, SET_PIN);
    changePinState(D7, SET_PIN);
    changePinState(D8, SET_PIN);
    changePinState(D9, SET_PIN);
    changePinState(D10, SET_PIN);
    changePinState(D11, SET_PIN);
    changePinState(D12, SET_PIN);
    changePinState(D13, SET_PIN);
    changePinState(D14, SET_PIN);
    changePinState(D15, SET_PIN);
    changePinState(D16, SET_PIN);
    changePinState(D17, SET_PIN);
    changePinState(D18, SET_PIN);
    changePinState(D19, SET_PIN);
    changePinState(D20, SET_PIN);
    changePinState(D21, SET_PIN);
    changePinState(D22, SET_PIN);
    changePinState(D23, SET_PIN);
    changePinState(D24, SET_PIN);
    changePinState(D25, SET_PIN);
    changePinState(D26, SET_PIN);
    changePinState(D27, SET_PIN);
    changePinState(D28, SET_PIN);
    /* Check if all output pins are high (Refer to hal_gpio.h for used gpio and assignments) */
    UCUNIT_CheckIsEqual(REGISTER_PORTA, 0x27);
    UCUNIT_CheckIsEqual(REGISTER_PORTB, 0x3F);
    UCUNIT_CheckIsEqual(REGISTER_PORTC, 0xFF);
    UCUNIT_CheckIsEqual(REGISTER_PORTD, 0xFF);
    UCUNIT_CheckIsEqual(REGISTER_PORTE, 0x07);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(8);
    UCUNIT_CheckTracepointNonCoverage(9);                   // for clear pin
    UCUNIT_CheckTracepointNonCoverage(10);                  // for toggle pin
    UCUNIT_CheckTracepointNonCoverage(11);                  // null pointer, must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("changePinState: Configure All Output Pins Low");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    /* Set all pins to low */
    changePinState(D0, CLR_PIN);
    changePinState(D1, CLR_PIN);
    changePinState(D2, CLR_PIN);
    changePinState(D3, CLR_PIN);
    changePinState(D4, CLR_PIN);
    changePinState(D5, CLR_PIN);
    changePinState(D6, CLR_PIN);
    changePinState(D7, CLR_PIN);
    changePinState(D8, CLR_PIN);
    changePinState(D9, CLR_PIN);
    changePinState(D10, CLR_PIN);
    changePinState(D11, CLR_PIN);
    changePinState(D12, CLR_PIN);
    changePinState(D13, CLR_PIN);
    changePinState(D14, CLR_PIN);
    changePinState(D15, CLR_PIN);
    changePinState(D16, CLR_PIN);
    changePinState(D17, CLR_PIN);
    changePinState(D18, CLR_PIN);
    changePinState(D19, CLR_PIN);
    changePinState(D20, CLR_PIN);
    changePinState(D21, CLR_PIN);
    changePinState(D22, CLR_PIN);
    changePinState(D23, CLR_PIN);
    changePinState(D24, CLR_PIN);
    changePinState(D25, CLR_PIN);
    changePinState(D26, CLR_PIN);
    changePinState(D27, CLR_PIN);
    changePinState(D28, CLR_PIN);
    /* Check if all output pins are low (Refer to hal_gpio.h for used gpio and assignments) */
    UCUNIT_CheckIsEqual(REGISTER_PORTA, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTB, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTC, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTD, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTE, 0x00);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(8);                   // for set pin
    UCUNIT_CheckTracepointCoverage(9);
    UCUNIT_CheckTracepointNonCoverage(10);                  // for toggle pin
    UCUNIT_CheckTracepointNonCoverage(11);                  // null pointer, must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("changePinState: Toggle Output Pins State");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    /* Toggle all pins states */
    changePinState(D0, TOGGLE_PIN);
    changePinState(D1, TOGGLE_PIN);
    changePinState(D2, TOGGLE_PIN);
    changePinState(D3, TOGGLE_PIN);
    changePinState(D4, TOGGLE_PIN);
    changePinState(D5, TOGGLE_PIN);
    changePinState(D6, TOGGLE_PIN);
    changePinState(D7, TOGGLE_PIN);
    changePinState(D8, TOGGLE_PIN);
    changePinState(D9, TOGGLE_PIN);
    changePinState(D10, TOGGLE_PIN);
    changePinState(D11, TOGGLE_PIN);
    changePinState(D12, TOGGLE_PIN);
    changePinState(D13, TOGGLE_PIN);
    changePinState(D14, TOGGLE_PIN);
    changePinState(D15, TOGGLE_PIN);
    changePinState(D16, TOGGLE_PIN);
    changePinState(D17, TOGGLE_PIN);
    changePinState(D18, TOGGLE_PIN);
    changePinState(D19, TOGGLE_PIN);
    changePinState(D20, TOGGLE_PIN);
    changePinState(D21, TOGGLE_PIN);
    changePinState(D22, TOGGLE_PIN);
    changePinState(D23, TOGGLE_PIN);
    changePinState(D24, TOGGLE_PIN);
    changePinState(D25, TOGGLE_PIN);
    changePinState(D26, TOGGLE_PIN);
    changePinState(D27, TOGGLE_PIN);
    changePinState(D28, TOGGLE_PIN);
    /* Check if all output pins are high (Refer to hal_gpio.h for used gpio and assignments) */
    UCUNIT_CheckIsEqual(REGISTER_PORTA, 0x27);
    UCUNIT_CheckIsEqual(REGISTER_PORTB, 0x3F);
    UCUNIT_CheckIsEqual(REGISTER_PORTC, 0xFF);
    UCUNIT_CheckIsEqual(REGISTER_PORTD, 0xFF);
    UCUNIT_CheckIsEqual(REGISTER_PORTE, 0x07);
    /* Toggle for the 2nd time all pins states */
    changePinState(D0, TOGGLE_PIN);
    changePinState(D1, TOGGLE_PIN);
    changePinState(D2, TOGGLE_PIN);
    changePinState(D3, TOGGLE_PIN);
    changePinState(D4, TOGGLE_PIN);
    changePinState(D5, TOGGLE_PIN);
    changePinState(D6, TOGGLE_PIN);
    changePinState(D7, TOGGLE_PIN);
    changePinState(D8, TOGGLE_PIN);
    changePinState(D9, TOGGLE_PIN);
    changePinState(D10, TOGGLE_PIN);
    changePinState(D11, TOGGLE_PIN);
    changePinState(D12, TOGGLE_PIN);
    changePinState(D13, TOGGLE_PIN);
    changePinState(D14, TOGGLE_PIN);
    changePinState(D15, TOGGLE_PIN);
    changePinState(D16, TOGGLE_PIN);
    changePinState(D17, TOGGLE_PIN);
    changePinState(D18, TOGGLE_PIN);
    changePinState(D19, TOGGLE_PIN);
    changePinState(D20, TOGGLE_PIN);
    changePinState(D21, TOGGLE_PIN);
    changePinState(D22, TOGGLE_PIN);
    changePinState(D23, TOGGLE_PIN);
    changePinState(D24, TOGGLE_PIN);
    changePinState(D25, TOGGLE_PIN);
    changePinState(D26, TOGGLE_PIN);
    changePinState(D27, TOGGLE_PIN);
    changePinState(D28, TOGGLE_PIN);
    /* Check if all output pins are low (Refer to hal_gpio.h for used gpio and assignments) */
    UCUNIT_CheckIsEqual(REGISTER_PORTA, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTB, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTC, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTD, 0x00);
    UCUNIT_CheckIsEqual(REGISTER_PORTE, 0x00);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(8);                   // for set pin
    UCUNIT_CheckTracepointNonCoverage(9);                   // for clear pin
    UCUNIT_CheckTracepointCoverage(10);
    UCUNIT_CheckTracepointNonCoverage(11);                  // null pointer, must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_checkPinState(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("checkPinState: Check Input Pin's High State");
    UCUNIT_ResetTracepointCoverage();
    /* Set All Pins to High */
    REGISTER_PORTA = 0x27;
    REGISTER_PORTB = 0x3F;
    REGISTER_PORTC = 0xFF;
    REGISTER_PORTD = 0xFF;
    REGISTER_PORTE = 0x07;
    /* Perform Unit Test */
    UCUNIT_CheckIsEqual(checkPinState(D0), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D1), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D2), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D3), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D4), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D5), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D6), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D7), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D8), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D9), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D10), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D11), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D12), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D13), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D14), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D15), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D16), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D17), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D18), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D19), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D20), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D21), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D22), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D23), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D24), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D25), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D26), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D27), HIGH);
    UCUNIT_CheckIsEqual(checkPinState(D28), HIGH);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(8);
    UCUNIT_CheckTracepointNonCoverage(9);                   // for output low
    UCUNIT_CheckTracepointNonCoverage(10);                  // null pointer, must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("checkPinState: Check Input Pin's Low State");
    UCUNIT_ResetTracepointCoverage();
    /* Set All Pins to High */
    REGISTER_PORTA = 0x00;
    REGISTER_PORTB = 0x00;
    REGISTER_PORTC = 0x00;
    REGISTER_PORTD = 0x00;
    REGISTER_PORTE = 0x00;
    /* Perform Unit Test */
    UCUNIT_CheckIsEqual(checkPinState(D0), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D1), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D2), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D3), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D4), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D5), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D6), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D7), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D8), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D9), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D10), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D11), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D12), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D13), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D14), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D15), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D16), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D17), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D18), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D19), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D20), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D21), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D22), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D23), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D24), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D25), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D26), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D27), LOW);
    UCUNIT_CheckIsEqual(checkPinState(D28), LOW);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(8);                   // for output high
    UCUNIT_CheckTracepointCoverage(9);
    UCUNIT_CheckTracepointNonCoverage(10);                  // must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

/* test initialization */
void init()
{
    UCUNIT_ResetTracepointCoverage();
    UCUNIT_Init();
    UCUNIT_WriteString("\n**********************************************************************");
    UCUNIT_WriteString("\nName:     ");
    UCUNIT_WriteString("-hal_gpio- Module Testing");
    UCUNIT_WriteString("\nCompiled: ");
    UCUNIT_WriteString(__DATE__);
    UCUNIT_WriteString("\nTime:     ");
    UCUNIT_WriteString(__TIME__);
    UCUNIT_WriteString("\nVersion:  ");
    UCUNIT_WriteString(UCUNIT_VERSION);
    UCUNIT_WriteString("\n**********************************************************************");
}

/* test super loop */
void program()
{
    TEST_configPin();
    TEST_changePinState();
    TEST_checkPinState();
    UCUNIT_WriteSummary();
    UCUNIT_Safestate();
}

/* application main */
int main(void)
{
    init();

    while(1)
    {
        program();
    }
}

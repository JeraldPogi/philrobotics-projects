#include "corelib_gpio_test_stub.h"
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

#if (__PHR_CONTROLLER__==__MCU_PIC18__)
union MCU_MockReg               LATA;
union MCU_MockReg               LATB;
union MCU_MockReg               LATC;
union MCU_MockReg               LATD;
union MCU_MockReg               LATE;
#endif

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
static TEST_setupGpio(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("setupGpio: Test GPIO Initialization");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    setupGpio();                                                // call function to be tested
    /* Check ADC are set as inputs */
    UCUNIT_CheckIsEqual(0x27, (REGISTER_TRISA&0x27));
    UCUNIT_CheckIsEqual(0x07, (REGISTER_TRISE&0x07));
    /* Check SW1 to SW4 are configured as inputs */
    UCUNIT_CheckIsEqual(0x0C, (REGISTER_TRISD&0x0C));           // RD2 - RD3
    /* Check LED1 to LED4 are configured as outputs */
    UCUNIT_CheckIsEqual(0x00, (REGISTER_TRISD&0xF0));           // RD4 - RD7
    UCUNIT_CheckIsEqual(0x00, (REGISTER_PORTD&0xF0));           // RD4 - RD7
    /* Check Buzzer is configured as output */
    UCUNIT_CheckIsEqual(0x00, (REGISTER_TRISD&0x02));           // RD1
    UCUNIT_CheckIsEqual(0x00, (REGISTER_PORTD&0x02));           // RD1
    /* Check Servo Port is configured as output */
    UCUNIT_CheckIsEqual(0x00, (REGISTER_TRISD&0x01));           // RD0
    UCUNIT_CheckIsEqual(0x00, (REGISTER_PORTD&0x01));           // RD0
    /* Check UART RX is input */
    UCUNIT_CheckIsEqual(0x80, (REGISTER_TRISC&0x80));           // RC7
    /* Check UART TX is output */
    UCUNIT_CheckIsEqual(0x00, (REGISTER_TRISC&0x40));           // RC6
    UCUNIT_CheckIsEqual(0x40, (REGISTER_PORTC&0x40));           // RC6
    /* Check if the rest are configured as outputs */
    UCUNIT_CheckIsEqual(0x00, REGISTER_TRISB);
    UCUNIT_CheckIsEqual(0x00, REGISTER_PORTB);
    UCUNIT_CheckIsEqual(0x00, (REGISTER_TRISC&0x3F));
    UCUNIT_CheckIsEqual(0x00, (REGISTER_PORTC&0x3F));
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
    UCUNIT_WriteString("-corelib_gpio- Unit Testing");
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
    TEST_setupGpio();
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

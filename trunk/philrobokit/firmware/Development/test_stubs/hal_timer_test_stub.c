#include "hal_timer_test_stub.h"
/* uCUnit Globals */
static int ucunit_checks_failed = 0;                /* Numer of failed checks */
static int ucunit_checks_passed = 0;                /* Number of passed checks */
static int ucunit_testcases_failed = 0;             /* Number of failed test cases */
static int ucunit_testcases_passed = 0;             /* Number of passed test cases */
static int ucunit_testcases_failed_checks = 0;      /* Number of failed checks in a testcase */
static int ucunit_checklist_failed_checks = 0;      /* Number of failed checks in a checklist */
static int ucunit_action = UCUNIT_ACTION_WARNING;   /* Action to take if a check fails */
static int ucunit_checkpoints[UCUNIT_MAX_TRACEPOINTS]; /* Max. number of tracepoints */
static int ucunit_index = 0;                        /* Tracepoint index */
/* mock definitions */
/* MCU Mock Registers */
/* Define OPTION_REG or T0CON */
union MCU_MockReg               OPTION_REG;
#define BITPOS_T0CON_TMR0ON         (7)
#define BITPOS_T0CON_T08BIT         (6)
#define BITPOS_T0CON_T0CS           (5)
#define BITPOS_T0CON_T0SE           (4)
#define BITPOS_T0CON_PSA            (3)
#define BITPOS_T0CON_PS2            (2)
#define BITPOS_T0CON_PS1            (1)
#define BITPOS_T0CON_PS0            (0)

union MCU_MockReg               TMR0L;
union MCU_MockReg               TMR0H;

/* Define INTCON */
union MCU_MockReg               INTCON;
#define BITPOS_INTCON_GIE           (7)
#define BITPOS_INTCON_PEIE          (6)
#define BITPOS_INTCON_TMR0IE        (5)
#define BITPOS_INTCON_INTE          (4)
#define BITPOS_INTCON_RBIE          (3)
#define BITPOS_INTCON_TMR0IF        (2)
#define BITPOS_INTCON_INTF          (1)
#define BITPOS_INTCON_RBIF          (0)

static uint16_t inc_gui16TimerUsMSB_Value_param1=0;
static uint16_t inc_gui16TimerMs_Value_param1=0;

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
static TEST_setupTimer(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("setupTimer: Check Prescaler");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    setupTimer();                       // call function to be tested
#if(__PHR_CONTROLLER__ == __MCU_PIC18__)
    /* Check Prescaler Content @ 8Mhz 000(div2) */
    UCUNIT_CheckIsBitClear(REGISTER_T0CON,BITPOS_T0CON_PS0);
    UCUNIT_CheckIsBitClear(REGISTER_T0CON,BITPOS_T0CON_PS1);
    UCUNIT_CheckIsBitClear(REGISTER_T0CON,BITPOS_T0CON_PS2);
    UCUNIT_CheckIsBitSet(REGISTER_T0CON,BITPOS_T0CON_TMR0ON);
    UCUNIT_CheckIsBitSet(REGISTER_T0CON,BITPOS_T0CON_T08BIT);
#else
    /* Check Prescaler Content @ 20Mhz 011(div16) */
    UCUNIT_CheckIsBitSet(REGISTER_T0CON,BITPOS_T0CON_PS0);
    UCUNIT_CheckIsBitSet(REGISTER_T0CON,BITPOS_T0CON_PS1);
    UCUNIT_CheckIsBitClear(REGISTER_T0CON,BITPOS_T0CON_PS2);
#endif
    UCUNIT_CheckIsBitClear(REGISTER_T0CON,BITPOS_T0CON_T0CS);
    UCUNIT_CheckIsBitClear(REGISTER_T0CON,BITPOS_T0CON_PSA);
    UCUNIT_CheckIsEqual(0x00,REGISTER_TMR0L);
    /* Check if Interrupt is Enabled */
    UCUNIT_CheckIsBitClear(REGISTER_INTCON,BITPOS_INTCON_TMR0IF);
    UCUNIT_CheckIsBitSet(REGISTER_INTCON,BITPOS_INTCON_TMR0IE);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_timerISR(void)
{
    uint16_t ui16Counter;
#if(__PHR_CONTROLLER__ == __MCU_PIC18__)
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("timerISR: Test 256uS increment");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableBaseTimerInt();
    REGISTER_TMR0L = 0;
    UCUNIT_CheckIsEqual(0x0000, hal_getBaseTimerValue());

    for(ui16Counter = 1; ui16Counter <= 256; ui16Counter++)
    {
        REGISTER_TMR0L++;                                   // simulate freerunning timer

        if(0 == REGISTER_TMR0L)
        {
            BIT_INTCON_TMR0IF = true;
            timerISR();                                     // call function to be tested
        }
    }

    /* Check Register Content */
    UCUNIT_CheckIsEqual(0x0100, hal_getBaseTimerValue());   // MSB has incremented
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("timerISR: Test 1mS increment");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableBaseTimerInt();
    UCUNIT_CheckIsEqual(0x0000, get_gui16TimerMs_Value());

    for(ui16Counter = 1; ui16Counter <= (3*(256)); ui16Counter++)
    {
        REGISTER_TMR0L++;                                   // simulate freerunning timer continued up to the 5th interrupts

        if(0 == REGISTER_TMR0L)
        {
            UCUNIT_WriteInt(REGISTER_TMR0L);
            BIT_INTCON_TMR0IF = true;
            timerISR();                                     // call function to be tested
        }
    }

    /* Check Register Content */
    UCUNIT_CheckIsEqual(0x0400, hal_getBaseTimerValue());   // MSB has incremented 4x (elapsed time in uS 1024uS)
    UCUNIT_CheckIsEqual(0x0001, get_gui16TimerMs_Value());  // mS has incremented
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
#else
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("timerISR: Test 204.8uS increment");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableBaseTimerInt();
    REGISTER_TMR0L = 0;
    UCUNIT_CheckIsEqual(0x0000, hal_getBaseTimerValue());

    for(ui16Counter = 1; ui16Counter <= 256; ui16Counter++)
    {
        REGISTER_TMR0L++;                                   // simulate freerunning timer

        if(0 == REGISTER_TMR0L)
        {
            BIT_INTCON_TMR0IF = true;
            timerISR();                                     // call function to be tested
        }
    }

    /* Check Register Content */
    UCUNIT_CheckIsEqual(0x0100, hal_getBaseTimerValue());   // MSB has incremented
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("timerISR: Test 1mS increment");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableBaseTimerInt();
    UCUNIT_CheckIsEqual(0x0000, get_gui16TimerMs_Value());

    for(ui16Counter = 1; ui16Counter <= (4*(256)); ui16Counter++)
    {
        REGISTER_TMR0L++;                                   // simulate freerunning timer continued up to the 5th interrupts

        if(0 == REGISTER_TMR0L)
        {
            UCUNIT_WriteInt(REGISTER_TMR0L);
            BIT_INTCON_TMR0IF = true;
            timerISR();                                     // call function to be tested
        }
    }

    /* Check Register Content */
    UCUNIT_CheckIsEqual(0x0500, hal_getBaseTimerValue());   // MSB has incremented 5x (elapsed time in uS 1280 * 0.8 = 1024uS)
    UCUNIT_CheckIsEqual(0x0001, get_gui16TimerMs_Value());  // mS has incremented
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
#endif
}

/* test initialization */
void init()
{
    UCUNIT_ResetTracepointCoverage();
    UCUNIT_Init();
    UCUNIT_WriteString("\n**********************************************************************");
    UCUNIT_WriteString("\nName:     ");
    UCUNIT_WriteString("-hal_timer- Unit Testing");
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
    TEST_setupTimer();
    TEST_timerISR();
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

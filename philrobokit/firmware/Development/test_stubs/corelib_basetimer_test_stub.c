#include "corelib_basetimer_test_stub.h"

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
/* Define MCUREG(Template) */
//union MCU_MockReg                     [MCUREG];
//#define   BITPOS_[MCUREG]_[BIT7]          (7)
//#define   BITPOS_[MCUREG]_[BIT7]          (6)
//#define   BITPOS_[MCUREG]_[BIT7]          (5)
//#define   BITPOS_[MCUREG]_[BIT7]          (4)
//#define   BITPOS_[MCUREG]_[BIT7]          (3)
//#define   BITPOS_[MCUREG]_[BIT7]          (2)
//#define   BITPOS_[MCUREG]_[BIT7]          (1)
//#define   BITPOS_[MCUREG]_[BIT7]          (0)
//
static int get_gui16TimerMs_Value_return=0;
static int hal_getBaseTimerValue_return=0;
static int getGlobalIntEnableStatus_return=0;

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
static TEST_getUs(void)
{
#define TEST_US_TMR_VALUE                           0xAA55
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("getUs: Test when Mutex is locked by ISR (function is called inside ISR)");
    UCUNIT_ResetTracepointCoverage();
    setMockFunctionReturnValue(&hal_getBaseTimerValue_return, TEST_US_TMR_VALUE);
    setMockFunctionReturnValue(&getGlobalIntEnableStatus_return, false);
    /* Perform Module Test */
    UCUNIT_CheckIsEqual(TEST_US_TMR_VALUE,getUs());             // call function to be tested
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);                       // interrupt is already disabled
    UCUNIT_CheckTracepointNonCoverage(2);                       // interrupt must be enabled only when exiting the ISR
    /* End Module Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("getUs: Test Disabling and Enabling of Interrupt");
    UCUNIT_ResetTracepointCoverage();
    setMockFunctionReturnValue(&hal_getBaseTimerValue_return, TEST_US_TMR_VALUE);
    setMockFunctionReturnValue(&getGlobalIntEnableStatus_return, true);
    /* Perform Module Test */
    UCUNIT_CheckIsEqual(TEST_US_TMR_VALUE,getUs());             // call function to be tested
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);                          // interrupt is disabled
    UCUNIT_CheckTracepointCoverage(2);                          // interrupt is enabled
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static TEST_getElapsedUs(void)
{
    uint16_t ui16Timer;
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("getElapsedUs: Test Elapsed Time @20Mhz with ");
    UCUNIT_ResetTracepointCoverage();
    setMockFunctionReturnValue(&getGlobalIntEnableStatus_return, true);
#define TEST_US_TMR_VALUE0                          0x0000
#define TEST_US_TMR_VALUE1                          0x0001  // ~4uS (1 - 1*0.25 + 1*0.0625)*4   = 0.815*4 = 3.26)
#define TEST_US_TMR_VALUE2                          0x0134  // ~1000uS (308 - 308*0.25 + 308*0.0625)*4 = 250.25*4 = 1001)
    setMockFunctionReturnValue(&hal_getBaseTimerValue_return, TEST_US_TMR_VALUE0);
    ui16Timer = 0;
    setMockFunctionReturnValue(&hal_getBaseTimerValue_return, TEST_US_TMR_VALUE1);
    /* Perform Module Test */
    UCUNIT_WriteInt(getElapsedUs(ui16Timer));                   // ~4uS has elapsed
    UCUNIT_CheckIsEqual(4,getElapsedUs(ui16Timer));
    setMockFunctionReturnValue(&hal_getBaseTimerValue_return, TEST_US_TMR_VALUE2);
    UCUNIT_WriteInt(getElapsedUs(ui16Timer));                   // ~1000uS has elapsed
    UCUNIT_CheckIsEqual(1000,getElapsedUs(ui16Timer));
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);                          // interrupt is disabled
    UCUNIT_CheckTracepointCoverage(2);                          // interrupt is enabled
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static TEST_getMs(void)
{
#define TEST_MS_TMR_VALUE                           0xAA55
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("getMs: Test when Mutex is locked by ISR (function is called inside ISR)");
    UCUNIT_ResetTracepointCoverage();
    setMockFunctionReturnValue(&get_gui16TimerMs_Value_return, TEST_MS_TMR_VALUE);
    setMockFunctionReturnValue(&getGlobalIntEnableStatus_return, false);
    /* Perform Module Test */
    UCUNIT_CheckIsEqual(TEST_MS_TMR_VALUE, getMs());            // call function to be tested
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);                       // interrupt is already disabled
    UCUNIT_CheckTracepointNonCoverage(2);                       // interrupt must be enabled only when exiting the ISR
    /* End Module Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("getMs: Test Disabling and Enabling of Interrupt");
    UCUNIT_ResetTracepointCoverage();
    setMockFunctionReturnValue(&get_gui16TimerMs_Value_return, TEST_MS_TMR_VALUE);
    setMockFunctionReturnValue(&getGlobalIntEnableStatus_return, true);
    /* Perform Module Test */
    UCUNIT_CheckIsEqual(TEST_MS_TMR_VALUE, getMs());    // call function to be tested
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);                  // interrupt is disabled
    UCUNIT_CheckTracepointCoverage(2);                  // interrupt is enabled
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static TEST_getElapsedMs(void)
{
    uint16_t ui16Timer;
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("getElapsedMs: Test Elapsed Time @20Mhz with 1mS per increment");
    UCUNIT_ResetTracepointCoverage();
    setMockFunctionReturnValue(&getGlobalIntEnableStatus_return, true);
#define TEST_MS_TMR_VALUE0                          0x0000
#define TEST_MS_TMR_VALUE1                          0x0001  // 4mS
#define TEST_MS_TMR_VALUE2                          0x00FA  // 1000mS
    setMockFunctionReturnValue(&get_gui16TimerMs_Value_return, TEST_MS_TMR_VALUE0);
    ui16Timer = 0;
    setMockFunctionReturnValue(&get_gui16TimerMs_Value_return, TEST_MS_TMR_VALUE1);
    /* Perform Module Test */
    UCUNIT_WriteInt(getElapsedMs(ui16Timer));                   // 4mS has elapsed
    UCUNIT_CheckIsEqual(4,getElapsedMs(ui16Timer));
    setMockFunctionReturnValue(&get_gui16TimerMs_Value_return, TEST_MS_TMR_VALUE2);
    UCUNIT_WriteInt(getElapsedMs(ui16Timer));                   // 1000mS has elapsed
    UCUNIT_CheckIsEqual(1000,getElapsedMs(ui16Timer));
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);                          // interrupt is disabled
    UCUNIT_CheckTracepointCoverage(2);                          // interrupt is enabled
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

/* test initialization */
void init()
{
    UCUNIT_ResetTracepointCoverage();
    UCUNIT_Init();
    UCUNIT_WriteString("\n**********************************************************************");
    UCUNIT_WriteString("\nName:     ");
    UCUNIT_WriteString("-corelib_basetimer- Module Testing");
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
    TEST_getUs();
    TEST_getElapsedUs();
    TEST_getMs();
    TEST_getElapsedMs();
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

#include "hal_adc_test_stub.h"

/* uCUnit Globals */
static int ucunit_checks_failed = 0;            /* Numer of failed checks */
static int ucunit_checks_passed = 0;            /* Number of passed checks */

static int ucunit_testcases_failed = 0;         /* Number of failed test cases */
static int ucunit_testcases_passed = 0;         /* Number of passed test cases */
static int ucunit_testcases_failed_checks = 0;  /* Number of failed checks in a testcase */
static int ucunit_checklist_failed_checks = 0;  /* Number of failed checks in a checklist */
static int ucunit_action = UCUNIT_ACTION_WARNING; /* Action to take if a check fails */
static int ucunit_checkpoints[UCUNIT_MAX_TRACEPOINTS]; /* Max. number of tracepoints */
static int ucunit_index = 0;                    /* Tracepoint index */

/* mock definitions */
/* MCU Mock Registers */
union MCU_MockReg               ADCON0;
#define BITPOS_ADCON0_ADCS1         (7)
#define BITPOS_ADCON0_ADCS0         (6)
#define BITPOS_ADCON0_CHS2          (5)
#define BITPOS_ADCON0_CHS1          (4)
#define BITPOS_ADCON0_CHS0          (3)
#define BITPOS_ADCON0_GO_DONE       (2)
#define BITPOS_ADCON0_ADON          (0)

union MCU_MockReg               ADCON1;
#define BITPOS_ADCON1_ADFM          (7)
#define BITPOS_ADCON1_ADCS2         (6)
#define BITPOS_ADCON1_PCFG3         (3)
#define BITPOS_ADCON1_PCFG2         (2)
#define BITPOS_ADCON1_PCFG1         (1)
#define BITPOS_ADCON1_PCFG0         (0)
/* module's private externs */
/* none */

/* unit tests */
static void TEST_configLowLvlADC(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("configLowLvlADC: Initialization");
    /* Perform Unit Test */
    configLowLvlADC();  // call function to be tested
    // check oscillator is 20Mhz
    // FOSC_DIV64 = 6 or  0b110
    UCUNIT_CheckIsBitClear(REGISTER_ADCON0,BITPOS_ADCON0_ADCS0);
    UCUNIT_CheckIsBitSet(REGISTER_ADCON0,BITPOS_ADCON0_ADCS1);
    UCUNIT_CheckIsBitSet(REGISTER_ADCON1,BITPOS_ADCON1_ADCS2);
    // check if right justified result
    UCUNIT_CheckIsBitSet(REGISTER_ADCON1,BITPOS_ADCON1_ADFM);
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
    UCUNIT_WriteString("-hal_adc- Module Testing");
    UCUNIT_WriteString("\nCompiled: ");
    UCUNIT_WriteString(__DATE__);
    UCUNIT_WriteString("\nTime:     ");
    UCUNIT_WriteString(__TIME__);
    UCUNIT_WriteString("\nVersion:  uCUnit ");
    UCUNIT_WriteString(UCUNIT_VERSION);
    UCUNIT_WriteString("\n**********************************************************************");
}

/* test super loop */
void program()
{
    TEST_configLowLvlADC();
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

#include "corelib_adc_test_stub.h"

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

union MCU_MockReg               PIR1;
#define BITPOS_PIR1_PSPIF           (7)
#define BITPOS_PIR1_ADIF            (6)
#define BITPOS_PIR1_RCIF            (5)
#define BITPOS_PIR1_TXIF            (4)
#define BITPOS_PIR1_SSPIF           (3)
#define BITPOS_PIR1_CCP1IF          (2)
#define BITPOS_PIR1_TMR2IF          (1)
#define BITPOS_PIR1_TMR1IF          (0)

union MCU_MockReg               PIE1;
#define BITPOS_PIE1_PSPIE           (7)
#define BITPOS_PIE1_ADIE            (6)
#define BITPOS_PIE1_RCIE            (5)
#define BITPOS_PIE1_TXIE            (4)
#define BITPOS_PIE1_SSPIE           (3)
#define BITPOS_PIE1_CCP1IE          (2)
#define BITPOS_PIE1_TMR2IE          (1)
#define BITPOS_PIE1_TMR1IE          (0)

union MCU_MockReg               ADRESH;
union MCU_MockReg               ADRESL;

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

//int readADCResult_return=0;
//int hal_getADCIntFlag_return=0;
//int hal_getADCIntEnableStatus_return=0;
//int hal_checkADCEndofConversion_return=0;
int getMs_return=0;

int hal_setADCChannel_param1=0;
//int hal_startADCConversion_param1=0;

/* module's private externs */
extern uint16_t ui16ADCCycleTimer;
extern uint16_t ui16ADCBuff[];

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
static void TEST_adcISR(void)
{
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("adcISR: Run through ADC channels 0 to 7, channel 3 must be skipped");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableADCInt();

    for(ui8Counter = 0; ui8Counter < (14); ui8Counter++)
    {
        BIT_PIR1_ADIF = true;
        adcISR();                                           // call function to be tested
        UCUNIT_WriteInt(hal_setADCChannel_param1);
        UCUNIT_CheckIsNotEqual(3,hal_setADCChannel_param1); // ADC Channel 3 (Assigned to Vref) must be skipped
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);                   // must not be reached
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    UCUNIT_CheckTracepointCoverage(3);
    UCUNIT_CheckTracepointCoverage(4);
    UCUNIT_CheckTracepointCoverage(5);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("adcISR: Don't execute if Interrupt Enable is not set");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_disableADCInt();

    for(ui8Counter = 0; ui8Counter < (14); ui8Counter++)
    {
        BIT_PIR1_ADIF = true;
        adcISR();                                           // call function to be tested
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(1);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(2);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(3);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(4);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("adcISR: Don't execute if Interrupt Flag is not set");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableADCInt();

    for(ui8Counter = 0; ui8Counter < (14); ui8Counter++)
    {
        BIT_PIR1_ADIF = false;
        adcISR();                                           // call function to be tested
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(1);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(2);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(3);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(4);                   // must not be reached
    UCUNIT_CheckTracepointNonCoverage(5);                   // must not be reached
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static void TEST_adcCycle(void)
{
    uint16_t ui16Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("adcCycle: Cycle Interval");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    BIT_ADCON0_GO_DONE = false;                             // conversion has finished
    UCUNIT_CheckIsEqual(false, BIT_ADCON0_GO_DONE);

    // pass 0 to ADC_CYCLE_COUNTER_TIMEOUT-1
    for(ui16Counter = 0; ui16Counter < (ADC_CYCLE_COUNTER_TIMEOUT-1); ui16Counter++)
    {
        setMockFunctionReturnValue(&getMs_return, ui16Counter); // increment timer every cycle
        adcCycle();                                             // call function to be tested
    }

    /* Test for Code Coverage */
    UCUNIT_CheckIsEqual(false, BIT_ADCON0_GO_DONE);         // conversion not yet started
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* call once more ADC_CYCLE_COUNTER_TIMEOUT and check for coverage */
    adcCycle();                                             // call function to be tested
    /* Test for Code Coverage */
    UCUNIT_CheckIsEqual(true, BIT_ADCON0_GO_DONE);          // conversion has started
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    /* Reset coverage then call again */
    UCUNIT_ResetTracepointCoverage();
    adcCycle();
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static void TEST_setupADC(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("setupADC: ADC Initialization");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    setupADC(EXT);
    UCUNIT_CheckIsEqual(CFG_EXTVREF, (REGISTER_ADCON1&ADC_CONFIG_MASK));
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    UCUNIT_ResetTracepointCoverage();
    setupADC(VDD);
    UCUNIT_CheckIsEqual(CFG_ALLANALOG, (REGISTER_ADCON1&ADC_CONFIG_MASK));
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckIsBitSet(REGISTER_PIE1, BITPOS_PIE1_ADIE);          // check if interrupt is enabled
    UCUNIT_CheckIsBitClear(REGISTER_PIR1, BITPOS_PIR1_ADIF);        // check if interrupt flag is cleared
    UCUNIT_CheckIsBitSet(REGISTER_ADCON0, BITPOS_ADCON0_ADON);      // check if adc peripheral is enabled
    UCUNIT_CheckIsBitSet(REGISTER_ADCON0, BITPOS_ADCON0_GO_DONE);   // check start of conversion flag is set
#if 0 // to be tested on hal_gpio unit test
    /* Check if Digital Pins are all set to inputs */
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA0);         // AN0, RA0
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA1);         // AN1, RA1
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA2);         // AN2, RA2
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA3);         // AN3, RA3
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA5);         // AN4, RA5
    UCUNIT_CheckIsBitSet(REGISTER_TRISE, BITPOS_TRISE_RE0);         // AN5, RE0
    UCUNIT_CheckIsBitSet(REGISTER_TRISE, BITPOS_TRISE_RE1);         // AN6, RE1
    UCUNIT_CheckIsBitSet(REGISTER_TRISE, BITPOS_TRISE_RE2);         // AN7, RE2
#endif
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static void TEST_adcRead(void)
{
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("adcRead: Reading ADC Value Within Range");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableADCInt();
    /* 0 Value */
    REGISTER_ADRESH = 0;
    REGISTER_ADRESL = 0;

    for(ui8Counter = 0; ui8Counter < 6; ui8Counter++)
    {
        BIT_PIR1_ADIF = true;
        adcISR();
        UCUNIT_WriteInt(adcRead(ui8Counter));
        UCUNIT_CheckIsEqual((0+ui8Counter),adcRead(ui8Counter));
        REGISTER_ADRESL++;
    }

    /* 1023 Value */
    REGISTER_ADRESH = 0x03;
    REGISTER_ADRESL = 0xFE;

    for(ui8Counter = 0; ui8Counter < 15; ui8Counter++)
    {
        BIT_PIR1_ADIF = true;
        adcISR();
    }

    for(ui8Counter = 0; ui8Counter < 6; ui8Counter++)
    {
        UCUNIT_WriteInt(adcRead(ui8Counter));
        UCUNIT_CheckIsEqual(1022,adcRead(ui8Counter));
    }

    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("adcRead: Reading ADC Value >1023");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_enableADCInt();
    /* >1023 Value */
    REGISTER_ADRESH = 0xFF;
    REGISTER_ADRESL = 0xFF;

    for(ui8Counter = 0; ui8Counter < 15; ui8Counter++)
    {
        BIT_PIR1_ADIF = true;
        adcISR();
    }

    for(ui8Counter = 0; ui8Counter < 6; ui8Counter++)
    {
        UCUNIT_WriteInt(adcRead(ui8Counter));
        UCUNIT_CheckIsEqual(1023,adcRead(ui8Counter));
    }

    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static void TEST_removeADC(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("removeADC: ADC Initialization");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    removeADC();
    UCUNIT_CheckIsEqual(CFG_ALLDIGITAL, (REGISTER_ADCON1&ADC_CONFIG_MASK));
    UCUNIT_CheckIsBitClear(REGISTER_ADCON0, BITPOS_ADCON0_ADON);    // check if adc peripheral is disabled
#if 0 // to be tested on hal_gpio unit test
    /* Check if Digital Pins are all set to inputs */
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA0);         // AN0, RA0
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA1);         // AN1, RA1
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA2);         // AN2, RA2
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA3);         // AN3, RA3
    UCUNIT_CheckIsBitSet(REGISTER_TRISA, BITPOS_TRISA_RA5);         // AN4, RA5
    UCUNIT_CheckIsBitSet(REGISTER_TRISE, BITPOS_TRISE_RE0);         // AN5, RE0
    UCUNIT_CheckIsBitSet(REGISTER_TRISE, BITPOS_TRISE_RE1);         // AN6, RE1
    UCUNIT_CheckIsBitSet(REGISTER_TRISE, BITPOS_TRISE_RE2);         // AN7, RE2
#endif
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
    UCUNIT_WriteString("-corelib_adc- Module Testing");
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
    TEST_adcISR();
    TEST_adcCycle();
    TEST_setupADC();
    TEST_adcRead();
    TEST_removeADC();
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

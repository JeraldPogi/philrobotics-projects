#include "corelib_uart_test_stub.h"
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
/* Define TXSTA */
union MCU_MockReg                       TXSTA;
#define BITPOS_TXSTA_CSRC                   (7)
#define BITPOS_TXSTA_TX9                    (6)
#define BITPOS_TXSTA_TXEN                   (5)
#define BITPOS_TXSTA_SYNC                   (4)
//#define BITPOS_TXSTA_RESERVED             (3)
#define BITPOS_TXSTA_BRGH                   (2)
#define BITPOS_TXSTA_TRMT                   (1)
#define BITPOS_TXSTA_TX9D                   (0)

/* Define RCSTA */
union MCU_MockReg                       RCSTA;
#define BITPOS_RCSTA_SPEN                   (7)
#define BITPOS_RCSTA_RX9                    (6)
#define BITPOS_RCSTA_SREN                   (5)
#define BITPOS_RCSTA_CREN                   (4)
#define BITPOS_RCSTA_ADDEN                  (3)
#define BITPOS_RCSTA_FERR                   (2)
#define BITPOS_RCSTA_OERR                   (1)
#define BITPOS_RCSTA_RX9D                   (0)

union MCU_MockReg                       TXREG;
union MCU_MockReg                       RCREG;
union MCU_MockReg                       SPBRG;

int hal_getUARTRXIntFlag_return         = false;
int hal_getUARTRXIntEnableStatus_return = false;
int hal_getUARTTXIntFlag_return         = false;
int hal_getUARTTXIntEnableStatus_return = false;

/* module's private externs */


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
static TEST_setupSerial(void)
{
#define TEST_WRITE_VAL              0x55
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("setupSerial: Test Initialization");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = K8_UART_BUFFER_SIZE;
    stUARTTXFiFo.ui8Tail = K8_UART_BUFFER_SIZE;
    stUARTRXFiFo.ui8Head = K8_UART_BUFFER_SIZE;
    stUARTRXFiFo.ui8Tail = K8_UART_BUFFER_SIZE;
    /* Perform Module Test */
    setupSerial(0);                         // call function to be tested
    /* Check Register Content */
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Head);
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Tail);
    UCUNIT_CheckIsEqual(0, stUARTRXFiFo.ui8Head);
    UCUNIT_CheckIsEqual(0, stUARTRXFiFo.ui8Tail);
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialWrite(void)
{
#define K8_UART_BUFFER_MASK         (K8_UART_BUFFER_SIZE-1)
#define TEST_WRITE_VAL              0x55
    uint8_t ui8Counter;
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("serialWrite: Test Writing a Value");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 1;
    stUARTTXFiFo.ui8Tail = 0;
    /* Perform Module Test */
    serialWrite(TEST_WRITE_VAL);                    // call function to be tested
    /* Check Register Content */
    UCUNIT_CheckIsEqual(2, stUARTTXFiFo.ui8Head);   // test if head has incremented
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Tail);
    UCUNIT_WriteInt(stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    UCUNIT_CheckIsEqual(TEST_WRITE_VAL, stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    /* Perform Module Test */
    serialWrite(~TEST_WRITE_VAL);                   // call function to be tested
    /* Check Register Content */
    UCUNIT_CheckIsEqual(3, stUARTTXFiFo.ui8Head);   // test if head has incremented
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Tail);
    UCUNIT_WriteInt(stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    UCUNIT_CheckIsEqual((uint8_t)~TEST_WRITE_VAL, stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);           // must not be reached under normal test
    UCUNIT_CheckTracepointCoverage(1);
    /* End Module Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("serialWrite: Test Buffer Head Counter Overflow");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 1;
    stUARTTXFiFo.ui8Tail = 0;

    /* Perform Module Test */
    for(ui8Counter=0; ui8Counter < (K8_UART_BUFFER_SIZE+10); ui8Counter++)
    {
        serialWrite(TEST_WRITE_VAL);                // call function to be tested
        stUARTTXFiFo.ui8Tail = stUARTTXFiFo.ui8Head -1;
        /* Check Register Content */
        UCUNIT_WriteInt(stUARTTXFiFo.ui8Head);
        UCUNIT_CheckIsNotEqual(K8_UART_BUFFER_MASK+1, stUARTTXFiFo.ui8Head);    // test if head has incremented
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);           // must not be reached under normal test
    UCUNIT_CheckTracepointCoverage(1);
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialRead(void)
{
#define TEST_WRITE_VAL                      0x55
    uint8_t ui8Counter;
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("serialRead: Test Reading a Bytes and Tail Counter Overflow");
    UCUNIT_ResetTracepointCoverage();

    /* Simulate writing to the RX Buffer */
    for(ui8Counter=0; ui8Counter < K8_UART_BUFFER_SIZE; ui8Counter++)
    {
        stUARTRXFiFo.aui8Buffer[ui8Counter] = TEST_WRITE_VAL;
    }

    stUARTRXFiFo.ui8Head = K8_UART_BUFFER_SIZE - 1;
    stUARTRXFiFo.ui8Tail = 0;

    /* Perform Module Test */
    for(ui8Counter=0; ui8Counter < (K8_UART_BUFFER_SIZE-1); ui8Counter++)
    {
        /* Check Register Content */
        UCUNIT_CheckIsEqual(TEST_WRITE_VAL,serialRead());                       // call function to be tested
        UCUNIT_WriteInt(stUARTRXFiFo.ui8Tail);
        UCUNIT_CheckIsNotEqual(K8_UART_BUFFER_MASK+1, stUARTRXFiFo.ui8Tail);    // test if head has incremented
    }

    /* Simulate writing to the RX Buffer with inverted values */
    for(ui8Counter=0; ui8Counter < K8_UART_BUFFER_SIZE; ui8Counter++)
    {
        stUARTRXFiFo.aui8Buffer[ui8Counter] = ~TEST_WRITE_VAL;
    }

    stUARTRXFiFo.ui8Head = K8_UART_BUFFER_SIZE - 1;
    stUARTRXFiFo.ui8Tail = 0;

    /* Try another read of inverted values */
    for(ui8Counter=0; ui8Counter < (K8_UART_BUFFER_SIZE-1); ui8Counter++)
    {
        /* Check Register Content */
        UCUNIT_CheckIsEqual((uint8_t)~TEST_WRITE_VAL,serialRead());             // call function to be tested
        UCUNIT_WriteInt(stUARTRXFiFo.ui8Tail);
        UCUNIT_CheckIsNotEqual(K8_UART_BUFFER_MASK+1, stUARTRXFiFo.ui8Tail);    // test if head has incremented
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);                                       // must not be reached under normal test
    UCUNIT_CheckTracepointCoverage(1);
    /* Check for RX Tail overflow (31st Read, Head == Tail) */
    UCUNIT_ResetTracepointCoverage();
    UCUNIT_CheckIsEqual(0,serialRead());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* Check for RX Tail overflow (32nd Read, Head == Tail) */
    UCUNIT_ResetTracepointCoverage();
    UCUNIT_CheckIsEqual(0,serialRead());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* End Module Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("serialRead: Test no Serial Data Available");
    UCUNIT_ResetTracepointCoverage();
    /* Head and Tail points on same location to simulate no data */
    stUARTRXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    /* Perform Module Test */
    UCUNIT_CheckIsEqual(0,serialRead());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* End Module Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialFlush(void)
{
#define TEST_WRITE_VAL                      0x55
    uint8_t ui8Counter;
    /* Initialize Module Test */
    UCUNIT_TestcaseBegin("serialFlush: Test Serial Flushing of RX and TX Buffer");
    UCUNIT_ResetTracepointCoverage();

    for(ui8Counter=0; ui8Counter < K8_UART_BUFFER_SIZE; ui8Counter++)
    {
        stUARTRXFiFo.aui8Buffer[ui8Counter] = TEST_WRITE_VAL;
        stUARTTXFiFo.aui8Buffer[ui8Counter] = TEST_WRITE_VAL;
    }

    stUARTRXFiFo.ui8Head = K8_UART_BUFFER_SIZE;
    stUARTRXFiFo.ui8Tail = K8_UART_BUFFER_SIZE;
    stUARTTXFiFo.ui8Head = K8_UART_BUFFER_SIZE;
    stUARTTXFiFo.ui8Tail = K8_UART_BUFFER_SIZE;
    /* Perform Module Test */
    serialFlush();                                  // call function to be tested
    /* Check Register Content */
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Head);
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Tail);
    UCUNIT_CheckIsEqual(0, stUARTRXFiFo.ui8Head);
    UCUNIT_CheckIsEqual(0, stUARTRXFiFo.ui8Tail);

    for(ui8Counter=0; ui8Counter < K8_UART_BUFFER_SIZE; ui8Counter++)
    {
        UCUNIT_CheckIsEqual(0, stUARTTXFiFo.aui8Buffer[ui8Counter]);
        UCUNIT_CheckIsEqual(0, stUARTRXFiFo.aui8Buffer[ui8Counter]);
    }

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
    UCUNIT_WriteString("-corelib_uart- Module Testing");
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
    TEST_setupSerial();
    TEST_serialWrite();
    TEST_serialRead();
    TEST_serialFlush();
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

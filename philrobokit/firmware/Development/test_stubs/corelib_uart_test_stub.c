#include "corelib_uart_test_stub.h"
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
union MCU_MockReg                       PIR1;
#define BITPOS_PIR1_PSPIF                   (7)
#define BITPOS_PIR1_ADIF                    (6)
#define BITPOS_PIR1_RCIF                    (5)
#define BITPOS_PIR1_TXIF                    (4)
#define BITPOS_PIR1_SSPIF                   (3)
#define BITPOS_PIR1_CCP1IF                  (2)
#define BITPOS_PIR1_TMR2IF                  (1)
#define BITPOS_PIR1_TMR1IF                  (0)

union MCU_MockReg                       PIE1;
#define BITPOS_PIE1_PSPIE                   (7)
#define BITPOS_PIE1_ADIE                    (6)
#define BITPOS_PIE1_RCIE                    (5)
#define BITPOS_PIE1_TXIE                    (4)
#define BITPOS_PIE1_SSPIE                   (3)
#define BITPOS_PIE1_CCP1IE                  (2)
#define BITPOS_PIE1_TMR2IE                  (1)
#define BITPOS_PIE1_TMR1IE                  (0)

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
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("setupSerial: Test setup initialization");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = K8_UART_BUFFER_SIZE;
    stUARTTXFiFo.ui8Tail = K8_UART_BUFFER_SIZE;
    stUARTRXFiFo.ui8Head = K8_UART_BUFFER_SIZE;
    stUARTRXFiFo.ui8Tail = K8_UART_BUFFER_SIZE;
    /* Perform Unit Test */
    setupSerial(0);                         // call function to be tested
    /* Check UART Register Content */
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Head);
    UCUNIT_CheckIsEqual(0, stUARTTXFiFo.ui8Tail);
    UCUNIT_CheckIsEqual(0, stUARTRXFiFo.ui8Head);
    UCUNIT_CheckIsEqual(0, stUARTRXFiFo.ui8Tail);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialWrite(void)
{
#define K8_UART_BUFFER_MASK         (K8_UART_BUFFER_SIZE-1)
#define TEST_WRITE_VAL              0x55
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialWrite: Test writing a byte value");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 1;
    stUARTTXFiFo.ui8Tail = 0;
    /* Perform Unit Test */
    serialWrite(TEST_WRITE_VAL);                    // call function to be tested
    /* Check Register Content */
    UCUNIT_CheckIsEqual(2, stUARTTXFiFo.ui8Head);   // test if head has incremented
    UCUNIT_WriteInt(stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    UCUNIT_CheckIsEqual(TEST_WRITE_VAL, stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    /* Perform Unit Test */
    serialWrite(~TEST_WRITE_VAL);                   // call function to be tested
    /* Check Register Content */
    UCUNIT_CheckIsEqual(3, stUARTTXFiFo.ui8Head);   // test if head has incremented
    UCUNIT_WriteInt(stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    UCUNIT_CheckIsEqual((uint8_t)~TEST_WRITE_VAL, stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head-1]);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);           // must not be reached under normal test
    UCUNIT_CheckTracepointCoverage(1);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialWrite: Check head counter overflow");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 1;
    stUARTTXFiFo.ui8Tail = 0;

    /* Perform Unit Test */
    for(ui8Counter=0; ui8Counter < (K8_UART_BUFFER_SIZE+10); ui8Counter++)
    {
        serialWrite(TEST_WRITE_VAL);                // call function to be tested
        stUARTTXFiFo.ui8Tail = stUARTTXFiFo.ui8Head -1;
        /* Check if the maximum buffer allocation was exceeded */
        UCUNIT_WriteInt(stUARTTXFiFo.ui8Head);
        UCUNIT_CheckIsNotEqual(K8_UART_BUFFER_MASK+1, stUARTTXFiFo.ui8Head);    // test if head has incremented
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);           // must not be reached under normal test
    UCUNIT_CheckTracepointCoverage(1);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialRead(void)
{
#define TEST_WRITE_VAL                      0x55
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialRead: Test reading a bytes and tail counter overflow");
    UCUNIT_ResetTracepointCoverage();

    /* Simulate writing to the RX Buffer by an ISR */
    for(ui8Counter=0; ui8Counter < K8_UART_BUFFER_SIZE; ui8Counter++)
    {
        stUARTRXFiFo.aui8Buffer[ui8Counter] = TEST_WRITE_VAL;
    }

    stUARTRXFiFo.ui8Head = K8_UART_BUFFER_SIZE - 1;
    stUARTRXFiFo.ui8Tail = 0;

    /* Perform Unit Test */
    for(ui8Counter=0; ui8Counter < (K8_UART_BUFFER_SIZE-1); ui8Counter++)
    {
        /* Check Register Content */
        UCUNIT_CheckIsEqual(TEST_WRITE_VAL,serialRead());                       // call function to be tested
        UCUNIT_WriteInt(stUARTRXFiFo.ui8Tail);
        UCUNIT_CheckIsNotEqual(K8_UART_BUFFER_MASK+1, stUARTRXFiFo.ui8Tail);    // test if head has incremented
    }

    /* Simulate writing to the RX Buffer with inverted values by an ISR */
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
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialRead: Test reading with no serial data available");
    UCUNIT_ResetTracepointCoverage();
    /* Head and Tail points on same location to simulate no data */
    stUARTRXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    /* Perform Unit Test */
    UCUNIT_CheckIsEqual(0,serialRead());
    UCUNIT_CheckIsEqual(0,serialRead());                // try reading again
    UCUNIT_CheckIsEqual(0,serialRead());                // try reading again
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialFlush(void)
{
#define TEST_WRITE_VAL                      0x55
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialFlush: Test flushing of RX and TX buffers");
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
    /* Perform Unit Test */
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

    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialRxISR(void)
{
#define TEST_WRITE_VAL                      0x55
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialRxISR: Simulate receipt of serial data");
    UCUNIT_ResetTracepointCoverage();
    /* Fresh UART Buffers */
    stUARTRXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    BIT_PIE1_RCIE = true;
    BIT_PIR1_RCIF = true;
    K_RXREG_BUFF = TEST_WRITE_VAL;
    /* Perform Unit Test */
    serialRxISR();
    UCUNIT_CheckIsEqual(TEST_WRITE_VAL,stUARTRXFiFo.aui8Buffer[0]);
    UCUNIT_CheckIsEqual(1, stUARTRXFiFo.ui8Head);   // test if head has incremented

    /* Continue test for the rest of the buffers */
    for(ui8Counter=1; ui8Counter < (K8_UART_BUFFER_SIZE-1); ui8Counter++)
    {
        BIT_PIR1_RCIF = true;
        serialRxISR();
        UCUNIT_CheckIsEqual(TEST_WRITE_VAL,stUARTRXFiFo.aui8Buffer[ui8Counter]);
    }

    UCUNIT_CheckIsEqual((K8_UART_BUFFER_SIZE-1), stUARTRXFiFo.ui8Head);   // test if head is maximum
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);           // no buffer full condition
    UCUNIT_CheckTracepointCoverage(2);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialRxISR: Simulate buffer full condition");
    UCUNIT_ResetTracepointCoverage();
    /* Continue from the previous test */
    BIT_PIR1_RCIF = true;
    serialRxISR();
    UCUNIT_CheckIsEqual((K8_UART_BUFFER_SIZE-1), stUARTRXFiFo.ui8Head);   // test if head remains maximum
    BIT_PIR1_RCIF = true;
    serialRxISR();
    UCUNIT_CheckIsEqual((K8_UART_BUFFER_SIZE-1), stUARTRXFiFo.ui8Head);   // test if head remains maximum
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialTxISR(void)
{
#define TEST_WRITE_VAL                      0x55
    uint8_t ui8Counter;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialTxISR: Simulate transmission of serial data");
    UCUNIT_ResetTracepointCoverage();

    for(ui8Counter=0; ui8Counter < (K8_UART_BUFFER_SIZE-1); ui8Counter++)
    {
        stUARTTXFiFo.aui8Buffer[ui8Counter] = TEST_WRITE_VAL;
        stUARTTXFiFo.ui8Head++;
    }

    stUARTTXFiFo.ui8Head &= K8_UART_BUFFER_MASK;
    stUARTTXFiFo.ui8Tail = 0;
    BIT_PIE1_TXIE = true;
    BIT_PIR1_TXIF = true;
    K_TXREG_BUFF = 0;
    /* Perform Unit Test */
    serialTxISR();
    UCUNIT_CheckIsEqual(TEST_WRITE_VAL,K_TXREG_BUFF);
    UCUNIT_CheckIsEqual(1, stUARTTXFiFo.ui8Tail);   // test if tail has incremented

    /* Continue test for the rest of the buffers */
    for(ui8Counter=1; ui8Counter < (K8_UART_BUFFER_SIZE-1); ui8Counter++)
    {
        BIT_PIR1_TXIF = true;
        serialTxISR();
        UCUNIT_CheckIsEqual(TEST_WRITE_VAL,K_TXREG_BUFF);
    }

    /* Check Results */
    UCUNIT_CheckIsEqual(stUARTTXFiFo.ui8Head, stUARTTXFiFo.ui8Tail);    // test if tail equals the head
    UCUNIT_CheckIsBitClear(PIE1,BITPOS_PIE1_TXIE);                      // Check if interrupt is disabled
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);              // no buffer empty condition
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialTxISR: Simulate buffer empty condition");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 0;
    stUARTTXFiFo.ui8Tail = 0;
    BIT_PIE1_TXIE = true;                           // force enable tx interrupt
    BIT_PIR1_TXIF = true;
    K_TXREG_BUFF = 0;
    /* Test Empty Buffer */
    serialTxISR();
    /* Check Results */
    UCUNIT_CheckIsEqual(stUARTTXFiFo.ui8Head, stUARTTXFiFo.ui8Tail);    // test if tail equals the head
    UCUNIT_CheckIsBitClear(PIE1,BITPOS_PIE1_TXIE);                      // Check if interrupt is disabled
    UCUNIT_CheckIsEqual(0,K_TXREG_BUFF);                                // Check if buffer is not written
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    UCUNIT_CheckTracepointCoverage(2);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialWriteString(void)
{
    uint8_t ui8TestBuff[K8_UART_BUFFER_SIZE] = "Hello World";
    uint8_t ui8Counter=0;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialWriteString: Test sending null");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    serialWriteString("\0");
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialWriteString: Test sending a string");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 0;
    stUARTTXFiFo.ui8Tail = 0;
    /* Perform Unit Test */
    serialWriteString("Hello World");

    while((stUARTTXFiFo.aui8Buffer[ui8Counter] != '\0') && (ui8Counter < K8_UART_BUFFER_SIZE))
    {
        UCUNIT_CheckIsEqual(ui8TestBuff[ui8Counter], stUARTTXFiFo.aui8Buffer[ui8Counter]);
        ui8Counter++;
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_serialWriteBlock(void)
{
    uint8_t ui8TestBuff[K8_UART_BUFFER_SIZE] = "Hello World";
    uint8_t ui8Counter=0;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialWriteBlock: Test sending 0 length");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    serialWriteBlock(ui8TestBuff,0);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialWriteBlock: Test sending a block");
    UCUNIT_ResetTracepointCoverage();
    stUARTTXFiFo.ui8Head = 0;
    stUARTTXFiFo.ui8Tail = 0;
    /* Perform Unit Test */
    serialWriteBlock(ui8TestBuff,11);

    while((stUARTTXFiFo.aui8Buffer[ui8Counter] != '\0') && (ui8Counter < K8_UART_BUFFER_SIZE))
    {
        UCUNIT_CheckIsEqual(ui8TestBuff[ui8Counter], stUARTTXFiFo.aui8Buffer[ui8Counter]);
        ui8Counter++;
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_isSerialDataAvailable(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("isSerialDataAvailable: Test no available data");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    stUARTRXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    UCUNIT_CheckIsEqual(FALSE,isSerialDataAvailable());
    stUARTRXFiFo.ui8Head = 10;
    stUARTRXFiFo.ui8Tail = 10;
    UCUNIT_CheckIsEqual(FALSE,isSerialDataAvailable());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("isSerialDataAvailable: Test with available data");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    stUARTRXFiFo.ui8Head = 1;
    stUARTRXFiFo.ui8Tail = 0;
    UCUNIT_CheckIsEqual(TRUE,isSerialDataAvailable());
    stUARTRXFiFo.ui8Head = 10;
    stUARTRXFiFo.ui8Tail = 0;
    UCUNIT_CheckIsEqual(TRUE,isSerialDataAvailable());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("isSerialDataAvailable: Test with UART Rx error");
    UCUNIT_ResetTracepointCoverage();
    BIT_RCSTA_OERR = 1;
    /* Perform Unit Test */
    stUARTRXFiFo.ui8Head = 1;
    stUARTRXFiFo.ui8Tail = 0;
    UCUNIT_CheckIsEqual(FALSE,isSerialDataAvailable());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* Perform Unit Test Again */
    UCUNIT_ResetTracepointCoverage();
    stUARTRXFiFo.ui8Head = 10;
    stUARTRXFiFo.ui8Tail = 0;
    UCUNIT_CheckIsEqual(FALSE,isSerialDataAvailable());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* End Unit Test */
    BIT_RCSTA_OERR = 0;
    UCUNIT_TestcaseEnd();
}

static TEST_serialDataCount(void)
{
    uint8_t ui8Counter=0;
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialDataCount: Test sending 0 length");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    stUARTRXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    UCUNIT_CheckIsEqual(0,serialDataCount());
    /* Perform Unit Test Again */
    stUARTRXFiFo.ui8Head = 10;
    stUARTRXFiFo.ui8Tail = 10;
    UCUNIT_CheckIsEqual(0,serialDataCount());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointCoverage(1);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("serialDataCount: Test increasing data count");
    UCUNIT_ResetTracepointCoverage();
    stUARTRXFiFo.ui8Tail = 0;

    /* Perform Unit Test Skip 0 path */
    for(ui8Counter=1; ui8Counter < K8_UART_BUFFER_SIZE; ui8Counter++)
    {
        stUARTRXFiFo.ui8Head = ui8Counter;
        UCUNIT_CheckIsEqual(ui8Counter,serialDataCount());
    }

    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    /* Test RX Buffer Overflow */
    stUARTRXFiFo.ui8Head = ui8Counter;
    UCUNIT_CheckIsEqual(K8_UART_BUFFER_SIZE,serialDataCount());
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
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
    UCUNIT_WriteString("-corelib_uart- Unit Testing");
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
    TEST_serialRxISR();
    TEST_serialTxISR();
    TEST_serialWriteString();
    TEST_serialWriteBlock();
    TEST_isSerialDataAvailable();
    TEST_serialDataCount();
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

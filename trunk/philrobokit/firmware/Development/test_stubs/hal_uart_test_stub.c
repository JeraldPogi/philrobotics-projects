#include "hal_uart_test_stub.h"

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
static TEST_hal_setSerialBAUD(void)
{
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("setSerialBAUD: Test Standard Baudrates");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_9600);
    UCUNIT_CheckIsBitSet(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_9600_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(0);
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_57600);
    UCUNIT_CheckIsBitSet(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_57600_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(1);
    /* Perform Unit Test */
    //esc.comment TCC cannot recognize the switch case but ok when tried to compile using XC8
    //    hal_setSerialBAUD(STD_BAUD_115200);
    //    UCUNIT_CheckIsBitSet(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    //    UCUNIT_CheckIsEqual(BAUD_115200_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    //    UCUNIT_CheckTracepointCoverage(2);
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_19200);
    UCUNIT_CheckIsBitSet(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_19200_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(3);
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_4800);
    UCUNIT_CheckIsBitClear(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_4800_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(4);
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_38400);
    UCUNIT_CheckIsBitSet(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_38400_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(5);
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_2400);
    UCUNIT_CheckIsBitClear(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_2400_BRGVAL,REGISTER_SPBRG);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(6);
    /* Perform Unit Test */
    hal_setSerialBAUD(STD_BAUD_1200);
    /* Test for Code Coverage */
    UCUNIT_CheckTracepointCoverage(7);
    UCUNIT_CheckTracepointNonCoverage(8);
    /* End Unit Test */
    UCUNIT_TestcaseEnd();
    /* Initialize Unit Test */
    UCUNIT_TestcaseBegin("setSerialBAUD: Test Non Standard Baudrates");
    UCUNIT_ResetTracepointCoverage();
    /* Perform Unit Test */
    hal_setSerialBAUD(0);
    hal_setSerialBAUD(255);
    hal_setSerialBAUD(1023);
    hal_setSerialBAUD(65535);
    hal_setSerialBAUD(STD_BAUD_9600+1);
    hal_setSerialBAUD(STD_BAUD_9600-1);
    hal_setSerialBAUD(STD_BAUD_57600+1);
    hal_setSerialBAUD(STD_BAUD_57600-1);
    hal_setSerialBAUD(STD_BAUD_115200+1);
    hal_setSerialBAUD(STD_BAUD_115200-1);
    hal_setSerialBAUD(STD_BAUD_19200+1);
    hal_setSerialBAUD(STD_BAUD_19200-1);
    hal_setSerialBAUD(STD_BAUD_4800+1);
    hal_setSerialBAUD(STD_BAUD_4800-1);
    hal_setSerialBAUD(STD_BAUD_38400+1);
    hal_setSerialBAUD(STD_BAUD_38400-1);
    hal_setSerialBAUD(STD_BAUD_2400+1);
    hal_setSerialBAUD(STD_BAUD_2400-1);
    hal_setSerialBAUD(STD_BAUD_1200+1);
    hal_setSerialBAUD(STD_BAUD_1200-1);
    /* Test for Code Coverage */
    UCUNIT_CheckIsBitSet(REGISTER_TXSTA,BITPOS_TXSTA_BRGH);
    UCUNIT_CheckIsEqual(BAUD_9600_BRGVAL,REGISTER_SPBRG);
    UCUNIT_CheckTracepointNonCoverage(0);
    UCUNIT_CheckTracepointNonCoverage(1);
    UCUNIT_CheckTracepointNonCoverage(2);
    UCUNIT_CheckTracepointNonCoverage(3);
    UCUNIT_CheckTracepointNonCoverage(4);
    UCUNIT_CheckTracepointNonCoverage(5);
    UCUNIT_CheckTracepointNonCoverage(6);
    UCUNIT_CheckTracepointNonCoverage(7);
    UCUNIT_CheckTracepointCoverage(8);
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
    UCUNIT_WriteString("-hal_uart- Unit Testing");
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
    TEST_hal_setSerialBAUD();
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

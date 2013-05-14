#include "hal_gpio_test_stub.h"

/* uCUnit Globals */                                                   
static int ucunit_checks_failed = 0; 			    /* Numer of failed checks */                    
static int ucunit_checks_passed = 0; 			    /* Number of passed checks */                   
static int ucunit_testcases_failed = 0; 		    /* Number of failed test cases */               
static int ucunit_testcases_passed = 0; 		    /* Number of passed test cases */               
static int ucunit_testcases_failed_checks = 0; 	/* Number of failed checks in a testcase */     
static int ucunit_checklist_failed_checks = 0; 	/* Number of failed checks in a checklist */    
static int ucunit_action = UCUNIT_ACTION_WARNING;  /* Action to take if a check fails */           
static int ucunit_checkpoints[UCUNIT_MAX_TRACEPOINTS]; /* Max. number of tracepoints */            
static int ucunit_index = 0; 					    /* Tracepoint index */                          

/* mock definitions */                                                 
   /* MCU Mock Registers */                                            
/* Define TRISA */
union MCU_MockReg               TRISA;
#define BITPOS_TRISA_RA7         	(7)
#define BITPOS_TRISA_RA6         	(6)
#define BITPOS_TRISA_RA5          	(5)
#define BITPOS_TRISA_RA4          	(4)
#define BITPOS_TRISA_RA3          	(3)
#define BITPOS_TRISA_RA2       		(2)
#define BITPOS_TRISA_RA1       		(1)
#define BITPOS_TRISA_RA0          	(0)

/* Define TRISB */
union MCU_MockReg               TRISB;
#define BITPOS_TRISB_RB7         	(7)
#define BITPOS_TRISB_RB6         	(6)
#define BITPOS_TRISB_RB5          	(5)
#define BITPOS_TRISB_RB4          	(4)
#define BITPOS_TRISB_RB3          	(3)
#define BITPOS_TRISB_RB2       		(2)
#define BITPOS_TRISB_RB1       		(1)
#define BITPOS_TRISB_RB0          	(0)

/* Define TRISC */
union MCU_MockReg               TRISC;
#define BITPOS_TRISC_RC7         	(7)
#define BITPOS_TRISC_RC6         	(6)
#define BITPOS_TRISC_RC5          	(5)
#define BITPOS_TRISC_RC4          	(4)
#define BITPOS_TRISC_RC3          	(3)
#define BITPOS_TRISC_RC2       		(2)
#define BITPOS_TRISC_RC1       		(1)
#define BITPOS_TRISC_RC0          	(0)

/* Define TRISD */
union MCU_MockReg               TRISD;
#define BITPOS_TRISD_RD7         	(7)
#define BITPOS_TRISD_RD6         	(6)
#define BITPOS_TRISD_RD5          	(5)
#define BITPOS_TRISD_RD4          	(4)
#define BITPOS_TRISD_RD3          	(3)
#define BITPOS_TRISD_RD2       		(2)
#define BITPOS_TRISD_RD1       		(1)
#define BITPOS_TRISD_RD0          	(0)

/* Define TRISE */
union MCU_MockReg               TRISE;
#define BITPOS_TRISE_RE7         	(7)
#define BITPOS_TRISE_RE6         	(6)
#define BITPOS_TRISE_RE5          	(5)
#define BITPOS_TRISE_RE4          	(4)
#define BITPOS_TRISE_RE3          	(3)
#define BITPOS_TRISE_RE2       		(2)
#define BITPOS_TRISE_RE1       		(1)
#define BITPOS_TRISE_RE0          	(0)

/* Define PORTA */
union MCU_MockReg               PORTA;
#define BITPOS_PORTA_RA7         	(7)
#define BITPOS_PORTA_RA6         	(6)
#define BITPOS_PORTA_RA5          	(5)
#define BITPOS_PORTA_RA4          	(4)
#define BITPOS_PORTA_RA3          	(3)
#define BITPOS_PORTA_RA2       		(2)
#define BITPOS_PORTA_RA1       		(1)
#define BITPOS_PORTA_RA0          	(0)

/* Define PORTB */
union MCU_MockReg               PORTB;
#define BITPOS_PORTB_RB7         	(7)
#define BITPOS_PORTB_RB6         	(6)
#define BITPOS_PORTB_RB5          	(5)
#define BITPOS_PORTB_RB4          	(4)
#define BITPOS_PORTB_RB3          	(3)
#define BITPOS_PORTB_RB2       		(2)
#define BITPOS_PORTB_RB1       		(1)
#define BITPOS_PORTB_RB0          	(0)

/* Define PORTC */
union MCU_MockReg               PORTC;
#define BITPOS_PORTC_RC7         	(7)
#define BITPOS_PORTC_RC6         	(6)
#define BITPOS_PORTC_RC5          	(5)
#define BITPOS_PORTC_RC4          	(4)
#define BITPOS_PORTC_RC3          	(3)
#define BITPOS_PORTC_RC2       		(2)
#define BITPOS_PORTC_RC1       		(1)
#define BITPOS_PORTC_RC0          	(0)

/* Define PORTD */
union MCU_MockReg               PORTD;
#define BITPOS_PORTD_RD7         	(7)
#define BITPOS_PORTD_RD6         	(6)
#define BITPOS_PORTD_RD5          	(5)
#define BITPOS_PORTD_RD4          	(4)
#define BITPOS_PORTD_RD3          	(3)
#define BITPOS_PORTD_RD2       		(2)
#define BITPOS_PORTD_RD1       		(1)
#define BITPOS_PORTD_RD0          	(0)

/* Define PORTE */
union MCU_MockReg               PORTE;
#define BITPOS_PORTE_RE7         	(7)
#define BITPOS_PORTE_RE6         	(6)
#define BITPOS_PORTE_RE5          	(5)
#define BITPOS_PORTE_RE4          	(4)
#define BITPOS_PORTE_RE3          	(3)
#define BITPOS_PORTE_RE2       		(2)
#define BITPOS_PORTE_RE1       		(1)
#define BITPOS_PORTE_RE0          	(0)

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
void setMockFunctionReturnValue(int *reg, int value)                   
{                                                                      
	*reg = value;                                                       
}

int getMockFunctionReturn(int *reg)                                    
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
    UCUNIT_CheckTracepointNonCoverage(9);					// only for outputs

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
    UCUNIT_CheckTracepointNonCoverage(8);					// only for inputs
    UCUNIT_CheckTracepointCoverage(9);

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

		/* Set all pins to inputs */
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

	/* Refer to hal_gpio.h for used gpio and assignments */
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
    UCUNIT_CheckTracepointNonCoverage(9);					// only for outputs
    UCUNIT_CheckTracepointNonCoverage(10);					// only for outputs

    /* End Unit Test */
    UCUNIT_TestcaseEnd();
}

static TEST_checkPinState(void)
{

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

//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRobokit_Macro.h - PhilRobokit Macro File
// Description:	
// Revision:    v00.01.00
// Author:      Giancarlo Acelajado
//             	
// Vendor:      Microchip Technology
// Family:      PIC16F8X7A
// Processor:   PIC16F877A
// Compiler:    Hitech C 9.82
//
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//***********************************************************************************
// FW Version      Date        Author         Description
// v00.00.01       201112xx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#include "PhilRobokit_Header.h"

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Function Prototypes */
	unsigned int getTimeUs(void);
	unsigned int getElapsedTimeUs(unsigned int uiTimeUs);
	void timerInterruptHandler(void);
	//void adcInterruptHandler(void);
	void serialRxInterruptHandler(void);	
	void serialTxInterruptHandler(void);	
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* PhilRobokit Specific Prototypes */
#define	setupLEDs()				LED_REGISTER &= ~LED_MASK
	#define	clearLED(x)			setPinLow(x) 
	#define	setLED(x)			setPinHigh(x)
	#define	toggleLED(x)		x ^= 1

#define setupBuzzer()			BUZZER_REGISTER &= ~BUZZER_MASK
	#define	setBuzzer()			BUZZER = 1;
	#define	clearBuzzer()		BUZZER = 0;

#define setupSwitches()			SWITCH_REGISTER |= SWITCH_MASK
	#define	isButtonPressed(x)	isPinLow(x)
	
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Definitions */

#define	IN						1
#define	OUT						0

#define	INPUT					IN
#define	OUTPUT					OUT

#define	setPin(x,y)				configPin(x,y)
#define	setPinInput(x)			configPin(x, IN)
#define	setPinOutput(x)			configPin(x, OUT)

#define	setPinHigh(x) 			x = 1
#define	setPinLow(x)			x = 0

#define	isPinHigh(x)			(x?1:0)
#define	isPinLow(x)				(x?0:1)

int test = 0;

/* PhilRobokit Library */
struct PhilRobokit {
	unsigned int ADC: 		1;
	unsigned int UART: 		1;
	unsigned int I2C: 		1;
	unsigned int SPI: 		1;
	unsigned int TIMER: 	1;
	unsigned int SERVO: 	1;	
} PhilRobokitLibrary;

unsigned int Baudrate = 0;

#include "lib\uart.h"
#include "lib\adc.h"

/* End of Global PhilRobokit Definitions */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Functions */
void configPin(unsigned char ucPinName, char bDirection)
{
	if(ucPinName <= 7){		//TRISC
		
		if(bDirection){		//Input
			REGISTER_TRISC	|=	(1<<ucPinName);
		}
		else{		//Output
			REGISTER_TRISC	&=	~(1<<ucPinName);
		}	
	}	
	if(ucPinName >= 7 && ucPinName <= 13){		//TRISB
		
		if(bDirection){		//Input
			REGISTER_TRISB	|=	(1<<ucPinName);
		}
		else{		//Output
			REGISTER_TRISB	&=	~(1<<ucPinName);
		}	
	}	
}	
/* End of Global PhilRobokit Functionss */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

//--------------------------------------------------------------------------------------------------------------------------------------------
/* Timer Routine */
#define	setupTimer()		timerInit()
#define elapsedTimeMs(x)	getTimeElapsedMs(x)
#define getTimeMs()			_getTimeMs()

#define elapsedTimeUs(x)	getTimeElapsedUs(x)
#define getTimeUs()			_getTimeUs()


#define CONST8_TIMER_1US	(65535)
#define CONST8_TIMER_10US	(65530)
#define CONST8_TIMER_100US	(65473)

#define	CONST16_TIMER	CONST8_TIMER_10US // 65536 - Period*FOSC / 4 * Prescaler

static volatile unsigned int uiTimerUs = 0;
static volatile unsigned int uiTimerMs = 0;

void timerInterruptHandler(void)
{
	static int iMsCounter = 0;
	
	if(BIT_PIR1_TMR1IF){
		
		if((uiTimerUs >= 65000)){ // 650 000 uS
			uiTimerUs = 0;
		}
		uiTimerUs++;
		
		iMsCounter++;
		if(iMsCounter == 1000){	
			iMsCounter = 0;	
				
			if(uiTimerMs >= 65000){
				uiTimerMs = 0;
			}
			uiTimerMs++;
		}
		
			
		REGISTER_TMR1L = (CONST16_TIMER & 0xFF);
		REGISTER_TMR1H = (CONST16_TIMER >> 8);
	
		BIT_PIR1_TMR1IF = 0; //Clear Timer1 Interrupt Flag
	}
}	

void timerInit(void)
{
	BIT_T1CON_T1CKPS1 = 1; //Prescaler is 8
	BIT_T1CON_T1CKPS0 = 1; 
	BIT_T1CON_T1OSCEN = 0; //Timer1 Oscillator Enable Control
	BIT_T1CON_T1SYNC = 1; //Timer1 External Clock Input Synchronization Control
	BIT_T1CON_TMR1CS = 0; //Timer1 Clock Source Select, Internal Clock (FOSC/4)
			
	REGISTER_TMR1L = (CONST16_TIMER & 0xFF);
	REGISTER_TMR1H = (CONST16_TIMER >> 8);
	
	BIT_T1CON_TMR1ON = 1; //Timer1 is ON
	
	BIT_PIE1_TMR1IE = 1; //Enable Timer1 Interrupt
	BIT_PIR1_TMR1IF = 0; //Clear Timer1 Interrupt Flag
}	

unsigned int getElapsedTimeMs(unsigned int uiTimeMs)
{	
	return (uiTimerMs - uiTimeMs);
}	

unsigned int _getTimeMs(void)
{	
	return uiTimerMs;
}

unsigned int getElapsedTimeUs(unsigned int uiTimeUs)
{	
	return (uiTimerUs - uiTimeUs);
}	

unsigned int _getTimeUs(void)
{	
	return uiTimerUs;
}
//--------------------------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------------------------------------
/* Servo Routine */
#pragma warning(push)
#pragma warning(disable:1090)

static int Servo0 = 1000;
static int Servo90 = 1500;
static int Servo180 = 2000;

#pragma warning(pop)

#define setupServo()			SERVO_REGISTER &= ~SERVO_MASK;	setupTimer()
	#define	setServo(x)			moveServo(x)
	
	#define	setServo00deg(x)	Servo0 = x
	#define	setServo90deg(x)	Servo90 = x
	#define	setServo180deg(x)	Servo180 = x
	
void moveServo(unsigned char ucAngle)
{
	unsigned int iTime, iMoveTime;
	
	if(ucAngle == 0)
		iMoveTime = Servo0; //1mS
	else if(ucAngle == 90)
		iMoveTime = Servo90; //1.5mS
	else if(ucAngle == 180)
		iMoveTime = Servo180; //2mS
	else //Default
		iMoveTime = Servo0; //1mS
		
	//for(i = 0; i <50; i++){
		iTime = getTimeUs();
		SERVO = 1;
		while((getElapsedTimeUs(iTime) <= iMoveTime));
		
		iTime = getTimeUs();	
		SERVO = 0;		
		while((getElapsedTimeUs(iTime) <= (20000-iMoveTime)));
	//
	
}	
//--------------------------------------------------------------------------------------------------------------------------------------------

// ==========================================================================================================================================
// Functions
// ==========================================================================================================================================
void userInterruptHandler(void);
void init(void);
void program(void);

void philrobokit_init(void)
{
	REGISTER_TRISA = CONST_DEFAULT_CONFIG_PORTA;
	REGISTER_TRISB = CONST_DEFAULT_CONFIG_PORTB;
	REGISTER_TRISC = CONST_DEFAULT_CONFIG_PORTC;
	REGISTER_TRISD = CONST_DEFAULT_CONFIG_PORTD;
	REGISTER_TRISE = CONST_DEFAULT_CONFIG_PORTE;	
}	

//Main Program Routine
int main(void)
{
	//philrobokit_init();	//Configure Defaults	
	timerInit();	//Hardware Delay
	
	init();
	
	while(1){
		program();	
	}	
	
	return 0;
}	

// ==========================================================================================================================================
// Interrupt Service Routine
// ==========================================================================================================================================
void interrupt isr(void)
{
	timerInterruptHandler();
	//adcInterruptHandler();
	serialRxInterruptHandler();	
	serialTxInterruptHandler();
	//userInterruptHandler();			
}

/* End of PhilRobokit_Macro.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

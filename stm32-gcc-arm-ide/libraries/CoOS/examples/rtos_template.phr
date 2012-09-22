#include <platform.h>
#include <CoOS.h>

/*------- Define  -----------*/
#define TASK_STK_SIZE		  128
#define LED_TASK_PRI 		  4
#define UART_TASK_PRI 		  4

OS_STK   uart_print_Stk[TASK_STK_SIZE];
OS_STK   led_task_Stk[TASK_STK_SIZE];

static void led_task( void *pdata );
static void uart_task( void *pdata );

int main()
{
	Serial.begin(115200);
	
	Serial.print ("\n+------------------------------------------------+ \n"   );
	Serial.print ("| CooCox RTOS Demo for Cortex-M3 MCU(STM32F10x). | \n"   );
	Serial.print ("+------------------------------------------------+ \n\n" );

	Serial.print ("\r Initial CooCox RTOS...              ");
	CoInitOS();                               /*!< Initial CooCox RTOS          */
	Serial.print (" [OK]. \n");

	Serial.print ("\r Create a \"task_init\" task...        ");

	CoCreateTask( led_task, (void *)0, LED_TASK_PRI ,
			&led_task_Stk[TASK_STK_SIZE - 1], TASK_STK_SIZE );

	CoCreateTask( uart_task, (void *)0, UART_TASK_PRI ,
			&uart_print_Stk[TASK_STK_SIZE - 1], TASK_STK_SIZE );

	Serial.print ("\r Start multi-task.\n");
	CoStartOS ();

	return 0;
}

void uart_task( void *pdata )
{
    char buff[50];

    for( ;; )
    {
        Serial.print("what's your name?: ");
        Serial.gets(buff, 50);
        if(buff[0])
            Serial.print("hi there, %s!\n", buff);
    }
}

void led_task( void *pdata )
{
    pinMode(LED_PIN, OUTPUT);
    for( ;; )
    {
        setPinHigh(LED_PIN);
        CoTickDelay(5);
        setPinLow(LED_PIN);
        CoTickDelay(5);
    }
}


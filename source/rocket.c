#include <stdio.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "FreeRTOS.h"
#include "task.h"

#include "usart_driver.h"
#include "clksys_driver.h"

#define USART USARTE0
#define NORMAL_PRIORITY			( tskIDLE_PRIORITY + 1 )

int serialPut(char c, FILE *stream);

static FILE mystdout = FDEV_SETUP_STREAM(serialPut, NULL, _FDEV_SETUP_WRITE);
USART_data_t USART_data;
volatile uint32_t millis = 0;
uint32_t now = 0;

static void vHelloWorld( void *pvParameters );
static void vBlink( void *pvParameters );

int main(void) {

	PORTE.DIRSET = PIN3_bm | PIN0_bm;
	PORTE.DIRCLR = PIN2_bm;

	USART_InterruptDriver_Initialize(&USART_data, &USART, USART_DREINTLVL_LO_gc);
	USART_Format_Set(USART_data.usart, USART_CHSIZE_8BIT_gc, USART_PMODE_DISABLED_gc, false);
	USART_RxdInterruptLevel_Set(USART_data.usart, USART_RXCINTLVL_LO_gc);
	USART_Baudrate_Set(&USART, 12 , 4);
	USART_Rx_Enable(USART_data.usart);
	USART_Tx_Enable(USART_data.usart);
	stdout = &mystdout;

	printf("Hello World!\r\n");


	/* Create the tasks defined within this file. */
	xTaskCreate( vHelloWorld, ( signed char * ) "Hello", configMINIMAL_STACK_SIZE, NULL, NORMAL_PRIORITY, NULL );
	xTaskCreate( vBlink, ( signed char * ) "Blink", configMINIMAL_STACK_SIZE, NULL, NORMAL_PRIORITY, NULL );

	vTaskStartScheduler();

  return 0;
}

static void vHelloWorld( void *pvParameters ) {
	
	/* The parameters are not used. */
	( void ) pvParameters;

	for( ;; )
	{
		vTaskDelay( 1000 );
		printf("Hello World!\r\n");
	}
}

static void vBlink( void *pvParameters ) {
	
	/* The parameters are not used. */
	( void ) pvParameters;


	for( ;; )
	{
		vTaskDelay( 1125 );
		PORTE.OUTTGL = PIN0_bm;
	}
}

int serialPut(char c, FILE *stream) {
	USART_TXBuffer_PutByte(&USART_data, c);
	return 0;
}

ISR(USARTE0_RXC_vect)
{
	USART_RXComplete(&USART_data);
}

ISR(USARTE0_DRE_vect)
{
	USART_DataRegEmpty(&USART_data);
}
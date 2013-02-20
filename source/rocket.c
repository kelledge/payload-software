#include <stdio.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "FreeRTOS.h"
#include "task.h"

#include "console.h"

#define NORMAL_PRIORITY			( tskIDLE_PRIORITY + 1 )

static void vHelloWorld( void *pvParameters );

int main(void) {

	xTaskCreate( vHelloWorld, ( signed char * ) "Hello", configMINIMAL_STACK_SIZE, NULL, NORMAL_PRIORITY, NULL );
	vTaskStartScheduler();

  return 0;
}

static void vHelloWorld( void *pvParameters ) {
	xTaskHandle thisTask = xTaskGetCurrentTaskHandle();
	char buf[64];
	/* The parameters are not used. */
	( void ) pvParameters;

	consoleInit();
	vTaskList(buf);
	printf("%s", buf);

	for( ;; ) {
		printf("Running: %u\r\n", xTaskGetTickCount());
		vTaskDelay( 5000 );
	}
}
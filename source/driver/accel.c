#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include <stdint.h>
#include "spi.h"
#include "time.h"
#include "accel.h"

//configure the accelDeviceerometer
void accelStart()
{
	unsigned char byte = 0;
	accelDevice = spiRegisterDevice(&PORTC, PC3, 3, "ACCEL");
	

	if (accelSelfTest()) {
		//waits for power register to respond correctly
		while(byte != 0x28)
		{
			regWrite(POWER_CTL, 0x28);	
			_delay_ms(5);		
			byte = regRead(POWER_CTL);
		}
		//set data format to full resolution
		while(byte != 0x8B)
		{
			regWrite(DATA_FORMAT, 0x8B);	
			_delay_ms(5);		
			byte = regRead(DATA_FORMAT);
		}
		//bypass FIFO modes
		while(byte != 0x00)
		{
			regWrite(FIFO_CTL, 0x00);	
			_delay_ms(5);		
			byte = regRead(FIFO_CTL);
		}
	}
	else {
		printf("ERROR: Failed Self Test\r\n");
	}

}

unsigned char accelSelfTest()
{
	if( regRead(DEVID) == 0xE5)
		return 1;
	else
		return 0;
}

// reads a register
unsigned char regRead(char register_name)
{
	unsigned char in_byte;
	register_name |= 0x80; // need to set bit 7 to indicate a read
	spiMakeCurrent(accelDevice);
		spiSelect();
		spiTransferByte(register_name); // send the address of the register we want to read first
		in_byte = spiTransferByte(0); // read register
		spiDeselect();
	spiFree(accelDevice);
	return in_byte; //return with value
}

// reads sequential registers
void regSequentialRead(char regNameStart, unsigned char len, unsigned char *buf)
{
	regNameStart |= 0x80; // need to set bit 7 to indicate a read	
	spiMakeCurrent(accelDevice);
		spiSelect();	
		spiTransferByte(regNameStart);	
		while(len--) {
			*buf = spiTransferByte(0);
			buf++;
		}	
		spiDeselect();
	spiFree(accelDevice);
}

// write to a register
void regWrite(char register_name, unsigned char data)
{
	register_name &= ~0x80; // clear bit 7 to indicate a write
	spiMakeCurrent(accelDevice);
		spiSelect();
		spiTransferByte(register_name); // send the address of the register we want to write
		spiTransferByte(data); // send the data
		spiDeselect();
	spiFree(accelDevice);
}

//read x, y, z from accelDeviceerometer
void accelUpdate(void)
{
	int8_t x, y, z;
	unsigned char buf [6];
	
	x = regRead(DATAX0);
	y = regRead(DATAY0);
	z = regRead(DATAZ0);

	printf("[%d %d %d]\r\n",x, y, z);

	/*
	v->x = regRead(ACCEL_OUTX);
	v->y = regRead(ACCEL_OUTY);
	v->z = regRead(ACCEL_OUTZ);
	v->t = systemTime;
	*/
}



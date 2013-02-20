#include <avr/io.h>
#include <stdio.h>
#include <stdint.h>
#include "spi.h"
#include "time.h"
#include "log.h"
#include "sd.h"


unsigned char i, t = 0;
unsigned char response[5];

unsigned char sdStart(void) {
	
	sdDevice = spiRegisterDevice(&PORTB, PB1, 0, "SD");
	long int t;
	unsigned char ocr[4];
	
	spiMakeCurrent(sdDevice);
		
		//First send 80 clocks
		for(i=0;i<10;i++)
			spiTransferByte(0xff);
		
		spiSelect();
		
		//CMD0
		if (sdSendCommand(CMD0, 0, 0x95) == 1) {
			/*
			SDv2.X
			*/	
			if (sdSendCommand(CMD8, 0x1aa, 0x87) == 1) {
				logPrint("INFO:SDv2.X\r\n");
				//Grab R7 response
				for (i = 0; i < 4; i++) ocr[i] = spiTransferByte(0xff);
				//Check voltage range
				if (ocr[2] != 0x01 && ocr[3] != 0xaa) {
					logPrint("ERROR: Voltage Range\r\n");
					return 1;
				}
				//Wait up to 100ms to leave idle
				t = systemTime;
				do {
					if (systemTime - t >= 100) {
						logPrint("ERROR: Timeout\r\n");
						return 1;
					}
				} while (sdSendCommand(ACMD41, 0x40000000, 0x01));
				//Check CCS field
				if (sdSendCommand(CMD58, 0, 0x01) == 0) {
					//Grab R7 response
					for (i = 0; i < 4; i++) ocr[i] = spiTransferByte(0xff);
					//Check CCS bit
					//if (ocr[0] & 0x40) ;
					//else ;
				}
				//Get card status
				if (sdSendCommand(CMD13, 0, 0x01) == 0) {
					//Grab R2 response
					spiTransferByte(0xff);
				}
				return 1;
			}
			/*
			SDv1.X
			*/
			else {
				logPrint("INFO:SDv1.X\r\n");
				//Wait up to 100ms to leave idle
				t = systemTime;
				do {
					if (systemTime - t >= 1000) {
						logPrint("ERROR: Timeout\r\n");
						return 1;
					}
				} while (sdSendCommand(ACMD41, 0, 0x01));
				//Check OCR
				if (sdSendCommand(CMD58, 0, 0x01) == 0) {
					//Grab R7 response
					for (i = 0; i < 4; i++) ocr[i] = spiTransferByte(0xff);
					//Check CCS bit
					//if (ocr[0] & 0x40) ;
					//else ;
				}
				//Get card status
				if (sdSendCommand(CMD13, 0, 0x01) == 0) {
					//Grab R2 response
					spiTransferByte(0xff);
				}
				return 2;
			}
		}
		
		spiDeselect();		
	spiFree(sdDevice);
	logPrint("ERROR: No Card\r\n");
	
	return 0;
}

unsigned char sdSendCommand(uint16_t cmd, unsigned long arg, unsigned char crc)
{
	unsigned char r, i, t1, t2;
	

	
	//Check for APP command, must send CMD55 first
	if (cmd & 0x80) {
		cmd &= 0x7F;
		r = sdSendCommand(CMD55, 0, 0x01);
		if (r > 1) return r;
	}
	
	//?
	spiTransferByte(0xff);
	
	//Send Command
	spiTransferByte(cmd);
	//Send Argument
	spiTransferLong(arg);
	//Send CRC
	spiTransferByte(crc);
	
	//Wait for Response
	i = 10;
	do {
		r = spiTransferByte(0xff);
	} while ((r & 0x80) && --i);
	
	return r;
}

unsigned char sdReadSingleBlock(unsigned long block)
{
	int cnt;
	unsigned char r;
	
	block *= 512;
	
	spiMakeCurrent(sdDevice);
		spiSelect();
		
		if ((r = sdSendCommand(CMD17, block, 0x01)) == 0x00) {	
		
		}
		spiDeselect();
	spiFree(sdDevice);

	return 1;
}

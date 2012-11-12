//Responses
#define RES_MASK 	0xFF00
#define R1			0x0000
#define R1b			0x0100
#define R2			0x0200
#define R3			0x0300
#define R7			0x0400

//R1 Bitfield
#define IN_IDLE		0x01
#define ERASE_RST	0x02
#define ILLEGAL_CMD	0x04
#define CRC_ERR		0x08
#define ERASE_ERR	0x10
#define ADDR_ERR	0x20
#define PARM_ERR	0x40

//Command			Response		Index
#define CMD0		(R1<<8) 	| 	(0x40 | 0)	/* GO_IDLE_STATE */
#define CMD1		(0x00<<8)	|	(0x40 | 1)	/* SEND_OP_COND (MMC) */
#define CMD8		(0x00<<8)	|	(0x40 | 8)	/* SEND_IF_COND */
#define CMD13		(0x00<<8)	|	(0x40 | 13)	/* SEND_STATUS*/
#define CMD16		(0x00<<8)	|	(0x40 | 16)	/* SET_BLOCKLEN */
#define CMD17		(0x00<<8)	|	(0x40 | 17)	/* READ_SINGLE_BLOCK */
#define CMD24		(0x00<<8)	|	(0x40 | 24)	/* WRITE_BLOCK */
#define CMD55		(0x00<<8)	|	(0x40 | 55)	/* APP_CMD */
#define CMD58		(0x00<<8)	|	(0x40 | 58)	/* READ_OCR */
#define	ACMD41		(0x00<<8)	|	(0xC0 | 41)	/* SEND_OP_COND (SDC) */

uint8_t resBuf[5];


struct spiDevice *sdDevice;

unsigned char sdStart(void);
unsigned char sdSendCommand(uint16_t cmd, unsigned long arg, unsigned char crc);
unsigned char sdReadSingleBlock(unsigned long block);
unsigned char sdWriteSingleBlock(unsigned long block);



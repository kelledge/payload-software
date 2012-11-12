//ss pin
#define ACCEL_SS		0x01

//opcodes
#define DEVID			0x00
#define POWER_CTL		0x2D
#define DATA_FORMAT		0x31
#define DATAX0			0x32
#define DATAX1			0x33
#define DATAY0			0x34
#define DATAY1			0x35
#define DATAZ0			0x36
#define DATAZ1			0x37
#define FIFO_CTL		0x38
#define ACCEL_CR2		0x21
#define ACCEL_CR3		0x22
#define ACCEL_SR		0x27
#define ACCEL_OUTX		0x29
#define ACCEL_OUTY		0x2B
#define ACCEL_OUTZ		0x2D

struct vector {
	signed char x;
	signed char y;
	signed char z;
	long t;
}accelVector;

struct spiDevice *accelDevice;

//functions
void accelStart(void);
unsigned char accelSelfTest(void);
unsigned char regRead(char register_name);
void regSequentialRead(char regNameStart, unsigned char len, unsigned char *buf);
void regWrite(char register_name, unsigned char data);
void accelUpdate(void);


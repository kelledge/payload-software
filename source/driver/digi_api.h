#ifndef DIGI_API_H_
#define DIGI_API_H_

#include <stdlib.h>
#include <string.h>

#include "serial.h"

struct dataBuffer {
  uint16_t length;
  uint8_t checksum;
  uint8_t *payload;
  uint8_t size;
};

struct dataBuffer *newTxBuffer(size_t max);
void appendTxBuffer(struct dataBuffer *buf, uint8_t *data, size_t length);
void writeBuffer(struct dataBuffer *buf);
void clearBuffer(struct dataBuffer *buf);
void escapedPut(uint8_t c);

#endif
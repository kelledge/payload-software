#include "digi_api.h"

struct dataBuffer *newTxBuffer(size_t max) {
  struct dataBuffer *newBuffer = (struct dataBuffer *) malloc( sizeof(struct dataBuffer) );
  newBuffer->payload = (uint8_t *) malloc(max);
  newBuffer->size = max;
  newBuffer->length = 0;
  newBuffer->checksum = 0;

  return newBuffer;
}

void appendTxBuffer(struct dataBuffer *buf, uint8_t *data, size_t length) {
  // Copy into payload, with offset
  memcpy((buf->payload + buf->length), data, length);
  buf->length += length;
  // Update checksum
  uint8_t i = buf->length;
  uint8_t *p = buf->payload;
  buf->checksum = 0;
  while(i--) {
    buf->checksum += *p;
    p++;
  }
  buf->checksum = 0xFF - buf->checksum;
}

void clearBuffer(struct dataBuffer *buf) {
  buf->length = 0;
  buf->checksum = 0;
  memset(buf->payload, 0x00, buf->size);
}

void writeBuffer(struct dataBuffer *buf) {
  uint16_t i = buf->length;
  uint8_t *p = buf->payload;

  serialPut(0x7E, NULL);
  escapedPut( (uint8_t) (buf->length >> 8) );
  escapedPut( (uint8_t) buf->length );

  while(i--) {
    escapedPut(*p);
    p++;
  }

  escapedPut(buf->checksum);
}

void escapedPut(uint8_t c) {
  if (c == 0x7E ||
    c == 0x7D ||
    c == 0x11 ||
    c == 0x13) {
    // Do escape
    c ^= 0x20;
    serialPut( (char) 0x7D, NULL);
  }
  serialPut( (char) c, NULL);
}

#include <xc.h>
#include "i2c.h"

void delayI2C(void) {
  for (int i=0; i<5; i++) {};
}

void initI2C(void) {
  TRIS_SDA = 0; //set SDA as output
  SCL = 1;
  SDA = 1;
}

void startI2C(void) {
  SCL = 1;
  SDA = 1;
  delayI2C();
  SDA = 0; // 1 -> 0
  delayI2C();
}

void stopI2C(void) {
  SCL = 1;
  SDA = 0;
  delayI2C();
  SDA = 1; // 0 -> 1
  delayI2C();
}

void writeI2C(unsigned char val) {
  unsigned char i;
  SCL = 0;
  //convert val into binary and store it at SDA
  for(i=0;i<8;i++) {
    SDA = ((val>>(7-i))& 0x01);
    SCL = 1; //+1 clock
    delayI2C();
    SCL = 0;
  }
  SDA = 1;
  delayI2C();
  SCL = 1; //+1 clock
  delayI2C();
  SCL = 0;
}


unsigned char readI2C(unsigned char ack) {
  char i;
  unsigned char ret = 0;
  SCL = 0;
  TRIS_SDA = 1; //SDA as input
  SDA = 1;
  //get byte value from SDA
  for(i=0;i<8;i++) {
    SCL = 1; //+1 clock
    delayI2C();
    ret |= (SDA<<(7-i));
    SCL = 0;
  }
  TRIS_SDA = 0;
  if(ack) SDA = 0; //acknowledgment
  else SDA = 1;
  delayI2C();
  SCL = 1; //+1 clock
  delayI2C();
  SCL = 0;
  return ret;
}

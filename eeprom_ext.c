#include "i2c.h"
#include"eeprom_ext.h"


unsigned char readEEPROM(unsigned int addr) {
  unsigned char ret;
  unsigned char ah = (addr&0x0100)>>8;
  unsigned char al = addr&0x00FF;
  //start formatting msg
  startI2C();
  if(ah) writeI2C(0xA2);
  else   writeI2C(0xA0);
  writeI2C(al);
  //---------------------
  startI2C();
  if(ah) writeI2C(0xA3);
  else   writeI2C(0xA1);
  //get value from EEPROM
  ret = readI2C(1);
  stopI2C();
  return ret;
}


void writeEEPROM(unsigned int addr, unsigned char val) {
  unsigned int tmp = val;
  unsigned char ah = (addr&0x0100)>>8;
  unsigned char al = addr&0x00FF;
  unsigned char nt = 0;
  //start formatting msg
  do {
    startI2C();
    if(ah) writeI2C(0xA2);
    else   writeI2C(0xA0);
    writeI2C(al);
    writeI2C(tmp);
    stopI2C();
    nt++;
  }
  while((tmp != readEEPROM(addr))&&(nt < 10));
}

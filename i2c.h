#include<xc.h>

#define SCL PORTCbits.RC3
#define SDA PORTCbits.RC4
#define TRIS_SDA TRISCbits.TRISC4

void initI2C(void);
void startI2C(void);
void stopI2C(void);
void writeI2C(unsigned char val);
unsigned char readI2C(unsigned char ack);

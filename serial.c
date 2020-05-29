#include <xc.h>
#include"serial.h"


void initUART(void) {
  //SPBRG = (Fosc / (16 x Baud rate)) - 1, (BRGH = 1 High Speed)
  SPBRG = 25;
  TRISCbits.TRISC7 = 1; //RX
  TRISCbits.TRISC6 = 0; //TX
  //----------------
  TXSTAbits.TX9  = 0;   //8-bit transmission
  TXSTAbits.TXEN = 1;   //transmit enabled
  TXSTAbits.SYNC = 0;   //asynchronous mode
  TXSTAbits.BRGH = 1;   //high baud rate
  //----------------
  RCSTAbits.SPEN = 1;   //serial port enabled (RC7/RX and RC6/TX)
  RCSTAbits.RX9  = 0;   //8-bit reception
  RCSTAbits.CREN = 1;   //enables continuous receive
  //----------------
  PIR1bits.RCIF = 0;    //clean recieve flag
}


void putUART(unsigned char val) {
  TXREG = val;
  while(!TXSTAbits.TRMT); //wait untill TSR becomes empty
}


void writeUART(const char* val) {
  unsigned char i = 0;
  while(val[i]) putUART(val[i++]); //iterate string
  putUART('\n');
  putUART('\r');
  PIR1bits.RCIF = 0; //clean recieve flag
}


unsigned char getUART() {
  while(!PIR1bits.RCIF); //wait untill the data is received
  return RCREG;          //return the received data
}


void readUART(char *buf) {
    char tmp = 1;
    unsigned int i = 0;
    for (i=0 ; i<sizeof(buf) ; i++) {
        tmp = getUART();   //get value
        PIR1bits.RCIF = 0; //clean recieve flag
        //Stop reading if end of string is read
        if (tmp == '\0' || tmp == '\n' || tmp == '\r') break;
        buf[i] = tmp;
    }
    buf[i] = '\0';
}

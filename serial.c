
#include <xc.h>
#include <stdio.h>
#include <string.h>
#include"serial.h"
#include"lcd.h"

void serial_init(void) {
  //SPBRG = (Fosc / (16 x Baud rate)) - 1, BRGH = 1 High Speed
  SPBRG=25; 
  TRISCbits.TRISC7 = 1; //RX
  TRISCbits.TRISC6 = 0; //TX

  TXSTAbits.TX9  = 0;   //8-bit transmission
  TXSTAbits.TXEN = 1;   //transmit enabled
  TXSTAbits.SYNC = 0;   //asynchronous mode
  TXSTAbits.BRGH = 1;   //high baud rate

  RCSTAbits.SPEN = 1;   //serial port enabled (RC7/RX and RC6/TX)
  RCSTAbits.RX9  = 0;   //8-bit reception
  RCSTAbits.CREN = 1;   //enables continuous receive

  PIR1bits.RCIF = 0;    //clean recieve flag
}



void serial_tx(unsigned char val) {
  TXREG=val;
  while(!TXSTAbits.TRMT);
}

void serial_tx_str(const char* val) {
  unsigned char i=0;
  while(val[i]) serial_tx(val[i++]);
  serial_tx('\n');
  serial_tx('\r');
  PIR1bits.RCIF = 0;
}

unsigned char serial_rx() {
  if(RCSTAbits.FERR || RCSTAbits.OERR) { //for errors
      RCSTAbits.CREN=0;
      RCSTAbits.CREN=1;
  }
  while(!PIR1bits.RCIF); // Wait till the data is received
  return RCREG; // Return the received data to calling function
}


/*
char *readSerial(char *s, int len){
  char *p = s;
  do{
    *s = serial_rx();
    s++;
    len--;
    }
  while(len>1);
  *s = '\0';
  //clean recieve flag
  PIR1bits.RCIF = 0;
  return p;
}*/

void readSerial(char *buf) {
    char tmp = 1;
    unsigned int i = 0;
    for (i=0 ; i<sizeof(buf) ; i++) {
        tmp = serial_rx();
        PIR1bits.RCIF = 0;
         //Stop reading if end of string is read
        if (tmp == '\0' || tmp == '\n' || tmp == '\r') break;
        buf[i] = tmp;
    }
    buf[i] = '\0';
}

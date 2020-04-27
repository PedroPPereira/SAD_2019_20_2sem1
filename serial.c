
#include <xc.h>
#include"serial.h"
#include"lcd.h"

void serial_init(void)
{
    SPBRG=103; //SPBRG = (Fosc / (16 x Baud rate)) - 1, BRGH = 1 High Speed
               //SPBRG = (Fosc / (64 x Baud rate)) - 1, BRGH = 0 Low Speed

	//Configuracao da serial
    TXSTAbits.TX9=0;    //transmissao em 8 bits
    TXSTAbits.TXEN=1;  //habilita transmissao
    TXSTAbits.SYNC=0;  //modo assincrono
    TXSTAbits.BRGH=1;  //high baud rate
    RCSTAbits.SPEN=1;  //habilita porta serial - rx
    RCSTAbits.RX9=0;   //recepcao em 8 bits
    RCSTAbits.CREN=1;  //recepcao continua

    //clean recieve flag
    PIR1bits.RCIF = 0;
}



void serial_tx(unsigned char val)
{
  TXREG=val;
  while(!TXSTAbits.TRMT);
}

void serial_tx_str(const char* val)
{
  unsigned char i=0;

  while(val[i])
  {
    serial_tx(val[i]);
    i++;
  }
  serial_tx('\n');
  serial_tx('\r');
  //clean recieve flag
  PIR1bits.RCIF = 0;
}

unsigned char serial_rx()
{
  if(RCSTAbits.FERR || RCSTAbits.OERR)//trata erro
  {
      RCSTAbits.CREN=0;
      RCSTAbits.CREN=1;
  }
  while(!PIR1bits.RCIF); // Wait till the data is received
  PIR1bits.RCIF = 0;    // Clear receiver flag
  return RCREG;       // Return the received data to calling function
}

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
}

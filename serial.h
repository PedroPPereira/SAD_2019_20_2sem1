
void serial_init(void);
void serial_tx(unsigned char val);
void serial_tx_str(const char* val);
unsigned char serial_rx();  /*timeout=0 no time out*/
void readSerial(char *buf);

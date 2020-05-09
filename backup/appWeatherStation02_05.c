#include <windows.h>
#include <stdio.h>
#include <stdbool.h>
#include <conio.h>
#include <string.h>
#include <time.h>
//gcc -o serial.exe appWeatherStation.c
//start serial.exe


//functions
int confirmParam( char *str );


int main()
{
    //serial port configuration
    // Declare variables and structures
    HANDLE hSerial;
    DCB dcbSerialParams = {0};
    COMMTIMEOUTS timeouts = {0};
    // Open the highest available serial port number
    fprintf(stderr, "Opening serial port...  ");
    hSerial = CreateFile(
                "\\\\.\\COM1", GENERIC_READ|GENERIC_WRITE, 0, NULL,
                OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if (hSerial == INVALID_HANDLE_VALUE){
      fprintf(stderr, "Error\n");
      return 1;
    }
    else fprintf(stderr, "Connected\n\n");
    // Set device parameters (9600 baud, 1 start bit, 1 stop bit, no parity)
    dcbSerialParams.DCBlength = sizeof(dcbSerialParams);
    if (GetCommState(hSerial, &dcbSerialParams) == 0) {
        fprintf(stderr, "Error getting device state\n");
        CloseHandle(hSerial);
        return 1;
    }
    dcbSerialParams.BaudRate = CBR_9600;
    dcbSerialParams.ByteSize = 8;
    dcbSerialParams.StopBits = ONESTOPBIT;
    dcbSerialParams.Parity = NOPARITY;
    if(SetCommState(hSerial, &dcbSerialParams) == 0) {
        fprintf(stderr, "Error setting device parameters\n");
        CloseHandle(hSerial);
        return 1;
    }
    // Set COM port timeout settings
    timeouts.ReadIntervalTimeout = 50;
    timeouts.ReadTotalTimeoutConstant = 50;
    timeouts.ReadTotalTimeoutMultiplier = 10;
    timeouts.WriteTotalTimeoutConstant = 50;
    timeouts.WriteTotalTimeoutMultiplier = 10;
    if(SetCommTimeouts(hSerial, &timeouts) == 0) {
        fprintf(stderr, "Error setting timeouts\n");
        CloseHandle(hSerial);
        return 1;
    }

    //init variables
    //write to a serial port
    bool boolWritePort = false; //verification to write
    DWORD bytes_written;
    int ch, count;
    char strConfig[11], c;
    //read a serial port
    char buffer[1], str[15];
    DWORD read, written;
    int i = 0;
    time_t t; //current time
    fprintf(stderr, "---------------------------------------------------\n"
                    "---           SAD WEATHER STATION               ---\n"
                    "---------------------------------------------------\n"
                    "---  History of risk situations  >>  press 1    ---\n"
                    "---  Risk situation config       >>  press 2    ---\n"
                    "---  Get updated info            >>  every 1min ---\n"
                    "---  Get info on the emergency   >>  emergency  ---\n"
                    "---------------------------------------------------\n\n");

    do {
      /*****************************READ SERIAL PORT****************************/
      // check for data on port and display it on screen.
      ReadFile(hSerial, buffer, sizeof(buffer), &read, NULL);
      if ( read && !boolWritePort ){
        //WriteFile(hSerial, buffer, read, &written, NULL);
        str[i++] = *buffer;
        if(*buffer=='\r') {
          time(&t);
          fprintf(stderr, "Recieved at %s \t>>data: %s\n", ctime(&t), str);
          i = 0;
        }
      }

      /*****************************WRITE TO SERIAL PORT************************/
      if( kbhit() ){ //check if key was pressed
        ch = getch(); //get key pressed value

        if(ch == '1') { //History of risk situations
          strcpy(strConfig, "history");
          fprintf(stderr, "\nRequest for history of risk situations\n");
          boolWritePort = true;
        }
        else if(ch == '2') { //Risk situation config
          fprintf(stderr, "\nRequest for risk situation configuration\n"
                          "Define parameters as: Temperature/FanVelocity/Humidity\n"
                          "\t>> param: ");
          strcpy(strConfig, ""); //clean array
          count = 0; //fscanf get parameters
          while ( (c = getchar())!='\n' ) if(count < sizeof(strConfig)) strConfig[count++] = c;
          //while ( count < sizeof(strConfig) ) strConfig[count++] = ' ';
          strConfig[count] = '\0';
          if(confirmParam(strConfig)) boolWritePort = true; //confirm param is well written
          else fprintf(stderr, "\t>> Invalid parameters\n");
        }
      }

      // Send specified text (remaining command line arguments)
      /if( boolWritePort ) {
        fprintf(stderr, "\t>> sending: %s\n",strConfig);
        if(!WriteFile(hSerial, strConfig, strlen(strConfig), &bytes_written, NULL)) {
          fprintf(stderr, "Error\n");
          CloseHandle(hSerial);
          return 1;
        }
        fprintf(stderr, "\t>> %d bytes written\n\n", bytes_written);
        boolWritePort = false;
      }
/*      if( boolWritePort ) {
        count = 0;
        fprintf(stderr, "\t>> sending: %s\n",strConfig);
        int see = 1;
        while(see){
          see = (int)strConfig[count++];
          fprintf(stderr, "\t>> %d", see);
          if(!WriteFile(hSerial, &see, 1, &bytes_written, NULL)) {
            fprintf(stderr, "Error\n");
            CloseHandle(hSerial);
          }
        }
        fprintf(stderr, "\t>> %d bytes written\n\n", count-1);
        boolWritePort = false;
      }*/
    // until user hits ctrl-backspace.
    } while ( ch != 127);


    // Close serial port
    fprintf(stderr, "Closing serial port...  ");
    if (CloseHandle(hSerial) == 0)
    {
        fprintf(stderr, "Error\n");
        return 1;
    }
    fprintf(stderr, "OK\n");
    // exit normally
    return 0;
}




int confirmParam( char *str ){
  int numNum=0, numSlash=0, i=0;
  while(*str){ //input must only contain numbers or '/'
    if ( str[i]==' ' ) continue;
    else if ( (int)str[i]>=48 && (int)str[i]<=57 ) numNum++;
    else if ((int)str[i]==47) numSlash++;
    else if ((int)str[i]==0) break;
    else return 0;
    i++;
  }
  if (numSlash!=2 || numNum>9) return 0;
  return 1;
}
/*int* convertStringToASCII( char* ch ){
  int size = strlen(ch);
  int ascii[size];

  for(int i=0; i < size; i++){
    ascii[i] = (int)ch[i];
  }
  return ascii;
}*/

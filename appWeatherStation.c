#include <windows.h>
#include <stdio.h>
#include <stdbool.h>
#include <conio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>
#include <winsock2.h>
#include <memory.h>
#include "cJSON.h"
#pragma comment(lib,"ws2_32.lib")
//gcc -o serial.exe appWeatherStation.c cJSON.c -lws2_32
//start serial.exe

//functions
int confirmParam( char *str );
int strContains(char *str, char ch);
void storeData(char *str, int* tempC, int* humi, int* windV, char *situation);
void insertXML(FILE *fb, int tempC, int humi, int windV, char *situation, char *time);
void sendServer(int tempC, int humi, int windV, char *situation);
int stringToJSON(char *str, int* tempC, int* humi, int* windV, char *situation);


int main() {
    //serial port configuration
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
    else fprintf(stderr, "Connected\n");
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
    //----------------------------------------------------------------------------------------------------------------------------------
    //socket server-client configuration
    WSADATA wsa;
    // initialize Winsock
    fprintf(stderr, "Initialising Winsock...\n");
    if (WSAStartup(MAKEWORD(2,2), &wsa) != 0) fprintf(stderr, "Failed. Error Code : %d\n", WSAGetLastError());
    else fprintf(stderr, "Initialised\n");

    //----------------------------------------------------------------------------------------------------------------------------------
    //init variables
    //init xml file and json object
    FILE *xmlFile;
    if( (xmlFile = fopen("database.xml","r"))==NULL ){
      xmlFile = fopen("database.xml","w");
      fprintf ( xmlFile,"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
    }
    else xmlFile = fopen("database.xml","a");
    char situation[11]; //adc and situation elements
    int tempC=0, humi=0, windV=0;
    //write to a serial port
    bool boolWritePort = false; //verification to write
    DWORD bytes_written;
    int ch; //character pressed
    char strConfig, c;
    //read a serial port
    char buffer[1], str[40]="\0";
    DWORD read;
    int i = 0, boolJSON = 0;
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
      /*************************************WRITE TO SERIAL PORT*************************************/
      if(kbhit()) {     //check if key was pressed
        ch = getch();   //get key pressed value
        if(ch == '1') { //History of risk situations
          strConfig = 'h';
          fprintf(stderr, "\n///WRITE TO SERIAL PORT///\n"
                          "Request for the risk situations history\n");
          boolWritePort = true;
        }
        else if(ch == '2') { //Risk situation config options
          fprintf(stderr, "\n///WRITE TO SERIAL PORT///\n"
                          "Options for the risk situations config:\n"
                          "press 'a' -> Humidity<10, Wind Speed>70, Temperature>50\n"
                          "press 'b' -> Humidity<20, Wind Speed>60, Temperature>40\n"
                          "press 'c' -> Humidity<30, Wind Speed>50, Temperature>30\n"
                          "\t>> option: ");
          while ( (c = getchar())!='\n' ) strConfig = c; //key pressed for the option
          if((int)strConfig>=97 && (int)strConfig<=99) boolWritePort = true;
          else fprintf(stderr, "\t>> Invalid parameters\n");
        }
      }
      // Send specified text (remaining command line arguments)
      if( boolWritePort ) {
        fprintf(stderr, "\t>> sending byte: %c\n",strConfig);
        if(!WriteFile(hSerial, &strConfig, 1, &bytes_written, NULL)) {
          fprintf(stderr, "Error\n");
          CloseHandle(hSerial);
          return 1;
        }
        fprintf(stderr, "\t>> character sent\n");
        boolWritePort = false;
      }


      /*************************************READ SERIAL PORT*************************************/
      // check for data on port and display it on screen.
      ReadFile(hSerial, buffer, sizeof(buffer), &read, NULL);
      if ( read && !boolWritePort ) {
        str[i++] = *buffer;
        if(*buffer=='\r') {
          time(&t); //current time
          fprintf(stderr, "\n///READ SERIAL PORT///\n"
                          "Recieved at %s"
                          "\t>>data: %s", ctime(&t), str);

          //separate data and write to json and xml
          boolJSON = stringToJSON(str, &tempC, &humi, &windV, situation);
          //fprintf(stderr, "situation %s, temp %d, wind %d, hum %d\n", situation, tempC, windV, humi);
          strcpy(str, "/0"); //clean array
          if(boolJSON) {
            insertXML(xmlFile, tempC, humi, windV, situation, ctime(&t)); //update xml file
            if(!strcmp(situation, "emrg") || !strcmp(situation, "emrgW")) sendServer(tempC, humi, windV, situation); //send data to the server in JSON
          }
          i = 0;
        }
      }

    // until user hits ctrl-backspace.
  } while ( ch != 13);

    // Close serial port and xml file
    fprintf(stderr, "Closing xml file...\n");
    fclose(xmlFile);
    WSACleanup();
    fprintf(stderr, "Closing serial port...\n");
    if (CloseHandle(hSerial) == 0) {
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

int strContains(char *str, char ch) {
  if (strchr(str, ch))
    return 1;
  return 0;
}

void storeData(char *str, int* tempC, int* humi, int* windV, char *situation) {
  char temp[4], hum[4], wind[4];
  int boolCh=0, j=0;
  for(int i=0; i<strlen(str); i++) {
    if(str[i]=='-' || str[i]=='/') {
      boolCh++;
      j = 0;
      continue;
    }
    switch (boolCh) {
      case 0: situation[j++]=str[i]; situation[j]='\0'; break; //bool=0 is the situation
      case 1: temp[j++]=str[i]; break; //bool=1 is the Temperature
      case 2: hum[j++]=str[i]; break; //bool=2 is the Wind
      case 3: wind[j++]=str[i]; break; //bool=3 is the Humidity
      default: break;
    }
  }
  *tempC = atoi(temp);
  *humi = atoi(hum);
  *windV = atoi(wind);
}



void insertXML(FILE *fb, int tempC, int humi, int windV, char *situation, char *time) {
  fprintf ( fb,"<Data>\n");
  fprintf ( fb,"\t<time> \"%s\" </time>\n", strtok(time, "\n"));
  fprintf ( fb,"\t<situation> \"%s\" </situation>\n", situation);
  fprintf ( fb,"\t<temperature> %d </temperature>\n", tempC);
  fprintf ( fb,"\t<windVelocity> %d </windVelocity>\n", windV);
  fprintf ( fb,"\t<humidity> %d </humidity>\n", humi);
  fprintf ( fb,"</Data>\n");
}



void sendServer(int tempC, int humi, int windV, char *situation) {
  //create a socket
  SOCKET s;
  if((s = socket(AF_INET , SOCK_STREAM , 0 )) == INVALID_SOCKET) fprintf(stderr, "\t>>Could not create socket : %d\n" , WSAGetLastError());
  //specifies the address family
  struct sockaddr_in server;
  server.sin_addr.s_addr = inet_addr("193.136.120.133");
  server.sin_family = AF_INET;
  server.sin_port = htons(80);
  //connect to remote server
  if ( connect(s , (struct sockaddr *) & server , sizeof(server) ) == SOCKET_ERROR) fprintf(stderr, "\t>>Connect error\n");
  else{
    //send message to server
    fprintf(stderr, "\t>>sending data to the server...\n");
    time_t t;
    time(&t);
    char message[2048];
    char contentLength[6];
    char *contentJson = jsonToString(tempC, humi, windV, situation, ctime(&t));
    sprintf(contentLength, "%d", strlen(contentJson));

    strcpy(message, "POST /~sad/ HTTP/1.1\r\n");
    strcat(message, "Host: 193.136.120.133:80\r\n");
    strcat(message, "Content-Type: application/json\r\n");
    strcat(message, "Content-Length: ");
    strcat(message, contentLength);
    strcat(message, "\r\n\r\n");
    strcat(message, contentJson);
    strcat(message, "\r\n");
    if( send(s , message , strlen(message) , 0) < 0) fprintf(stderr, "\t>>failed to send data to the server\n");
    else fprintf(stderr, "\t>>data sent to the server\n");
  }
  closesocket(s);
}


int stringToJSON(char *str, int* tempC, int* humi, int* windV, char *situation) {
  const cJSON *s = NULL;
  const cJSON *t = NULL;
  const cJSON *w = NULL;
  const cJSON *h = NULL;
  cJSON *json = cJSON_Parse(str);

  if (json==NULL) {
    fprintf(stderr, "\t>>failed to parse recieved data\n");
    return 0;
  }
  s = cJSON_GetObjectItemCaseSensitive(json, "s");
  if(strlen(s->valuestring)>5) return 0;
  t = cJSON_GetObjectItemCaseSensitive(json, "t");
  w = cJSON_GetObjectItemCaseSensitive(json, "w");
  h = cJSON_GetObjectItemCaseSensitive(json, "h");
  *tempC = t->valueint;
  *windV = w->valueint;
  *humi  = h->valueint;
  strcpy(situation, s->valuestring);
  return 1;
}


#include <string.h>
#include <stdio.h>
#include "tb387.h"


#define TB387_CMD_LOW()     LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_15)
#define TB387_CMD_HIGH()    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_15)


static struct _tb378 {

    uint16_t    id;
    uint8_t     baudrate;
    uint8_t     channel;
    uint8_t     retries;
} TB387;


const char AT_CMD[] = "AT+";
const char AT_CMD_ID[] = "ID=";          // modulio ID (1-65535). Default = 1234
const char AT_CMD_BAUD[] = "BAUD=";      // bodreitas ( 0-9: 2400/4800/9600/19200/38400/57600/115200/128000/256000 ). Default = 2
const char AT_CMD_FREQ[] = "FREQ=";      // kanalo numeris (2402MHz + (1-78) ).
const char AT_CMD_RETRY[] = "RETRY=";    // kiek bandymu (1-100). Default = 100
const char AT_CMD_INF[] = "INF";         // versijos uzklausa
const char AT_CMD_RESET[] = "RESET";     // gamykliniu nustatymu atstatymas

const char AT_REQ_FREQ[] = "FREQ?";      // daznio uzklausa
const char AT_REQ_ID[] = "ID?";          // ID uzklausa
const char AT_REQ_RETRY[] = "RETRY?";    // bandymu kiekio uzklausa


USART_TypeDef *TB387_Port;
uint8_t TB378_NeedUpdateFlag = false;


/* extern variables */
extern uint32_t timestamp;


/*  */
uint8_t TB387_Init(void) {

    uint32_t wait_to = timestamp + 5000;

    TB387_Port = Ports[TB387_PORT].handle;

    TB387_CMD_LOW();

    USART_Config(TB387_PORT, 9600, 8,  USART_PAR_NONE);

    /* bandom prisijungti prie TB378 ir nuskaityti jo parametrus */
    sprintf(ptrPrimaryTxBuffer, "%s", "AT");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag && wait_to > timestamp);

    if( *ptrPrimaryRxBuffer != 'N' ) {
        TB387_CMD_HIGH();
        return 1;
    }

    /* nustatymai pagal nutilejima */
    //TB387_SetDefaults();

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+ID?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    TB387.id = hex2int( ptrPrimaryRxBuffer+9 );

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+BAUD?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    TB387.baudrate = atoi( ptrPrimaryRxBuffer+9 );

    /* jai bodreitas nustatytas didesnis, nei 57600, mazinam iki 57600 */
    if(TB387.baudrate > 6) {
        TB387.baudrate = 6;
        sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+BAUD=", TB387.baudrate);
        USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
        while(RespondWaitingFlag);
    }

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+FREQ?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    TB387.channel = hex2int( ptrPrimaryRxBuffer+9 );

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+RETRY?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    TB387.retries = hex2int( ptrPrimaryRxBuffer+9 );

    TB387_CMD_HIGH();

    USART_Config(TB387_PORT, baudrates[TB387.baudrate], 8,  USART_PAR_NONE);

    return 0;
}


/*  */
void TB387_SetDefaults(void){

    USART_Config(TB387_PORT, 9600, 8,  USART_PAR_NONE);

    TB387_CMD_LOW();

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+RESET");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);

    TB387_CMD_HIGH();
}




/**
 * hex2int
 * take a hex string and convert it to a 32bit number (max 8 hex digits)
 */
uint32_t hex2int(char *hex) {

    uint32_t val = 0;

    while ( *hex ) {

        if( *hex == 0x0d || *hex == 0x0a ) break;

        // get current character then increment
        uint8_t byte = *hex++;

        // transform hex character to the 4bit equivalent number, using the ascii table indexes
        if (byte >= '0' && byte <= '9') byte = byte - '0';
        else if (byte >= 'a' && byte <='f') byte = byte - 'a' + 10;
        else if (byte >= 'A' && byte <='F') byte = byte - 'A' + 10;

        // shift 4 to make space for new digit, and add the 4 bits of the new digit
        val = (val << 4) | (byte & 0xF);
    }

    return val;
}



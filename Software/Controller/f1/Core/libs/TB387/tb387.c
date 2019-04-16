
//#include <string.h>
#include <stdio.h>
#include "tb387.h"


#define TB387_CMD_LOW()     LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_15)
#define TB387_CMD_HIGH()    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_15)

/* extern variables */
extern uint32_t timestamp;


/* nuskaitom konfiga is TB387 ir inicializuojam UART'a */
uint8_t TB387_Init(struct _tb387 *tb) {

    tb->IsPresent = false;

    uint32_t wait_to = timestamp + 5000;

    USART_Config(TB387_PORT, 9600, 8, USART_PAR_NONE);

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    /* bandom prisijungti prie TB378 ir nuskaityti jo parametrus */
    sprintf(ptrPrimaryTxBuffer, "%s", "AT");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag && wait_to > timestamp);

    if( *ptrPrimaryRxBuffer != 'N' ) {
        TB387_CMD_HIGH();
        return 1;
    }

    tb->IsPresent = true;

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+ID?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    tb->id = hex2int( ptrPrimaryRxBuffer+9 );

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+BAUD?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    tb->baudrate = atoi( ptrPrimaryRxBuffer+9 );

    /* jai bodreitas nustatytas didesnis, nei 57600, mazinam iki 57600 */
    if(tb->baudrate > 6) {
        tb->baudrate = 6;
        sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+BAUD=", tb->baudrate);
        USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
        while(RespondWaitingFlag);
    }

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+FREQ?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    tb->channel = hex2int( ptrPrimaryRxBuffer+9 );

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+RETRY?");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);
    tb->retries = hex2int( ptrPrimaryRxBuffer+9 );

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    Ports[TB387_PORT].Conf.MbAddr = tb->id;
    Ports[TB387_PORT].Conf.Baudrate = baudrates[tb->baudrate];

    USART_Config(TB387_PORT, Ports[TB387_PORT].Conf.Baudrate, Ports[TB387_PORT].Conf.DataBits, Ports[TB387_PORT].Conf.Parity);

    return 0;
}


/*  */
uint8_t TB387_Config(struct _tb387 *tb){

    if(tb->IsPresent == false) return 1;

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+ID=", tb->id);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+BAUD=", tb->baudrate);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+FREQ=", tb->channel);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+RETRY=", tb->retries);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    return 0;
}



/* grazinam defoltinius nustatymus TB387 ir sukonfiguruojam UART'a */
void TB387_SetDefaults(struct _tb387 *tb){

    USART_Config(TB387_PORT, 9600, 8,  USART_PAR_NONE);

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+RESET");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    TB387_Init(tb);
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




//#include <string.h>
#include <stdio.h>
#include "tb387.h"
#include "bsp_func.h"


#define TB387_CMD_LOW()     LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_15)
#define TB387_CMD_HIGH()    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_15)


/* extern variables */
extern uint32_t timestamp;

/* locals */
TB387_TypeDef TB387;

static const TB387_Target_TypeDef targets[3] = {
    { 0x1234,   BR9600,     0x27 },
    { 0x10,     BR19200,    0x27 },
    { 0x15,     BR57600,    0x27 }
};

const TB387_Target_TypeDef *TargetOne = &targets[0];
const TB387_Target_TypeDef *TargetTwo = &targets[1];
const TB387_Target_TypeDef *TargetThree = &targets[2];


/* nuskaitom konfiga is TB387 ir inicializuojam UART'a */
uint8_t TB387_Init(TB387_TypeDef *tb) {

    tb->IsPresent = false;

    uint32_t wait_to = timestamp + 5000;

    USART_Config(TB387_PORT, 9600, 8, UART_PAR_NONE);

    //TB387_SetDefaults(&TB387);

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

    /*  */
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

    Ports[TB387_PORT].Conf.Baudrate = tb->baudrate;

    return 0;
}


/*  */
uint8_t TB387_Config(TB387_TypeDef *tb){

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
void TB387_SetDefaults(TB387_TypeDef *tb){

    USART_Config(TB387_PORT, 9600, 8,  UART_PAR_NONE);

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    sprintf(ptrPrimaryTxBuffer, "%s", "AT+RESET");
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);
    while(RespondWaitingFlag);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;
}


/* pasirenkam TB387 targeta */
uint8_t TB387_SelectTarget(TB387_TypeDef *tb, const TB387_Target_TypeDef *tg){

    if(tb->IsPresent == false) return 1;

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    tb->id = tg->id;
    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+ID=", tg->id);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    tb->baudrate = tg->baudrate;
    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+BAUD=", tg->baudrate);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    tb->channel = tg->channel;
    sprintf(ptrPrimaryTxBuffer, "%s%u", "AT+FREQ=", tg->channel);
    USART_SendString(TB387_PORT, ptrPrimaryTxBuffer);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    Ports[TB387_PORT].Conf.Baudrate = tb->baudrate;

    return 0;
}





#include "tb387.h"
#include "bsp_func.h"

/*
Duomenu formatas konfiguruojant TB387:

Parametrai HEX formatu be 0x prekyje.

ID: ne maziau 4-iu zenklu su lydinciais nuliais priekyje
BAUD: vienas zenklas
FREQ: ne maziau 2-iu zenklu su lydinciais nuliais
RETRY: ne maziau 2-iu zenklu su lydinciais nuliais
*/


#define TB387_CMD_LOW()     LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_15)
#define TB387_CMD_HIGH()    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_15)



/* extern variables */
extern uint32_t timestamp;

/* locals */
TB387_TypeDef TB387;

static const TB387_Target_TypeDef targets[3] = {
    { 1234,   BR9600,     27 },
    { 10,     BR19200,    15 },
    { 15,     BR57600,    27 }
};

const TB387_Target_TypeDef *TargetOne = &targets[0];
const TB387_Target_TypeDef *TargetTwo = &targets[1];
const TB387_Target_TypeDef *TargetThree = &targets[2];


/* nuskaitom konfiga is TB387 ir inicializuojam UART'a */
uint8_t TB387_Init(TB387_TypeDef *tb) {

    char *TxBuffer = SysData.Ports[TB387_PORT].Registers.TxBuffer;
    char *RxBuffer = SysData.Ports[TB387_PORT].Registers.RxBuffer;


    tb->IsPresent = false;

    uint32_t wait_to = timestamp + 5000;

    USART_Config(TB387_PORT, 9600, 8, UART_PAR_NONE);

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    Delay_ms(10);

    /* bandom prisijungti prie TB378 ir nuskaityti jo parametrus */
    sprintf(TxBuffer, "%s", "AT");
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag && wait_to > timestamp);

    if( *RxBuffer != 'N' ) {
        TB387_CMD_HIGH();
        return 1;
    }

    /*  */
    tb->IsPresent = true;

    sprintf(TxBuffer, "%s", "AT+ID?");
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);
    tb->id = hex2int( RxBuffer+9 );

    sprintf(TxBuffer, "%s", "AT+BAUD?");
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);
    tb->baudrate = atoi( RxBuffer+9 );

    /* jai bodreitas nustatytas didesnis, nei 57600, mazinam iki 57600 */
    if(tb->baudrate > 6) {
        tb->baudrate = 6;
        sprintf(TxBuffer, "%s%u", "AT+BAUD=", tb->baudrate);
        USART_SendString(TB387_PORT, TxBuffer);
        while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);
    }

    sprintf(TxBuffer, "%s", "AT+FREQ?");
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);
    tb->channel = hex2int( RxBuffer+9 );

    sprintf(TxBuffer, "%s", "AT+RETRY?");
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);
    tb->retries = hex2int( RxBuffer+9 );

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    SysData.Ports[TB387_PORT].Config.Baudrate = tb->baudrate;

    return 0;
}


/*  */
uint8_t TB387_Config(TB387_TypeDef *tb){

    char *TxBuffer = SysData.Ports[TB387_PORT].Registers.TxBuffer;

    if(tb->IsPresent == false) return 1;

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    Delay_ms(10);

    sprintf(TxBuffer, "%s%04u", "AT+ID=", tb->id);
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    sprintf(TxBuffer, "%s%u", "AT+BAUD=", tb->baudrate);
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    sprintf(TxBuffer, "%s%02u", "AT+FREQ=", tb->channel);
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    sprintf(TxBuffer, "%s%03u", "AT+RETRY=", tb->retries);
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    return 0;
}


/* grazinam defoltinius nustatymus TB387 ir sukonfiguruojam UART'a */
void TB387_SetDefaults(TB387_TypeDef *tb){

    char *TxBuffer = SysData.Ports[TB387_PORT].Registers.TxBuffer;

    USART_Config(TB387_PORT, 9600, 8,  UART_PAR_NONE);

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    Delay_ms(10);

    sprintf(TxBuffer, "%s", "AT+RESET");
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;
}


/* pasirenkam TB387 targeta */
uint8_t TB387_SelectTarget(TB387_TypeDef *tb, const TB387_Target_TypeDef *tg){

    char *TxBuffer = SysData.Ports[TB387_PORT].Registers.TxBuffer;

    if(tb->IsPresent == false) return 1;

    tb->ConfigModeIsActive = true;

    TB387_CMD_LOW();

    Delay_ms(10);

    tb->id = tg->id;
    sprintf(TxBuffer, "%s%04u", "AT+ID=", tg->id);        // 4-ju zenklu su nuliais prikyje!!!
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    tb->baudrate = tg->baudrate;
    sprintf(TxBuffer, "%s%u", "AT+BAUD=", tg->baudrate);
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    tb->channel = tg->channel;
    sprintf(TxBuffer, "%s%02u", "AT+FREQ=", tg->channel); // 2-ju zenklu su nuliais priekyje!!!
    USART_SendString(TB387_PORT, TxBuffer);
    while(SysData.Ports[TB387_PORT].Registers.ReceiveTimeoutFlag);

    TB387_CMD_HIGH();

    tb->ConfigModeIsActive = false;

    SysData.Ports[TB387_PORT].Config.Baudrate = tb->baudrate;

    return 0;
}




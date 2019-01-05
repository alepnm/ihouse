#include "defs.h"
#include "usart.h"


#define USART_PAR_NONE  0   //MB_PAR_NONE
#define USART_PAR_ODD   1   //MB_PAR_ODD
#define USART_PAR_EVEN  2   //MB_PAR_EVEN


USART_TypeDef* ports[3u] = {USART1, USART2, NULL};

const uint32_t baudrates[6u] = { 2400u, 4800u, 9600u, 19200u, 38400u, 57600u };


/*
     0-15 - Baudrate
    16-17 - Parity
    18-19 - StopBits
    20-22 - DataBits
    23-25 - baudreito indeksas is bodreitu masyvo
    26-27 - naudojamo USART porto numeris
*/
uint32_t    Usart_ConfigRegister;

extern LL_USART_InitTypeDef USART_InitStruct;

uint8_t UsartState = 0; // 0-IDLE, 1-RXNE, 2-TC
uint8_t RxByte;

static uint8_t RxBuffer[255];
static uint8_t TxBuffer[255], TxBytesQuant = 0, TxByteIdx = 0;


/*  */
void USART_Config(uint8_t ucPORT, uint32_t ulBaudRate, uint32_t ulDataBits,  uint8_t ulParity ) {

    UNUSED(ulDataBits);

    do{
         LL_USART_Disable(ports[ucPORT]);
    }while( LL_USART_IsEnabled(ports[ucPORT]) );

    /* cia reiketu patikrinti baudreito reiksme - ar ji standartine? */
    USART_InitStruct.BaudRate = ulBaudRate;

    switch(ulParity) {
    case USART_PAR_ODD:
        USART_InitStruct.Parity = LL_USART_PARITY_ODD;
    case USART_PAR_EVEN:
        USART_InitStruct.Parity = LL_USART_PARITY_EVEN;
        USART_InitStruct.DataWidth = LL_USART_DATAWIDTH_9B;
        break;
    default:
        USART_InitStruct.Parity = LL_USART_PARITY_NONE;
        USART_InitStruct.DataWidth = LL_USART_DATAWIDTH_8B;
    }

    LL_USART_Init(ports[ucPORT], &USART_InitStruct);

    do{
        LL_USART_Enable(ports[ucPORT]);
    }while( !LL_USART_IsEnabled(ports[ucPORT]) );
}


/*  */
void USART_SendByte( uint8_t ucPORT, uint8_t data ){
    LL_USART_TransmitData8(ports[ucPORT], data);
    LL_USART_EnableIT_TC(ports[ucPORT]);
    UsartState = USART_STATE_TX;
}


/*  */
void USART_Send( uint8_t ucPORT, void* buf, size_t size_of_data ){

    uint8_t i = 0;

    while( i < size_of_data ){
        TxBuffer[i] = *((uint8_t*)buf+i);
        i++;
    }

    TxBytesQuant = size_of_data;
    TxByteIdx = 0;
    USART_SendByte(ucPORT, TxBuffer[0]);
}



/*  */
void USART_SendString( uint8_t ucPORT, const char* str ){

    uint8_t i = 0;

    while( *(str+i) > 0x00 ){
        TxBuffer[i] = *(str+i);
        i++;
    }

    TxBytesQuant = i;
    TxByteIdx = 0;
    USART_SendByte(ucPORT, TxBuffer[0]);
}



/*  */
uint8_t GetIndexByBaudrate( uint32_t baudrate ) {

    uint8_t i = 0;

    while(baudrate != baudrates[i]) {
        if( i >= ( sizeof(baudrates)/sizeof(baudrate) ) ) {
            i = 0xFF;
            break;
        }

        i++;
    }

    return i;
}


/*  */
void USART1_IRQ_Handler(void){

    if( LL_USART_IsActiveFlag_RXNE(USART1) && LL_USART_IsEnabledIT_RXNE(USART1) ) {

        RxByte = LL_USART_ReceiveData8(USART1);

        UsartState = USART_STATE_IDLE;
    }

    if( LL_USART_IsActiveFlag_TC(USART1) && LL_USART_IsEnabledIT_TC(USART1) ) {
        if(--TxBytesQuant > 0){

            LL_USART_TransmitData8(USART1, TxBuffer[++TxByteIdx]);

        }else{
            LL_USART_ClearFlag_TC(USART1);

            LL_USART_DisableIT_TC(USART1);

            UsartState = USART_STATE_IDLE;
        }
    }
}


/*  */
void USART2_IRQ_Handler(void){


}



#include "defs.h"
#include "usart.h"
#include "io.h"
#include "tb387.h"

#if defined(MODBUS_PORT)
    #include "mbport.h"
#endif


Port_TypeDef Ports[2] = {

    {
        .handle = USART1,
        .Conf = {.MbAddr = 1, .Baudrate = BR19200, .Parity = UART_PAR_NONE, .StopBits = 1, .DataBits = 8 }
    },

    {
        .handle = USART2,
        .Conf = {.MbAddr = 1, .Baudrate = BR19200, .Parity = UART_PAR_NONE, .StopBits = 1, .DataBits = 8 }
    }
};

PortRegister_TypeDef port_register[2];

uint8_t TxState = USART_STATE_IDLE;
uint8_t NewMessageReceivedFlag = false;
uint8_t RespondWaitingFlag = false;


char *ptrPrimaryRxBuffer = port_register[PRIMARY_PORT].RxBuffer;
char *ptrPrimaryTxBuffer = port_register[PRIMARY_PORT].TxBuffer;
char *ptrSecondaryRxBuffer = port_register[SECONDARY_PORT].RxBuffer;
char *ptrSecondaryTxBuffer = port_register[SECONDARY_PORT].TxBuffer;

const uint32_t baudrates[7] = { 2400u, 4800u, 9600u, 14400u, 19200u, 38400u, 57600u };


/*  */
void USART_Config(uint8_t ucPORT, uint32_t ulBaudRate, uint32_t ulDataBits,  uint8_t ulParity ) {

    USART_TypeDef *port = Ports[ucPORT].handle;

    LL_USART_InitTypeDef USART_InitStruct = {
        .BaudRate = 19200,
        .DataWidth = LL_USART_DATAWIDTH_8B,
        .StopBits = LL_USART_STOPBITS_1,
        .Parity = LL_USART_PARITY_NONE,
        .TransferDirection = LL_USART_DIRECTION_TX_RX,
        .HardwareFlowControl = LL_USART_HWCONTROL_NONE,
    };

    UNUSED(ulDataBits);

    do {
        LL_USART_Disable(port);
    } while( LL_USART_IsEnabled(port) );

    /* cia reiketu patikrinti baudreito reiksme - ar ji standartine? */
    USART_InitStruct.BaudRate = ulBaudRate;

    switch(ulParity) {
    case UART_PAR_ODD:
        USART_InitStruct.Parity = LL_USART_PARITY_ODD;
    case UART_PAR_EVEN:
        USART_InitStruct.Parity = LL_USART_PARITY_EVEN;
        USART_InitStruct.DataWidth = LL_USART_DATAWIDTH_9B;
        break;
    default:
        USART_InitStruct.Parity = LL_USART_PARITY_NONE;
        USART_InitStruct.DataWidth = LL_USART_DATAWIDTH_8B;
    }

    LL_USART_Init(port, &USART_InitStruct);

    do {
        LL_USART_Enable(port);
    } while( !LL_USART_IsEnabled(port) );

    LL_USART_EnableIT_RXNE(port);
    LL_USART_DisableIT_TC(port);
}


/*  */
void USART_Send( uint8_t ucPORT, void* data, size_t len ) {

    while(len--) {
        while(!LL_USART_IsActiveFlag_TC(Ports[ucPORT].handle));
        LL_USART_TransmitData8(Ports[ucPORT].handle, *((uint8_t*)data++));
    }

    RespondWaitingFlag = true;
}


/*  */
void USART_Send_DMA(size_t len) {
    LL_DMA_SetDataLength(DMA1, LL_DMA_CHANNEL_4, len);
    LL_DMA_EnableChannel(DMA1, LL_DMA_CHANNEL_4);
}


/*  */
void USART_SendByte(uint8_t ucPORT, char data) {
    LL_USART_TransmitData8(Ports[ucPORT].handle, data);
    RespondWaitingFlag = true;
}

/*  */
void USART_SendString( uint8_t ucPORT, const char* str ) {

    uint8_t i = 0;

    while( *(str+i) ) {
        while(!LL_USART_IsActiveFlag_TC(Ports[ucPORT].handle));
        LL_USART_TransmitData8(Ports[ucPORT].handle, *(str+i));
        i++;
    }

    RespondWaitingFlag = true;
}


/*  */
void USART_ClearRxBuffer(uint8_t ucPORT) {

    uint8_t i = 0;

    while(i < RX_BUFFER_SIZE) {
        port_register[ucPORT].RxBuffer[i++] = 0;
    }

    port_register[ucPORT].RxBufferIndex = 0;
    port_register[ucPORT].ReceivedData = 0;
}


/*  */
uint8_t CheckBaudrate( uint32_t baudrate) {

    uint8_t i = 0;

    while( i < sizeof(baudrates)/sizeof(baudrate) ) {

        if( baudrate == baudrates[i] ) return i;
        i++;
    }

    return 0xFF;
}


/*  */
void USART_IRQ_Handler(uint8_t port) {

#if defined(MODBUS_PORT)

    if(port == MODBUS_PORT && TB387.ConfigModeIsActive == false) {

        if( LL_USART_IsActiveFlag_RXNE(Ports[MODBUS_PORT].handle) && LL_USART_IsEnabledIT_RXNE(Ports[MODBUS_PORT].handle) ) {
            (void)pxMBFrameCBByteReceived();
        }

        if( LL_USART_IsActiveFlag_TC(Ports[MODBUS_PORT].handle) && LL_USART_IsEnabledIT_TC(Ports[MODBUS_PORT].handle) ) {
            (void)pxMBFrameCBTransmitterEmpty();
        }

        return;
    }

#endif

    if( LL_USART_IsActiveFlag_RXNE(Ports[port].handle) && LL_USART_IsEnabledIT_RXNE(Ports[port].handle) ) {

        port_register[port].ReceivedData = LL_USART_ReceiveData8(Ports[port].handle);

        *(port_register[port].RxBuffer + port_register[port].RxBufferIndex) = port_register[port].ReceivedData;

        port_register[port].RxBufferIndex++;

        port_register[port].PortState = USART_STATE_ANSWER_WAITING;

        port_register[port].PortTimer = 10;
    }


}


/*  */
void USART_TimerHandler(void) {

    if(port_register[PRIMARY_PORT].PortTimer > 0) port_register[PRIMARY_PORT].PortTimer--;
    else {
        if(port_register[PRIMARY_PORT].PortState == USART_STATE_ANSWER_WAITING) {
            port_register[PRIMARY_PORT].PortState = USART_STATE_IDLE;
            port_register[PRIMARY_PORT].RxBufferIndex = 0;

            RespondWaitingFlag = false;

            NewMessageReceivedFlag = true;
        }
    }





}


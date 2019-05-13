#include "defs.h"
#include "usart.h"
#include "io.h"
#include "tb387.h"

#if defined(MODBUS_PORT)
    #include "mbport.h"
#endif



uint8_t TxState = USART_STATE_IDLE;
uint8_t NewMessageReceivedFlag = false;

const uint32_t baudrates[7] = { 2400u, 4800u, 9600u, 14400u, 19200u, 38400u, 57600u };


/*  */
void USART_Config(uint8_t ucPORT, uint32_t ulBaudRate, uint32_t ulDataBits,  uint8_t ulParity ) {

    USART_TypeDef *port = SysData.Ports[ucPORT].handle;

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
        while(!LL_USART_IsActiveFlag_TC(SysData.Ports[ucPORT].handle));
        LL_USART_TransmitData8(SysData.Ports[ucPORT].handle, *((uint8_t*)data++));
    }

    SysData.Ports[ucPORT].Registers.ePortState = USART_STATE_ANSWER_WAITING;
    SysData.Ports[ucPORT].Registers.ReceiveTimeoutFlag = true;
    SysData.Ports[ucPORT].Registers.PortTimer = 100;
}


/*  */
void USART_Send_DMA(size_t len) {
    LL_DMA_SetDataLength(DMA1, LL_DMA_CHANNEL_4, len);
    LL_DMA_EnableChannel(DMA1, LL_DMA_CHANNEL_4);
}


/*  */
void USART_SendByte(uint8_t ucPORT, char data) {
    LL_USART_TransmitData8(SysData.Ports[ucPORT].handle, data);

    SysData.Ports[ucPORT].Registers.ePortState = USART_STATE_ANSWER_WAITING;
    SysData.Ports[ucPORT].Registers.ReceiveTimeoutFlag = true;
    SysData.Ports[ucPORT].Registers.PortTimer = 100;
}

/*  */
void USART_SendString( uint8_t ucPORT, const char* str ) {

    uint8_t i = 0;

    while( *(str+i) ) {
        while(!LL_USART_IsActiveFlag_TC(SysData.Ports[ucPORT].handle));
        LL_USART_TransmitData8(SysData.Ports[ucPORT].handle, *(str+i));
        i++;
    }

    SysData.Ports[ucPORT].Registers.ePortState = USART_STATE_ANSWER_WAITING;
    SysData.Ports[ucPORT].Registers.ReceiveTimeoutFlag = true;
    SysData.Ports[ucPORT].Registers.PortTimer = 100;
}


/*  */
void USART_ClearRxBuffer(uint8_t ucPORT) {

    uint8_t i = 0;

    while(i < RX_BUFFER_SIZE) {
        SysData.Ports[ucPORT].Registers.RxBuffer[i++] = 0;
    }

    SysData.Ports[ucPORT].Registers.RxBufferIndex = 0;
    SysData.Ports[ucPORT].Registers.ReceivedData = 0;
}


/*  */
void USART_ClearTxBuffer(uint8_t ucPORT) {

    uint8_t i = 0;

    while(i < TX_BUFFER_SIZE) {
        SysData.Ports[ucPORT].Registers.TxBuffer[i++] = 0;
    }

    SysData.Ports[ucPORT].Registers.TxBufferIndex = 0;
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
void USART_IRQ_Handler(uint8_t ucPORT) {

#if defined(MODBUS_PORT)

    if(ucPORT == MODBUS_PORT && TB387.ConfigModeIsActive == false) {

        if( LL_USART_IsActiveFlag_RXNE(SysData.Ports[MODBUS_PORT].handle) && LL_USART_IsEnabledIT_RXNE(SysData.Ports[MODBUS_PORT].handle) ) {
            (void)pxMBFrameCBByteReceived();
        }

        if( LL_USART_IsActiveFlag_TC(SysData.Ports[MODBUS_PORT].handle) && LL_USART_IsEnabledIT_TC(SysData.Ports[MODBUS_PORT].handle) ) {
            (void)pxMBFrameCBTransmitterEmpty();
        }

        return;
    }

#endif

    if( LL_USART_IsActiveFlag_RXNE(SysData.Ports[ucPORT].handle) && LL_USART_IsEnabledIT_RXNE(SysData.Ports[ucPORT].handle) ) {

        SysData.Ports[ucPORT].Registers.ReceivedData = LL_USART_ReceiveData8(SysData.Ports[ucPORT].handle);

        *(SysData.Ports[ucPORT].Registers.RxBuffer + SysData.Ports[ucPORT].Registers.RxBufferIndex) = SysData.Ports[ucPORT].Registers.ReceivedData;

        SysData.Ports[ucPORT].Registers.RxBufferIndex++;

        SysData.Ports[ucPORT].Registers.ePortState = USART_STATE_ANSWER_WAITING;

        SysData.Ports[ucPORT].Registers.PortTimer = 10;
    }
}


/*  */
void USART_TimerHandler(uint8_t ucPORT) {

    if(SysData.Ports[ucPORT].Registers.PortTimer) SysData.Ports[ucPORT].Registers.PortTimer--;
    else {

        if(SysData.Ports[ucPORT].Registers.ePortState == USART_STATE_ANSWER_WAITING) {
            SysData.Ports[ucPORT].Registers.ePortState = USART_STATE_IDLE;
            SysData.Ports[ucPORT].Registers.RxBufferIndex = 0;

            SysData.Ports[ucPORT].Registers.ReceiveTimeoutFlag = false;

            NewMessageReceivedFlag = true;
        }
    }
}


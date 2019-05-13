#include "nextion.h"


char *TxBuffer = NULL;
char *RxBuffer = NULL;

char end_mark[3] = {0xFF, 0xFF, 0xFF};



/*  */
void NEXTION_Init(void){

    TxBuffer = SysData.Ports[NEXTION_PORT].Registers.TxBuffer;
    RxBuffer = SysData.Ports[NEXTION_PORT].Registers.RxBuffer;

    USART_ClearRxBuffer(NEXTION_PORT);

    /* reset HMI */
    NEXTION_CmdResetHMI();

}


/*  */
void NEXTION_CmdDecode(char *buffer){

    if( !strncmp(buffer, "rel", 3 )) {

        if( !strncmp(buffer, "rel1=0", 6 )) {

            MCP23017_ClearPin(&REL1);
            return;
        }

        if( !strncmp(buffer, "rel1=1", 6 )) {

            MCP23017_SetPin(&REL1);
            return;
        }


        if( !strncmp(buffer, "rel2=0", 6 )) {

            MCP23017_ClearPin(&REL2);
            return;
        }

        if( !strncmp(buffer, "rel2=1", 6 )) {

            MCP23017_SetPin(&REL2);
            return;
        }


        if( !strncmp(buffer, "rel3=0", 6 )) {

            MCP23017_ClearPin(&REL3);
            return;
        }

        if( !strncmp(buffer, "rel3=1", 6 )) {

            MCP23017_SetPin(&REL3);
            return;
        }


        if( !strncmp(buffer, "rel4=0", 6 )) {

            MCP23017_ClearPin(&REL4);
            return;
        }

        if( !strncmp(buffer, "rel4=1", 6 )) {

            MCP23017_SetPin(&REL4);
            return;
        }


        if( !strncmp(buffer, "rel5=0", 6 )) {

            MCP23017_ClearPin(&REL5);
            return;
        }

        if( !strncmp(buffer, "rel5=1", 6 )) {

            MCP23017_SetPin(&REL5);
            return;
        }


        if( !strncmp(buffer, "rel6=0", 6 )) {

            MCP23017_ClearPin(&REL6);
            return;
        }

        if( !strncmp(buffer, "rel6=1", 6 )) {

            MCP23017_SetPin(&REL6);
            return;
        }


        if( !strncmp(buffer, "rel7=0", 6 )) {

            MCP23017_ClearPin(&REL7);
            return;
        }

        if( !strncmp(buffer, "rel7=1", 6 )) {

            MCP23017_SetPin(&REL7);
            return;
        }


        if( !strncmp(buffer, "rel8=0", 6 )) {

            MCP23017_ClearPin(&REL8);
            return;
        }

        if( !strncmp(buffer, "rel8=1", 6 )) {

            MCP23017_SetPin(&REL8);
            return;
        }


        if( !strncmp(buffer, "rel9=0", 6 )) {

            MCP23017_ClearPin(&REL9);
            return;
        }

        if( !strncmp(buffer, "rel9=1", 6 )) {

            MCP23017_SetPin(&REL9);
            return;
        }



    }


}




/*  */
uint8_t NEXTION_CmdSetValue(char *var, int32_t *val){

    uint8_t res = 0;

    sprintf(TxBuffer, "%s.val=%ld%s", var, *val, end_mark );
    USART_SendString(NEXTION_PORT, TxBuffer);
    //while(SysData.Ports[NEXTION_PORT].Registers.ReceivedData != 0x01);    // ждем результата
    while(SysData.Ports[NEXTION_PORT].Registers.ReceiveTimeoutFlag);

    if( *(RxBuffer) == 0x1A ) res = 1;

    USART_ClearRxBuffer(NEXTION_PORT);

    return res;
}


/*  */
uint8_t NEXTION_CmdGetValue(char *var, int32_t *val){

    uint8_t res = 0;

    sprintf(TxBuffer, "get %s.val%s", var, end_mark );
    USART_SendString(NEXTION_PORT, TxBuffer);
    //while(SysData.Ports[NEXTION_PORT].Registers.ReceivedData != 0x71);    // ждем результата
    while(SysData.Ports[NEXTION_PORT].Registers.ReceiveTimeoutFlag);

    if( *(RxBuffer) == 0x71 ){
        *val = ( *(RxBuffer+4)<<24 | *(RxBuffer+3)<<16 | *(RxBuffer+2)<<8 | *(RxBuffer+1) );
        res = 0;
    }else{
        if( *(RxBuffer) == 0x1A ) res = 1;    // variable name invalid
    }

    USART_ClearRxBuffer(NEXTION_PORT);

    return res;
}


/*  */
uint8_t NEXTION_CmdOnState(char *var){

    uint8_t res = 0;

    sprintf(TxBuffer, "%s.val=1%s", var, end_mark );
    USART_SendString(NEXTION_PORT, TxBuffer);
    while(SysData.Ports[NEXTION_PORT].Registers.ReceiveTimeoutFlag);

    USART_ClearRxBuffer(NEXTION_PORT);

    return res;
}

/*  */
uint8_t NEXTION_CmdOffState(char *var){

    uint8_t res = 0;

    sprintf(TxBuffer, "%s.val=0%s", var, end_mark );
    USART_SendString(NEXTION_PORT, TxBuffer);
    while(SysData.Ports[NEXTION_PORT].Registers.ReceiveTimeoutFlag);

    USART_ClearRxBuffer(NEXTION_PORT);

    return res;
}



/* активация события касания/отпускания элемента */
uint8_t NEXTION_CmdClick(char *var, uint8_t event){

    uint8_t res = 0;

    USART_ClearTxBuffer(NEXTION_PORT);

    sprintf(TxBuffer, "click %s,%u", var, event );
    USART_SendString(NEXTION_PORT, TxBuffer);
    while(SysData.Ports[NEXTION_PORT].Registers.ReceiveTimeoutFlag);

    USART_ClearRxBuffer(NEXTION_PORT);

    return res;
}


/*  */
uint8_t NEXTION_CmdResetHMI(void){

    uint8_t res = 0;

    sprintf(TxBuffer, "rest%s", end_mark );
    USART_SendString(NEXTION_PORT, TxBuffer);
    while(SysData.Ports[NEXTION_PORT].Registers.ReceivedData != 0x88);    // ждем инициализации NEXTION
    while(SysData.Ports[NEXTION_PORT].Registers.ReceiveTimeoutFlag);

    USART_ClearRxBuffer(NEXTION_PORT);

    return res;
}

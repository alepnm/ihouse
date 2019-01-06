
#include "unicon.h"

struct _unicon SysData;


static void UNI_RestoreEE(void);
static void UNI_SetDefaults(void);


void UNI_Start(void) {

    /* startuojam */

    /* atstatom is EEPROM parametrus - arba defoltus, arba darbinius */
    UNI_RestoreEE();

    LEDS_OFF();

    StartPWM();

    LL_TIM_OC_SetCompareCH1(TIM15, SysData.PWM.ch1);
    LL_TIM_OC_SetCompareCH2(TIM15, SysData.PWM.ch2);

    StartBeeper();

    USART_Config(NEXTION_PORT, port_config[NEXTION_PORT].Baudrate, port_config[NEXTION_PORT].DataBits,  port_config[NEXTION_PORT].Parity);
    port_register[NEXTION_PORT].PortTimer = 0;
    port_register[NEXTION_PORT].PortState = USART_STATE_IDLE;

    USART_ClearRxBuffer(NEXTION_PORT);

    USART_Config(SECONDARY_PORT, port_config[SECONDARY_PORT].Baudrate, port_config[SECONDARY_PORT].DataBits,  port_config[SECONDARY_PORT].Parity);
    port_register[SECONDARY_PORT].PortTimer = 0;
    port_register[SECONDARY_PORT].PortState = USART_STATE_IDLE;

    USART_ClearRxBuffer(SECONDARY_PORT);
}


/* sisteminiu procesu hendleris */
void UNI_Process(void){


}


/* saugojam darbine aplinka i EEPROM */
void UNI_SaveDataToEEPROM(void){

    EEP24XX_Write(EEADR_SYSDATA, &SysData, sizeof(SysData));
    EEP24XX_Write(EEADR_PORT_SETS, port_config, sizeof(port_config));
}


/* atstatom darbinius parametrus is EEPROM */
void UNI_ReadDataFromEEPROM(void){

    EEP24XX_Read(EEADR_SYSDATA, &SysData, sizeof(SysData));
    EEP24XX_Read(EEADR_PORT_SETS, port_config, sizeof(port_config));
}



/* sistemos klaidu hendleris */
void UNI_ErrorHandler(uint8_t error){

    uint8_t i = 0;

    /* tikrinam, ar tokia klaida nera jau irasyta? */
    while(i <= SysData.Error.ErrorArrayTail){
        if(SysData.Error.ErrorCodes[i] == error) goto lp010;
        else i++;
    }

    /* irasom klaida kaip nauja */
    SysData.Error.ErrorCodes[++SysData.Error.ErrorArrayTail] = error;

lp010:
    SysData.Error.LastError = error;

    if(SysData.Error.ErrorArrayTail >= ERROR_ARRAY_LEN) {
        LEDS_ON();
        while(1);
    }


    //...


}


/* atstatom is EEPROM aplinkos parametrus */
static void UNI_RestoreEE(void){

    uint8_t wr = 0;

    //EEP24XX_WriteByte(EEADR_CONTR_BYTE, 0xFF);

    if(EEP24XX_ReadByte(EEADR_CONTR_BYTE) != EE_CONTR_BYTE){

        EEP24XX_Clear();

        UNI_SetDefaults();

        UNI_SaveDataToEEPROM();

        while(EEP24XX_ReadByte(EEADR_CONTR_BYTE) != EE_CONTR_BYTE){

            EEP24XX_WriteByte(EEADR_CONTR_BYTE, EE_CONTR_BYTE);
            if(wr++ > 5){
                UNI_ErrorHandler(F_NO_ERROR);
            }
        }
    }

    /*  */
    UNI_ReadDataFromEEPROM();
}


/* atstatom parametru ir aplinkos pradines reiksmes */
static void UNI_SetDefaults(void){

    uint8_t i = 0;

    port_config[NEXTION_PORT].MbAddr = 10;
    port_config[NEXTION_PORT].Baudrate = BAUDRATE_DEF;
    port_config[NEXTION_PORT].Parity = USART_PAR_NONE;
    port_config[NEXTION_PORT].StopBits = 1;
    port_config[NEXTION_PORT].DataBits = 8;

    port_config[SECONDARY_PORT].MbAddr = 10;
    port_config[SECONDARY_PORT].Baudrate = BAUDRATE_DEF;
    port_config[SECONDARY_PORT].Parity = USART_PAR_NONE;
    port_config[SECONDARY_PORT].StopBits = 1;
    port_config[SECONDARY_PORT].DataBits = 8;

    while(i < ERROR_ARRAY_LEN){
        SysData.Error.ErrorCodes[i++] = F_NO_ERROR;
    }

    SysData.Error.ErrorArrayTail = F_NO_ERROR;
    SysData.Error.LastError = F_NO_ERROR;

    SysData.Beeper.tone = 0;
    SysData.Beeper.level = 2;       // 0-7
    SysData.Beeper.ms_counter = 0;  //ms

    SysData.PWM.ch1 = 0;
    SysData.PWM.ch2 = 0;

    SysData.ExtPort.ext0 = 0x00;
    SysData.ExtPort.ext1 = 0x00;
}



/*  */
void HMI_Reboot(void){
    LEDS_ON();
}

/*  */
void HMI_InvalidInstruction(void){


}














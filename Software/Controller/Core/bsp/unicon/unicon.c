
#include "unicon.h"

SysData_TypeDef SysData;
struct _time Time;
uint8_t AutoBackupToEepromFlag = RESET;
uint16_t TouchTimeoutCounter = 0;

uint8_t WaitForResponse = RESET;    // po issiuntimo komandos i HMI pakeliam si bita kol lauksim atsakymo



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

    TouchTimeoutCounter = timestamp;




    // Gaunam duomenys is Nextion. Reikia palaukti kol jis inicializuosis
//    HMI_GetDateTime(&Time.year, &Time.month, &Time.day, &Time.hour, &Time.minute);

}


/* sisteminiu procesu hendleris */
void UNI_Process(void){

    if(port_register[NEXTION_PORT].DataReceivedFlag == true){

        Nextion_Decoder(port_register[NEXTION_PORT].RxBuffer[0]);
        port_register[NEXTION_PORT].DataReceivedFlag = false;
        USART_ClearRxBuffer(NEXTION_PORT);
    }


    /* periodiskai issaugojam EEPROME sistemos parametrus */
    if(AutoBackupToEepromFlag != RESET){

        LED2_ON();
        UNI_SaveDataToEEPROM();
        LED2_OFF();

        AutoBackupToEepromFlag = RESET;
    }


}


/* saugojam darbine aplinka i EEPROM */
void UNI_SaveDataToEEPROM(void){

    EEP24XX_WriteByByte(EEADR_SYSDATA, &SysData, sizeof(SysData));              // rasom baitais
    EEP24XX_WriteByByte(EEADR_PORT_SETS, &port_config, sizeof(port_config));
    EEP24XX_WriteByByte(EEADR_NEXTION, &Nextion, sizeof(Nextion));
}


/* atstatom darbinius parametrus is EEPROM */
void UNI_ReadDataFromEEPROM(void){

    EEP24XX_Read(EEADR_SYSDATA, &SysData, sizeof(SysData));
    EEP24XX_Read(EEADR_PORT_SETS, &port_config, sizeof(port_config));
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

    port_config[NEXTION_PORT].MbAddr = MBADDR_DEF;
    port_config[NEXTION_PORT].Baudrate = UART_BAUDRATE_DEF;
    port_config[NEXTION_PORT].Parity = USART_PAR_NONE;
    port_config[NEXTION_PORT].StopBits = 1;
    port_config[NEXTION_PORT].DataBits = 8;

    port_config[SECONDARY_PORT].MbAddr = MBADDR_DEF;
    port_config[SECONDARY_PORT].Baudrate = UART_BAUDRATE_DEF;
    port_config[SECONDARY_PORT].Parity = USART_PAR_NONE;
    port_config[SECONDARY_PORT].StopBits = 1;
    port_config[SECONDARY_PORT].DataBits = 8;

    while(i < ERROR_ARRAY_LEN){
        SysData.Error.ErrorCodes[i++] = F_NO_ERROR;
    }

    SysData.Error.ErrorArrayTail = F_NO_ERROR;
    SysData.Error.LastError = F_NO_ERROR;

    SysData.Beeper.tone = 0;
    SysData.Beeper.level = BEEP_LOW;    // 0-7
    BeeperCounter = 0;      //ms

    SysData.PWM.ch1 = 0;
    SysData.PWM.ch2 = 0;

    SysData.WTime = 0;
}









#include <stdio.h>
#include "unicon.h"
#include "nextion.h"
#include "pcf8574.h"
#include "pcf8523.h"


SysData_TypeDef SysData;
struct _analogs AnalogInputs;

uint8_t AutoBackupToEepromFlag = RESET;
uint16_t TouchTimeoutCounter = 0;

uint16_t flashsize;
uint8_t UnitID[12];



/*   */
static void UNI_ReadAnalogs(void);
static void UNI_SaveDataToEEPROM(void);
static void UNI_ReadDataFromEEPROM(void);
static void UNI_RestoreEE(void);
static void UNI_SetDefaults(void);
static void UNI_SystemShutdown(void);
static void UNI_ErrorHandler(uint8_t error);

#if defined(MODBUS_PORT)
static void UNI_UpdateMbRegisters(void);
#endif


void UNI_Start(void) {

    /* startuojam */

    /* atstatom is EEPROM parametrus - arba defoltus, arba darbinius */
    UNI_RestoreEE();

    UNI_GetID(UnitID);

    LEDS_OFF();

    StartPWM();

    PWM_Set(PWM_CH1, SysData.PWM.ch1);
    PWM_Set(PWM_CH2, SysData.PWM.ch2);

    ADC_Init();

    UNI_ReadAnalogs();

    StartBeeper();

    USART_Config(PRIMARY_PORT, port_config[PRIMARY_PORT].Baudrate, port_config[PRIMARY_PORT].DataBits,  port_config[PRIMARY_PORT].Parity);
    port_register[PRIMARY_PORT].PortTimer = 0;
    port_register[PRIMARY_PORT].PortState = USART_STATE_IDLE;

    USART_ClearRxBuffer(PRIMARY_PORT);

    USART_Config(SECONDARY_PORT, port_config[SECONDARY_PORT].Baudrate, port_config[SECONDARY_PORT].DataBits,  port_config[SECONDARY_PORT].Parity);
    port_register[SECONDARY_PORT].PortTimer = 0;
    port_register[SECONDARY_PORT].PortState = USART_STATE_IDLE;

    USART_ClearRxBuffer(SECONDARY_PORT);


    DMA_Init();

    TouchTimeoutCounter = timestamp;

    PCF8523_Init();

    NextionInit();


    //pcf8574_Config();

    LL_mDelay(2000);

    //LCD_Clear(IIC_LCD.iic_addr);
}


/* in Kb */
uint16_t UNI_GetFlashSize(void) {
    return *(uint16_t *)(FLASHSIZE_BASE);
}


/*  */
void UNI_GetID(uint8_t* bufid) {

    uint8_t i = 0;

    do {
        *(bufid + i) = *(uint8_t*)(UID_BASE + i);
    } while(++i < 12);

}


/*  */
uint8_t UNI_CheckUID(uint8_t* bufid) {

    uint8_t temp_buf[12];
    uint8_t i = 0;

    UNI_GetID(temp_buf);

    do {
        if( *(temp_buf + i) != *(bufid + i) ) return 1;
    } while(++i < 12);

    return 0;
}


/* sisteminiu procesu hendleris */
void UNI_Process(void) {

    static uint32_t delay = 0;
    uint8_t i = 0;



    if(delay <= timestamp) {

        delay = timestamp + 300;


        PCF8523_GetDateTime();


        UNI_ReadAnalogs();      // skaitom analoginius iejimus

#if defined(MODBUS_PORT)
        UNI_UpdateMbRegisters();
#endif

        LED2_OFF();
        LED5_OFF();
        LED6_OFF();
        LED7_OFF();

        switch(Nextion.CurrentPageID) {

        case W_MAIN:

            if(TxState == USART_STATE_IDLE){

                //i = sprintf( ptrPrimaryTxBuffer, "t0.txt=\"%02d.%02d.%02d   %02d:%02d\"", DateTime.year, DateTime.month, DateTime.day, DateTime.hour, DateTime.minute );
                i = sprintf( ptrSecondaryTxBuffer, "t0.txt=\"MCU:%02d IN0:%1.2fV\"", (int)ADC_InternalRegisters.McuTemp.ConvertedValue, (float)AnalogInputs.ch0.mvolts/1000 );

                *(ptrSecondaryTxBuffer + i++) = 0xFF;
                *(ptrSecondaryTxBuffer + i++) = 0xFF;
                *(ptrSecondaryTxBuffer + i) = 0xFF;

                //USART_Send( NEXTION_PORT, ptrPrimaryTxBuffer, i+1 );
                USART_Send_DMA(i+1);

                TxState = USART_STATE_BUSY;
            }


            break;
        case W_VIRTUVE:

            LED2_ON();

            break;
        case W_KORIDORIUS:

            LED5_ON();

            break;
        case W_VONIAWC:

            LED6_ON();

            break;
        case W_PAPILDOMAI:

            LED7_ON();

            break;
        }



        if(TxState == USART_STATE_IDLE){

            /* to niekad nevykdo, nes nespeja atlikti priestai buvusios komandos UARTui */

            Nextion.DimValue = (uint8_t)(AnalogInputs.ch0.adcval/10);

            i = sprintf( ptrSecondaryTxBuffer, "dim=%d", Nextion.DimValue );

            *(ptrSecondaryTxBuffer + i++) = 0xFF;
            *(ptrSecondaryTxBuffer + i++) = 0xFF;
            *(ptrSecondaryTxBuffer + i) = 0xFF;

            USART_Send_DMA(i+1);

            TxState = USART_STATE_BUSY;
        }



        PWM_Set(PWM_CH1, SysData.PWM.ch1);
        PWM_Set(PWM_CH2, SysData.PWM.ch2);


        i = sprintf( lcd_buffer, "IN0: %2.2fV", (float)AnalogInputs.ch0.mvolts/1000 );

        //LCD_SetPosition(IIC_LCD.iic_addr, 0, 0);
        //LCD_SendString(IIC_LCD.iic_addr, lcd_buffer);


    }


    if(port_register[NEXTION_PORT].PortState == USART_STATE_DATA_RECEIVED) {

        Nextion_Decoder( *ptrSecondaryRxBuffer );
        port_register[NEXTION_PORT].PortState = USART_STATE_IDLE;
        USART_ClearRxBuffer(NEXTION_PORT);
    }


    /* periodiskai issaugojam EEPROME sistemos parametrus */
    if(AutoBackupToEepromFlag != RESET) {

        //LED2_ON();
        UNI_SaveDataToEEPROM();
        //LED2_OFF();

        AutoBackupToEepromFlag = RESET;
    }




#if defined(MODBUS_PORT)
    (void)eMBPoll();
#endif
}


/*  */
static void UNI_ReadAnalogs(void){

    ADC_Read_VREFINT();
    ADC_Read_MCUTEMP();

    AnalogInputs.ch0.adcval = ADC_ReadAnalog(AI_VLINE);
    AnalogInputs.ch0.mvolts = ADC_ConvertTo_mVolts(AnalogInputs.ch0.adcval, LL_ADC_RESOLUTION_10B);
    AnalogInputs.ch4.adcval = ADC_ReadAnalog(AI_OPTIC);
    AnalogInputs.ch4.mvolts = ADC_ConvertTo_mVolts(AnalogInputs.ch4.adcval, LL_ADC_RESOLUTION_10B);
}


/* Sisteminis IRQ hendleris. Vykdomas kas 1 ms is Systiko */
void UNI_SystemIRQ(void) {

    char* rx_pointer = NULL;
    static uint32_t delay = 0;
    static uint32_t autobackup_delay = AUTOBACKUP_DELAY;

    if(delay < timestamp) {
        delay = timestamp + 1000;
        SysData.WTime++;
    }

    if(autobackup_delay < timestamp) {
        autobackup_delay = timestamp + AUTOBACKUP_DELAY;
        AutoBackupToEepromFlag = SET;
    }


    BeeperHandler();

    if(port_register[NEXTION_PORT].PortTimer > 0) {
        //LED2_OFF();
        port_register[NEXTION_PORT].PortTimer--;
    } else {
        if(port_register[NEXTION_PORT].PortState == USART_STATE_ANSWER_WAITING) {
            port_register[NEXTION_PORT].PortState = USART_STATE_IDLE;

            rx_pointer = ptrSecondaryRxBuffer + port_register[NEXTION_PORT].RxBufferIndex-1;

            if( *(rx_pointer-2) == 0xFF && *(rx_pointer-1) == 0xFF && *rx_pointer == 0xFF) {
                port_register[NEXTION_PORT].PortState = USART_STATE_DATA_RECEIVED;
                port_register[NEXTION_PORT].PortError = F_NO_ERROR;
            } else {
                /* isvalom buferi, jai priimtas blogas freimas (nera 0xFF 0xFF 0xFF) */
                port_register[NEXTION_PORT].PortError = F_FRAME_ERROR;
                USART_ClearRxBuffer(NEXTION_PORT);
            }
        }
    }

    if(port_register[PRIMARY_PORT].PortTimer > 0) port_register[PRIMARY_PORT].PortTimer--;
    else {
        if(port_register[PRIMARY_PORT].PortState == USART_STATE_ANSWER_WAITING) {
            port_register[PRIMARY_PORT].PortState = USART_STATE_IDLE;
        }
    }

}


#if defined(MODBUS_PORT)
/*  */
static void UNI_UpdateMbRegisters(void) {

    uint8_t port_config_is_changed = 0;

    /* Holdingai */

    *(ptrHoldingRegs + HR_WTIME_LO) = LO16(SysData.WTime);
    *(ptrHoldingRegs + HR_WTIME_HI) = HI16(SysData.WTime);

    if( *(ptrHoldingRegs + HR_MBADDR) != port_config[MODBUS_PORT].MbAddr ) {

        // chekinam nauja adresa;
        if( *(ptrHoldingRegs + HR_MBADDR) > 0 && *(ptrHoldingRegs + HR_MBADDR) < 248 ) {
            port_config[MODBUS_PORT].MbAddr = *(ptrHoldingRegs + HR_MBADDR);
            port_config_is_changed = 1;
        } else {
            *(ptrHoldingRegs + HR_MBADDR) = port_config[MODBUS_PORT].MbAddr;
        }
    }


    if( *(ptrHoldingRegs + HR_MBBAUDRATE) != port_config[MODBUS_PORT].Baudrate ) {

        // chekinam nauja bodreita;
        if( CheckBaudrate( *(ptrHoldingRegs + HR_MBBAUDRATE) ) < 0xFF ) {
            port_config[MODBUS_PORT].Baudrate = *(ptrHoldingRegs + HR_MBBAUDRATE);
            port_config_is_changed = 1;
        } else {
            *(ptrHoldingRegs + HR_MBBAUDRATE) = port_config[MODBUS_PORT].Baudrate;
        }
    }

    /* keiciam Modbus porto parametrus, nes jie pasikeite */
    if(port_config_is_changed == 1) {
        eMBDisable();
        eMBClose();

        eMBInit( MB_RTU, port_config[MODBUS_PORT].MbAddr, MODBUS_PORT, port_config[MODBUS_PORT].Baudrate, port_config[MODBUS_PORT].Parity );
        eMBSetSlaveID( 123, TRUE, ucSlaveIdBuf, (MB_FUNC_OTHER_REP_SLAVEID_BUF - 4) );
        eMBEnable();
    }



    /*  */
    if( *(ptrHoldingRegs + HR_MAGIC_REG) != 0 ) {
        if( *(ptrHoldingRegs + HR_MAGIC_REG) == 0xABBA ) {
            SysData.WTime = 0;
        }
        if( *(ptrHoldingRegs + HR_MAGIC_REG) == 0x18C9 ) {
            UNI_SystemShutdown();
        }

        *(ptrHoldingRegs + HR_MAGIC_REG) = 0;
    }


    /* Inputai */
    *(ptrInputRegs + IR_LAST_FAULT) = SysData.Error.LastError;

}
#endif


/*  */
static void UNI_SystemShutdown(void) {

    UNI_SaveDataToEEPROM();

    // ka nors siunciam i HMI
    //....

    Delay_ms(100);

    NVIC_SystemReset();
}


/* saugojam darbine aplinka i EEPROM */
static void UNI_SaveDataToEEPROM(void) {

    EEP24XX_WriteByByte(EEADR_SYSDATA, &SysData, sizeof(SysData));              // rasom baitais
    EEP24XX_WriteByByte(EEADR_PORT_SETS, &port_config, sizeof(port_config));
    EEP24XX_WriteByByte(EEADR_NEXTION, &Nextion, sizeof(Nextion));

}


/* atstatom darbinius parametrus is EEPROM */
static void UNI_ReadDataFromEEPROM(void) {

    EEP24XX_Read(EEADR_SYSDATA, &SysData, sizeof(SysData));
    EEP24XX_Read(EEADR_PORT_SETS, &port_config, sizeof(port_config));
}



/* sistemos klaidu hendleris */
static void UNI_ErrorHandler(uint8_t error) {

    uint8_t i = 0;

    /* tikrinam, ar tokia klaida nera jau irasyta? */
    while(i <= SysData.Error.ErrorArrayTail) {
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
static void UNI_RestoreEE(void) {

    uint8_t wr = 0;

    //EEP24XX_WriteByte(EEADR_CONTR_BYTE, 0xFF);

    if(EEP24XX_ReadByte(EEADR_CONTR_BYTE) != EE_CONTR_BYTE) {

        EEP24XX_Clear();

        UNI_SetDefaults();

        UNI_SaveDataToEEPROM();

        while(EEP24XX_ReadByte(EEADR_CONTR_BYTE) != EE_CONTR_BYTE) {

            EEP24XX_WriteByte(EEADR_CONTR_BYTE, EE_CONTR_BYTE);
            if(wr++ > 5) {
                UNI_ErrorHandler(F_NO_ERROR);
            }
        }
    }

    /*  */
    UNI_ReadDataFromEEPROM();
}


/* atstatom parametru ir aplinkos pradines reiksmes */
static void UNI_SetDefaults(void) {

    uint8_t i = 0;

    port_config[PRIMARY_PORT].MbAddr = MBADDR_DEF;
    port_config[PRIMARY_PORT].Baudrate = UART_BAUDRATE_DEF;
    port_config[PRIMARY_PORT].Parity = USART_PAR_NONE;
    port_config[PRIMARY_PORT].StopBits = 1;
    port_config[PRIMARY_PORT].DataBits = 8;

    port_config[SECONDARY_PORT].MbAddr = MBADDR_DEF;
    port_config[SECONDARY_PORT].Baudrate = UART_BAUDRATE_DEF;
    port_config[SECONDARY_PORT].Parity = USART_PAR_NONE;
    port_config[SECONDARY_PORT].StopBits = 1;
    port_config[SECONDARY_PORT].DataBits = 8;

    while(i < ERROR_ARRAY_LEN) {
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






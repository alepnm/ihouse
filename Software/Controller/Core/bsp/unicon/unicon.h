#ifndef UNICON_H_INCLUDED
#define UNICON_H_INCLUDED

#include "defs.h"
#include "defaults.h"

#include "io.h"
#include "usart.h"
//#include "adc.h"
//#include "iic.h"
//#include "spi.h"
//#include "rtc.h"
//#include "pwm.h"
#include "tim.h"
#include "iic_eeprom.h"
#include "eeprom_addr.h"
#include "nextion.h"


//#define MODBUS_ENABLE       //on SECONDARY_PORT


/* sistemos klaidos */
enum {
    F_NO_ERROR = 0,
    F_EEPROM_FAULT,
    F_HMI_FAULT,            // Nextion gedimas (neatsako, jo vidinis gedimas)
    F_HMI_BAD_SOFTWARE,     // netinka Nextion programine iranga

};



#define ERROR_ARRAY_LEN 32

struct _unicon{

    struct{
        uint8_t     ErrorCodes[ERROR_ARRAY_LEN];
        uint8_t     ErrorArrayTail;
        uint8_t     LastError;
    }Error;

    struct{
        uint8_t     tone;
        uint8_t     level;
        uint16_t    ms_counter;
    }Beeper;

    struct{
        uint8_t     ch1;
        uint8_t     ch2;
    }PWM;

    struct{
        uint8_t     ext0;
        uint8_t     ext1;
    }ExtPort;
};

extern struct _unicon SysData;


/* Private functions */
void UNI_Start(void);
void UNI_Process(void);
void UNI_SaveDataToEEPROM(void);
void UNI_ReadDataFromEEPROM(void);
void UNI_ErrorHandler(uint8_t error);


/* NEXTION komandu hendleriai */
void HMI_SuccesStart(void);
void HMI_InvalidInstruction(void);
void HMI_TouchEvent(uint8_t pageid, uint8_t compid, uint8_t event);

#endif /* UNICON_H_INCLUDED */

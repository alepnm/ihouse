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
#include "mcp23017.h"
#include "nextion.h"


#define MODBUS_ENABLE           //on SECONDARY_PORT
#define ERROR_ARRAY_LEN         32
#define AUTOBACKUP_DELAY        60000
#define WAIT_RESPONSE_TIMEOUT   200

/* sistemos klaidos */
enum {
    F_NO_ERROR = 0,
    F_EEPROM_FAULT,
    F_FRAME_ERROR,
    F_HMI_FAULT,            // Nextion gedimas (neatsako, jo vidinis gedimas)
    F_HMI_BAD_SOFTWARE      // netinka Nextion programine iranga
};

enum { RELEASE = 0, TOUCH };

typedef struct{

    struct{
        uint8_t     ErrorCodes[ERROR_ARRAY_LEN];
        uint8_t     ErrorArrayTail;
        uint8_t     LastError;
    }Error;

    struct{
        uint8_t     tone;
        uint8_t     level;
    }Beeper;

    struct{
        uint8_t     ch1;
        uint8_t     ch2;
    }PWM;

    uint32_t WTime;
}SysData_TypeDef;

struct _time{
    uint8_t year;
    uint8_t month;
    uint8_t day;
    uint8_t hour;
    uint8_t minute;
}Time;


extern SysData_TypeDef SysData;
extern struct _time Time;
extern volatile uint32_t timestamp;
extern uint16_t TouchTimeoutCounter;
extern uint16_t WaitForResponseTimer;


/* Private functions */
void UNI_Start(void);
void UNI_Process(void);
void UNI_SaveDataToEEPROM(void);
void UNI_ReadDataFromEEPROM(void);
void UNI_ErrorHandler(uint8_t error);
#endif /* UNICON_H_INCLUDED */

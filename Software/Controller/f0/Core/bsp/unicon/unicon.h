#ifndef UNICON_H_INCLUDED
#define UNICON_H_INCLUDED

#include "defs.h"
#include "defaults.h"

#include "io.h"
#include "usart.h"
#include "dma.h"
#include "adc.h"
//#include "iic.h"
//#include "spi.h"
#include "rtc.h"
//#include "pwm.h"
#include "tim.h"
#include "iic_eeprom.h"
#include "eeprom_addr.h"
#include "mcp23017.h"
//#include "str_functions.h"

#if defined(MODBUS_PORT)
    #include "mb.h"
    #include "user_mb_app.h"
#endif


#define Delay_ms(x) LL_mDelay(x);


#define ERROR_ARRAY_LEN     32
#define AUTOBACKUP_DELAY    60000

/* sistemos klaidos */
enum {
    F_NO_ERROR = 0,
    F_EEPROM_FAULT,
    F_FRAME_ERROR,
    F_HMI_FAULT,            // Nextion gedimas (neatsako, jo vidinis gedimas)
    F_HMI_BAD_SOFTWARE      // netinka Nextion programine iranga
};

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



#define AI_VLINE    0
#define AI_OPTIC    4


typedef struct{
    uint16_t    adcval;
    uint16_t    mvolts;
}AnalogInput_TypeDef;


struct _analogs{
    AnalogInput_TypeDef ch0;
    AnalogInput_TypeDef ch4;
}AnalogInputs;

extern struct _analogs AnalogInputs;


extern SysData_TypeDef SysData;
extern volatile uint32_t timestamp;
extern uint16_t TouchTimeoutCounter;


/* Private functions */
void UNI_Start(void);
void UNI_Process(void);
void UNI_SystemIRQ(void);

#if defined(MODBUS_PORT)
    void UNI_UpdateMbRegisters(void);
#endif



void UNI_GetID(uint8_t* bufid);
uint16_t UNI_GetFlashSize(void);
uint8_t UNI_CheckUID(uint8_t* bufid);
#endif /* UNICON_H_INCLUDED */

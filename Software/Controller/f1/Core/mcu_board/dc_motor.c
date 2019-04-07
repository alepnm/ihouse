#include "dc_motor.h"
#include "mcp23017.h"
#include "board.h"


#define DCMOTOR_GASVALVE_ENABLE()       LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_13)
#define DCMOTOR_GASVALVE_DISABLE()      LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_13)
#define DCMOTOR_WATERVALVE_ENABLE()     LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_14)
#define DCMOTOR_WATERVALVE_DISABLE()    LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_14)

#define MOTOR_ON_DUTY       20000


struct mot_cmd {
    uint8_t motor;
    uint8_t dir;
};

static struct mot_cmd MotorCommandQueue[12];
static int8_t CmdQueueTail = -1;    // elementu kiekis eileje; -1 - eile tuscia, 0 - pirmas eiles elementas


extern uint32_t timestamp;

uint8_t ActiveMotor = 0;
uint32_t ValveOnTimeout = 0;


static void DCMOT_HandleQueue(void);
static inline void DCMOT_SetDirection(uint8_t dir);


/*  */
void DCMOT_Init(void) {

    DCMOTOR_GASVALVE_DISABLE();
    DCMOTOR_WATERVALVE_DISABLE();

    MCP23017_ClearPin(&REL13);   // pasirenkam salto vandens sklende

    MCP23017_ClearPin(&MOTA);   //
    MCP23017_ClearPin(&MOTB);


    DCMOT_ValveClose(DCMOTOR_GAS);

}



/*  */
uint8_t DCMOT_PutCmdToQueue(uint8_t motor, uint8_t dir) {

    if(CmdQueueTail >= 12) return 1;

    struct mot_cmd cmd;

    cmd.motor = motor;
    cmd.dir = dir;

    MotorCommandQueue[CmdQueueTail++] = cmd;

    return 0;
}



/*  */
void DCMOT_Handler(void) {

    if(CmdQueueTail >= 0) {

        DCMOT_HandleQueue();
        return;
    }


    if(ValveOnTimeout < timestamp && ActiveMotor != DCMOTOR_NOACTIVE) {

        DCMOT_ValveStop(ActiveMotor);

        LED_ON();
    }





}


/*  */
static void DCMOT_HandleQueue(void) {





}



/*  */
void DCMOT_ValveOpen(uint8_t motor) {

    ValveOnTimeout = timestamp + MOTOR_ON_DUTY;
    ActiveMotor = motor;

    DCMOT_SetDirection(DCMOTOR_DIR_OPEN);

    switch(motor) {
    case DCMOTOR_GAS:
        DCMOTOR_GASVALVE_ENABLE();
        break;
    case DCMOTOR_HOTWATER:
        MCP23017_SetPin(&REL13);
        DCMOTOR_WATERVALVE_ENABLE();
        break;
    case DCMOTOR_COLDWATER:
        MCP23017_ClearPin(&REL13);       // pasirenkam salto vandens sklende
        DCMOTOR_WATERVALVE_ENABLE();
        break;
    }
}


/*  */
void DCMOT_ValveClose(uint8_t motor) {

    ValveOnTimeout = timestamp + MOTOR_ON_DUTY;
    ActiveMotor = motor;

    DCMOT_SetDirection(DCMOTOR_DIR_CLOSE);

    switch(motor) {
    case DCMOTOR_GAS:
        DCMOTOR_GASVALVE_ENABLE();
        break;
    case DCMOTOR_HOTWATER:
        MCP23017_SetPin(&REL13);
        DCMOTOR_WATERVALVE_ENABLE();
        break;
    case DCMOTOR_COLDWATER:
        MCP23017_ClearPin(&REL13);       // pasirenkam salto vandens sklende
        DCMOTOR_WATERVALVE_ENABLE();
        break;

    }
}


/*  */
void DCMOT_ValveStop(uint8_t motor) {

    switch(motor) {
    case DCMOTOR_GAS:
        DCMOTOR_GASVALVE_DISABLE();
        break;
    case DCMOTOR_HOTWATER:
        DCMOTOR_WATERVALVE_DISABLE();
        break;
    case DCMOTOR_COLDWATER:
        DCMOTOR_WATERVALVE_DISABLE();
        break;
    }

    MCP23017_ClearPin(&MOTA);
    MCP23017_ClearPin(&MOTB);

    MCP23017_ClearPin(&REL13);

    ActiveMotor = DCMOTOR_NOACTIVE;
}


/*  */
static inline void DCMOT_SetDirection(uint8_t dir) {

    if(dir == DCMOTOR_DIR_CLOSE) {
        MCP23017_SetPin(&MOTA);   //
        MCP23017_ClearPin(&MOTB);
    } else {
        MCP23017_ClearPin(&MOTA);   //
        MCP23017_SetPin(&MOTB);
    }

}

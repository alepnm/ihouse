#ifndef DC_MOTOR_H_INCLUDED
#define DC_MOTOR_H_INCLUDED

#include "defs.h"



#define DCMOTOR_DIR_CLOSE       0
#define DCMOTOR_DIR_OPEN        !DCMOTOR_DIR_CLOSE

#define DCMOTOR_GAS             0
#define DCMOTOR_HOTWATER        1
#define DCMOTOR_COLDWATER       2
#define DCMOTOR_NOACTIVE        255


extern uint32_t ValveOnTimeout;
extern uint8_t ActiveMotor;


void DCMOT_Init(void);
void DCMOT_Handler(void);

void DCMOT_ValveOpen(uint8_t motor);
void DCMOT_ValveClose(uint8_t motor);
void DCMOT_ValveStop(uint8_t motor);

#endif /* DC_MOTOR_H_INCLUDED */

#ifndef ONE_WIRE_H_INCLUDED
#define ONE_WIRE_H_INCLUDED

#include "stm32f1xx_ll_gpio.h"

#define DS_GPIO_PORT            GPIOB
#define DS_GPIO_PIN             LL_GPIO_PIN_12

#define DS_PIN_LOW()            LL_GPIO_ResetOutputPin(DS_GPIO_PORT, DS_GPIO_PIN)
#define DS_PIN_HIGH()           LL_GPIO_SetOutputPin(DS_GPIO_PORT, DS_GPIO_PIN)
#define DS_PIN_CHECK()          LL_GPIO_IsInputPinSet(DS_GPIO_PORT, DS_GPIO_PIN)



uint8_t     OW_PortInit(void);
uint8_t     OW_ReadBit(void);
uint8_t     OW_ReadByte(void);
void        OW_WriteBit(uint8_t bit);
void        OW_WriteByte(uint8_t dt);
uint8_t     OW_Reset(void);




#endif /* ONE_WIRE_H_INCLUDED */

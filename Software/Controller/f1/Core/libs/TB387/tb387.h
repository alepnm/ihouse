#ifndef TB387_H_INCLUDED
#define TB387_H_INCLUDED

#include <stdint.h>

/*  */
typedef struct {
    uint8_t                     IsPresent;
    uint8_t                     ConfigModeIsActive;
    uint16_t                    id;
    uint8_t                     baudrate;
    uint8_t                     channel;
    uint8_t                     retries;
}TB387_TypeDef;

/*  */
typedef struct{
    uint16_t                    id;
    uint8_t                     baudrate;
    uint8_t                     channel;
}TB387_Target_TypeDef;


extern TB387_TypeDef TB387;
extern const TB387_Target_TypeDef *TargetOne;
extern const TB387_Target_TypeDef *TargetTwo;
extern const TB387_Target_TypeDef *TargetThree;

uint8_t TB387_Init(TB387_TypeDef *tb);
uint8_t TB387_Config(TB387_TypeDef *tb);
void    TB387_SetDefaults(TB387_TypeDef *tb);
uint8_t TB387_SelectTarget(TB387_TypeDef *tb, const TB387_Target_TypeDef *tg);


#endif /* TB387_H_INCLUDED */

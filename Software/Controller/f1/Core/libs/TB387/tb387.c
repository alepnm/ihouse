#include "tb387.h"







void TB387_Init(void){

    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_15);    //  /TBCMD linija - HIGH

    USART_Config(TB387_PORT, 19200, 8,  USART_PAR_NONE);


}

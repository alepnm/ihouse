
#include "unicon.h"

void UNI_Start(void) {

    /* startuojam */
    LEDS_OFF();

    StartPWM_Timer();

    StartBeeper();

}



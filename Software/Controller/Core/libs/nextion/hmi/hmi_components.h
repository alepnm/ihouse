#ifndef HMI_COMPONENTS_H_INCLUDED
#define HMI_COMPONENTS_H_INCLUDED

#include <stdint.h>

typedef struct{
    uint8_t     ID;             // Nextion komponento ID
    char        hmi_name[];     // Nextion komponento pavadinimas
}HmiComp_TypeDef;



#endif /* HMI_COMPONENTS_H_INCLUDED */

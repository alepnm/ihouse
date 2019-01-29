#ifndef PCF8574_H_INCLUDED
#define PCF8574_H_INCLUDED

#include "iic.h"
#include "pcf8574_lcd.h"

/*
Portu struktura: Quasi-bidirectional I/Os.

PCF8574 konfiguravimas:
    jai i atitinkamo pino bita irasyti 1, jis dirbs kaip INPUT. Is jo galima skaityti jo busena;
    jai pinas turi dirbti kaip OUTPUT, i ji tiesiog rasom 0/1. Isejime turesim atitinkama lygi;

    pcf8574_Write(0xFF);    // <-- visi pinai kaip INPUT, arba visi pinai kaip OUTPUT ir ju isejime turim 1
    pcf8574_Write(0x00);    // <-- visi pinai kaip OUTPUT ir ju isejime turim 0
*/

#define     PCF8574_BASE_ADDRESS    0x20    // <-- adresas be paskutiniu 3-ju bitu ir be R/W bito islygintas i desine
#define     IIC_DELAY_MS            5


typedef struct{
    uint8_t iic_addr;
    uint8_t pcf_port;
    uint8_t state;
}PCF8574_TypeDef;


extern PCF8574_TypeDef IIC_LCD;
extern PCF8574_TypeDef IIC_Keypad;

void    pcf8574_Config(void);
void    pcf8574_Read(PCF8574_TypeDef* dev);
void    pcf8574_Write(PCF8574_TypeDef* dev);
void    pcf8574_SetPin(PCF8574_TypeDef* dev, uint8_t pin);
void    pcf8574_ResetPin(PCF8574_TypeDef* dev, uint8_t pin);

#endif /* PCF8574_H_INCLUDED */

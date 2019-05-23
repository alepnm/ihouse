#ifndef	_EEPROM_24XX_H
#define	_EEPROM_24XX_H

#include <stdint.h>
#include <stdlib.h>

#define     EE24LC32

#ifdef EE24LC08
    /* 24LC08 EEPROM */
    #define     EEP_IIC_ADDRESS         0xA0
    #define     EEP_MEMORY_SIZE         1024
    #define     PAGE_CALC_SHIFT_VAL     4
    #define     BLOCK_CALC_SHIFT_VAL    8
    #define     DATA_OFFSET_MASK        0x0F
    #define     PAGE_SIZE               16
    #define     PAGES_IN_BLOCK          16
#endif

#ifdef EE24LC16
    /* 24LC16 EEPROM */
    #define     EEP_IIC_ADDRESS         0xA0
    #define     EEP_MEMORY_SIZE         2048
    #define     PAGE_CALC_SHIFT_VAL     4
    #define     BLOCK_CALC_SHIFT_VAL    8
    #define     DATA_OFFSET_MASK        0x0F
    #define     PAGE_SIZE               16
    #define     PAGES_IN_BLOCK          16
#endif

#ifdef EE24LC32
    /* 24LC16 EEPROM */
    #define     EEP_IIC_ADDRESS         0xA0
    #define     EEP_MEMORY_SIZE         4096
    #define     PAGE_CALC_SHIFT_VAL     4
    #define     BLOCK_CALC_SHIFT_VAL    8
    #define     DATA_OFFSET_MASK        0x0F
    #define     PAGE_SIZE               8
    #define     PAGES_IN_BLOCK          512
#endif


uint8_t	    EEP24XX_Write(uint16_t addr, void* data, size_t size_of_data);
uint8_t	    EEP24XX_Read(uint16_t addr, void* data, size_t size_of_data);
uint8_t     EEP24XX_Clear(void);

uint8_t     EEP24XX_WriteByByte(uint16_t mem_addr, void *data, size_t size_of_data);
uint8_t     EEP24XX_ReadByte(uint16_t mem_addr);
uint16_t    EEP24XX_ReadWord(uint16_t mem_addr);
uint32_t    EEP24XX_ReadDWord(uint16_t mem_addr);
void        EEP24XX_WriteByte(uint16_t mem_addr, uint8_t val);
void        EEP24XX_WriteWord(uint16_t mem_addr, uint16_t val);
void        EEP24XX_WriteDWord(uint16_t mem_addr, uint32_t val);


#endif

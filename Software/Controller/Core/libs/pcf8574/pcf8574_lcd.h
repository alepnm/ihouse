#ifndef PCF8574_LCD_H_INCLUDED
#define PCF8574_LCD_H_INCLUDED


/* I2C LCD */
#define PIN_RS      (1 << 0)
#define PIN_RW      (1 << 1)
#define PIN_EN      (1 << 2)
#define BACKLIGHT   (1 << 3)


extern char lcd_buffer[32];



void LCD_Init(uint8_t lcd_addr);
void LCD_SendCommand(uint8_t lcd_addr, uint8_t cmd);
void LCD_SendData(uint8_t lcd_addr, uint8_t data);
void LCD_SendString(uint8_t lcd_addr, char *str);

void LCD_SendInternal(uint8_t lcd_addr, uint8_t data, uint8_t flags);

void LCD_Clear(uint8_t lcd_addr);
void LCD_SetPosition(uint8_t lcd_addr, uint8_t line, uint8_t pos);

#endif /* PCF8574_LCD_H_INCLUDED */

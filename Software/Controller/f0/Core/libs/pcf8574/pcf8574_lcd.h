#ifndef PCF8574_LCD_H_INCLUDED
#define PCF8574_LCD_H_INCLUDED


/* I2C LCD */
#define PIN_RS                      (1 << 0)
#define PIN_RW                      (1 << 1)
#define PIN_EN                      (1 << 2)
#define BACKLIGHT                   (1 << 3)


//#define L1602_CMD_READ_ADDRES       PIN_RW
//#define L1602_CMD_WRITE_TO_RAM      PIN_RS
//#define L1602_CMD_READ_FROM_RAM     PIN_RS|PIN_RW
#define L1602_CMD_CLEAR             0x01
#define L1602_CMD_RETURN_HOME       0x02
#define L1602_CMD_ENTRY_MODE        0x04
#define L1602_CMD_DISPLAY           0x08
#define L1602_CMD_SHIFT             0x10
#define L1602_CMD_FUNCTION          0x20
#define L1602_CMD_SET_CGRAM         0x40
#define L1602_CMD_SET_DDRAM         0x80

/* L1602_CMD_ENTRY_MODE flagai */
#define L1602_FLAG_SHIFT_ON         (1 << 0)
#define L1602_FLAG_MODE_INC         (1 << 1)

/* L1602_CMD_DISPLAY */
#define L1602_FLAG_BLINK_ON         (1 << 0)
#define L1602_FLAG_CURSOR_ON        (1 << 1)
#define L1602_FLAG_DISPLAY_ON       (1 << 2)

/* L1602_CMD_SHIFT flagai */
#define L1602_FLAG_RIGHT_SHIFT      (1 << 2)
#define L1602_FLAG_DISPLAY_SHIFT    (1 << 3)

/* L1602_CMD_FUNCTION flagai */
#define L1602_FLAG_FONT_5X10        (1 << 2)
#define L1602_FLAG_2LINE            (1 << 3)
#define L1602_FLAG_DATA8BIT         (1 << 4)

/*  */
#define L1602_FLAG_BUSY             (1 << 7)



extern char lcd_buffer[32];



void LCD_Init(uint8_t lcd_addr);
void LCD_SendCommand(uint8_t lcd_addr, uint8_t cmd);
void LCD_SendData(uint8_t lcd_addr, uint8_t data);
void LCD_SendString(uint8_t lcd_addr, char *str);

void LCD_SendInternal(uint8_t lcd_addr, uint8_t data, uint8_t flags);

void LCD_Clear(uint8_t lcd_addr);
void LCD_SetPosition(uint8_t lcd_addr, uint8_t line, uint8_t pos);

#endif /* PCF8574_LCD_H_INCLUDED */

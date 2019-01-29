#include "pcf8574.h"


PCF8574_TypeDef IIC_Keypad = { PCF8574_BASE_ADDRESS<<1, 0x00, I2C_OK };
PCF8574_TypeDef IIC_LCD = { (PCF8574_BASE_ADDRESS+7)<<1, 0x00, I2C_OK };


/*  */
void pcf8574_Config(void) {

    if( IIC_Check(IIC_Keypad.iic_addr) != I2C_OK ) {
        // PCF8574 init error
        IIC_Keypad.state = I2C_ADDR_NACK;
    }


    if( IIC_Check(IIC_LCD.iic_addr) != I2C_OK ) {
        // PCF8574 init error
        IIC_LCD.state = I2C_ADDR_NACK;
    }


    if(IIC_LCD.state == I2C_OK){

        LCD_Init(IIC_LCD.iic_addr);

        // set address to 0x00
        LCD_SendCommand(IIC_LCD.iic_addr, 0b10000000);
        LCD_SendString(IIC_LCD.iic_addr, " Using 1602 LCD");

        // set address to 0x40
        LCD_SendCommand(IIC_LCD.iic_addr, 0b11000000);
        LCD_SendString(IIC_LCD.iic_addr, "  over I2C bus");
    }

}

/*  */
void pcf8574_Read(PCF8574_TypeDef* dev) {

    if(dev->state == I2C_ADDR_NACK) return;

    LL_I2C_HandleTransfer(I2C1, dev->iic_addr, LL_I2C_ADDRSLAVE_7BIT, 1, LL_I2C_MODE_AUTOEND, LL_I2C_GENERATE_START_READ);
    while( LL_I2C_IsActiveFlag_ADDR(I2C1) != RESET );

    while( LL_I2C_IsActiveFlag_RXNE(I2C1) == RESET );
    dev->pcf_port = LL_I2C_ReceiveData8(I2C1);
}


/*  */
void pcf8574_Write(PCF8574_TypeDef* dev) {

    if(dev->state == I2C_ADDR_NACK) return;

    LL_I2C_HandleTransfer(I2C1, dev->iic_addr, LL_I2C_ADDRSLAVE_7BIT, 1, LL_I2C_MODE_AUTOEND, LL_I2C_GENERATE_START_WRITE);
    while( LL_I2C_IsActiveFlag_ADDR(I2C1) != RESET );

    LL_I2C_TransmitData8(I2C1, dev->pcf_port);
    while( LL_I2C_IsActiveFlag_TXE(I2C1) == RESET );
}


/*  */
void pcf8574_SetPin(PCF8574_TypeDef* dev, uint8_t pin) {

    if(dev->state == I2C_ADDR_NACK) return;

    SET_BIT(dev->pcf_port, 1<<pin);
    pcf8574_Write(dev);
}


/*  */
void pcf8574_ResetPin(PCF8574_TypeDef* dev, uint8_t pin) {

    if(dev->state == I2C_ADDR_NACK) return;

    CLEAR_BIT(dev->pcf_port, 1<<pin);
    pcf8574_Write(dev);
}




/*  */
void LCD_Init(uint8_t lcd_addr) {

    LCD_SendCommand(lcd_addr, 0b00110000);  // 4-bit mode, 2 lines, 5x7 format
    LCD_SendCommand(lcd_addr, 0b00000010);  // display & cursor home (keep this!)
    LCD_SendCommand(lcd_addr, 0b00001100);  // display on, right shift, underline off, blink off
    LCD_SendCommand(lcd_addr, 0b00000001);  // clear display (optional here)
}

/*  */
void LCD_SendCommand(uint8_t lcd_addr, uint8_t cmd) {
    LCD_SendInternal(lcd_addr, cmd, 0);
}

/*  */
void LCD_SendData(uint8_t lcd_addr, uint8_t data) {
    LCD_SendInternal(lcd_addr, data, PIN_RS);
}

/*  */
void LCD_SendString(uint8_t lcd_addr, char *str) {
    while(*str) {
        LCD_SendData(lcd_addr, (uint8_t)(*str));
        str++;
    }
}

/*  */
void LCD_SendInternal(uint8_t lcd_addr, uint8_t data, uint8_t flags) {

    uint8_t up = data & 0xF0;
    uint8_t lo = (data << 4) & 0xF0;

    uint8_t data_arr[4];

    data_arr[0] = up|flags|BACKLIGHT|PIN_EN;
    data_arr[1] = up|flags|BACKLIGHT;
    data_arr[2] = lo|flags|BACKLIGHT|PIN_EN;
    data_arr[3] = lo|flags|BACKLIGHT;

    LL_I2C_HandleTransfer(I2C1, lcd_addr, LL_I2C_ADDRSLAVE_7BIT, 4, LL_I2C_MODE_AUTOEND, LL_I2C_GENERATE_START_WRITE);
    while( LL_I2C_IsActiveFlag_ADDR(I2C1) != RESET );

    uint8_t i = 0;

    do {
        LL_I2C_TransmitData8(I2C1, data_arr[i]);
        while( LL_I2C_IsActiveFlag_TXE(I2C1) == RESET );
    } while(++i < 4);

    LL_mDelay(LCD_DELAY_MS);
}

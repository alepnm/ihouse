#ifndef MCP23017_H_INCLUDED
#define MCP23017_H_INCLUDED


#define MCP23017_BASE_ADDRESS   0x40

#define MCP_IODIR               0x00
#define MCP_IPOL                0x01
#define MCP_GPINTEN             0x02
#define MCP_DEFVAL              0x03
#define MCP_INTCON              0x04
#define MCP_IOCON               0x05
#define MCP_GPPU                0x06
#define MCP_INTF                0x07
#define MCP_INTCAP              0x08
#define MCP_GPIO                0x09
#define MCP_OLAT                0x0A

#define MCP_PORTA(reg)          reg
#define MCP_PORTB(reg)          (reg|0x10)

#define ALL_INPUTS              0xFF
#define ALL_OUTPUTS             0x00









#endif /* MCP23017_H_INCLUDED */

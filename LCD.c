#include<pic.h>
#define _XTAL_FREQ 2000000
#define RS RD0
#define RW RD1
#define EN RD2
void lcd_init();
void lcd_cmd(unsigned char);
void lcd_data(char);
void main()
{
	unsigned int i=0;
	TRISB=0x00;
	TRISD=0x00;
	unsigned char name[5]="JAVED";
	lcd_init();
	for(i=0;i<=5;i++)
	{
		lcd_data(name[i]);
	}
	while(1)
	{
	}
}
    void lcd_cmd(unsigned char cmd)
    {
	RS=0;
	RW=0;
	PORTB=cmd;
	EN=1;
	__delay_ms(2);
	EN=0;
	}
	void lcd_data(char dat)
	{
	RS=1;
	RW=0;
	PORTB=dat;
	EN=1;
	__delay_ms(2);
	EN=0;
	}
	void lcd_init()
	{
		lcd_cmd(0x38);
		lcd_cmd(0x0c);
		lcd_cmd(0x01);
		lcd_cmd(0x80);
		lcd_cmd(0x06);
	}
		
		 
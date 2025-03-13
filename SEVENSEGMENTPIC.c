#include<pic.h>
#define _XTAL_FREQ 2000000
#define segment RB0
void main()
{
	int i=0;
	TRISB=0x00;
	char ssd[10]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
	while(1)
	{
		for(i=0;i<10;i++)
		{
			PORTB=ssd[i];
			__delay_ms(1000);
		}
	}
}		
#include<pic.h>
#define _XTAL_FREQ 2000000
#define motor RB0
void main()
{
	TRISB=0x00;
	while(1)
	{
		PORTB=0x0E;
		__delay_ms(1000);
		PORTB=0x0B;
		__delay_ms(1000);
		PORTB=0x0D;
		__delay_ms(1000);
		PORTB=0x07;
		__delay_ms(1000);
	}
}		
	

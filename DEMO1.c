#include<pic.h>
#define _XTAL_FREQ 2000000
#define motor RB0
void main()
{
	TRISB0=0x00;

	while(1)
{
motor=1;
__delay_ms(50);
motor=0;
__delay_ms(50);
}
}

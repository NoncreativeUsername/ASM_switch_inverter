.text
.global main

//switch and led addresses
.set LED_CTL, 0x41210000
.set SW_DATA, 0x41220000

main:
	ldr r1,=SW_DATA		//load sw addresses into r1
	ldr r2,=LED_CTL		//load led addresses into r2

loop:
	ldr r0, [r1]		//load switch values *r1 ->r0
	EOR r0, #0xFF		//invert r0 by Xor with 0xFF
	str r0, [r2]		//store r0 ->*r2
	b loop				//go to loop

.end

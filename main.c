#include <gb/gb.h>
#include <stdio.h>


void main(void)
{
	/* initialization code, run only once */
	printf("HELLO WORLD!\n");

    for (;;) {
		/* loop code, run once per frame */
		printf("LOOPING FOREVER...\n");

		/* yield cpu and wait for next frame */
        vsync();
    }
}

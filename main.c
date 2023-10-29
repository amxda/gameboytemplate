#include <gb/gb.h>
#include <types.h>
#include <stdint.h>


void main(void)
{
    for (;;) {
		/* main loop */
	
		// YOUR CODE HERE

		/* yield cpu and wait for next frame */
        vsync();
    }
}

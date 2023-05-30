#include "c012.h"
#include "board.h"

#define C012_PORT 0

#define C012_PIN_RS0 		18
#define C012_PIN_RS1 		19
#define C012_PIN_RNOTW      20
#define C012_PIN_NOTCS 		22
#define C012_PIN_OUTPUT_INT 23
#define C012_PIN_INPUT_INT 	24
#define C012_PIN_RESET 		25

#define C012_D07_SHIFT 		7
#define C012_D07_MASK		(0xFF << C012_D07_SHIFT)

#define C012_INPUT_READY() \
	gpio_reg->B[C012_PORT][C012_PIN_INPUT_INT]

#define C012_OUTPUT_READY() \
	gpio_reg->B[C012_PORT][C012_PIN_OUTPUT_INT]

#define C012_READ_MODE() \
	gpio_reg->DIRCLR[C012_PORT] = C012_D07_MASK; \
	gpio_reg->B[C012_PORT][C012_PIN_RS0] = 0; \
	gpio_reg->B[C012_PORT][C012_PIN_RNOTW] = 1;

#define C012_READ_DATA(data) \
	gpio_reg->B[C012_PORT][C012_PIN_NOTCS] = 0; \
	__NOP(); \
	__NOP(); \
	__NOP(); \
	__NOP(); \
	data = *mpin_reg >> C012_D07_SHIFT; \
	gpio_reg->B[C012_PORT][C012_PIN_NOTCS] = 1;

#define C012_WRITE_MODE() \
	gpio_reg->DIRSET[C012_PORT] = C012_D07_MASK; \
	gpio_reg->B[C012_PORT][C012_PIN_RS0] = 1; \
	gpio_reg->B[C012_PORT][C012_PIN_RNOTW] = 0;

#define C012_WRITE_DATA(data) \
	*mpin_reg = (uint32_t)data << C012_D07_SHIFT; \
	gpio_reg->B[C012_PORT][C012_PIN_NOTCS] = 0; \
	gpio_reg->B[C012_PORT][C012_PIN_NOTCS] = 1; \

void c012_reset(void)
{
	GPIO->MASK[C012_PORT] = ~C012_D07_MASK;
	GPIO->B[C012_PORT][C012_PIN_NOTCS] = 1;

	GPIO->B[C012_PORT][C012_PIN_RESET] = 1;
	for(int i= 0; i < 1000; i++);
	GPIO->B[C012_PORT][C012_PIN_RESET] = 0;
	for(int i= 0; i < 1000; i++);

	// enable OUTPUTINT
	GPIO->DIRSET[C012_PORT] = C012_D07_MASK;
	GPIO->B[C012_PORT][C012_PIN_RS0] = 0;
	GPIO->B[C012_PORT][C012_PIN_RS1] = 1;
	GPIO->B[C012_PORT][C012_PIN_RNOTW] = 0;
	GPIO->MPIN[C012_PORT] = 0x02 << C012_D07_SHIFT;
	GPIO->B[C012_PORT][C012_PIN_NOTCS] = 0;
	GPIO->B[C012_PORT][C012_PIN_NOTCS] = 1;

	// enable INPUTINT
	GPIO->DIRSET[C012_PORT] = C012_D07_MASK;
	GPIO->B[C012_PORT][C012_PIN_RS0] = 1;
	GPIO->B[C012_PORT][C012_PIN_RS1] = 1;
	GPIO->B[C012_PORT][C012_PIN_RNOTW] = 0;
	GPIO->MPIN[C012_PORT] = 0x02 << C012_D07_SHIFT;
	GPIO->B[C012_PORT][C012_PIN_NOTCS] = 0;
	GPIO->B[C012_PORT][C012_PIN_NOTCS] = 1;

	GPIO->DIRCLR[C012_PORT] = C012_D07_MASK;
	GPIO->B[C012_PORT][C012_PIN_RS0] = 0;
	GPIO->B[C012_PORT][C012_PIN_RS1] = 0;
	GPIO->B[C012_PORT][C012_PIN_RNOTW] = 1;
}

void c012_power_off(void)
{
	GPIO->MASK[C012_PORT] = ~C012_D07_MASK;
	GPIO->B[C012_PORT][C012_PIN_NOTCS] = 0;
	GPIO->B[C012_PORT][C012_PIN_RESET] = 0;
	GPIO->MPIN[C012_PORT] = 0;
}

__attribute__((optimize("O0")))
void c012_run(fifo_t *rx_fifo, fifo_t *tx_fifo)
{
	register volatile GPIO_Type *gpio_reg asm ("r0") = GPIO;
	register volatile uint32_t *mpin_reg asm ("r1") = &GPIO->MPIN[C012_PORT];
	register volatile fifo_t *rx_fifo_reg asm ("r2") = rx_fifo;
	register volatile fifo_t *tx_fifo_reg asm ("r3") = tx_fifo;

	while (1) {
    	if (FIFO_DEQ_READY(rx_fifo_reg)) {
        	// fast write slow read loop
        	C012_WRITE_MODE();
        	do {
       			if (C012_OUTPUT_READY()) {
           			C012_WRITE_DATA(*rx_fifo_reg->tail_p);
           			FIFO_DEQ_BYTE(rx_fifo_reg);
           		}
       	    	if (C012_INPUT_READY()) {
       	    		if (FIFO_ENQ_READY(tx_fifo_reg)) {
       	    	    	C012_READ_MODE();
       	        		C012_READ_DATA(*tx_fifo_reg->head_p);
       	        		FIFO_ENQ_BYTE(tx_fifo_reg);
       	        		C012_WRITE_MODE();
       	        	}
       	    	}
        	} while (FIFO_DEQ_READY(rx_fifo_reg));
    	} else {
	    	// fast read loop
    		C012_READ_MODE();
    		do {
    	    	if (C012_INPUT_READY()) {
    	    		if (FIFO_ENQ_READY(tx_fifo_reg)) {
    	        		C012_READ_DATA(*tx_fifo_reg->head_p);
    	        		FIFO_ENQ_BYTE(tx_fifo_reg);
    	        	}
    	    	}
    		} while (!FIFO_DEQ_READY(rx_fifo_reg));
    	}
    }
}

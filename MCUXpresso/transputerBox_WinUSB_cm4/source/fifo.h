#ifndef FIFO_H
#define FIFO_H

#include <stdint.h>

typedef int fifo_int_t;

typedef volatile struct
{
	uint8_t *buffer;
	uint8_t *head_p;
	uint8_t *tail_p;
	uint8_t *next_p;
	uint8_t *end_p;
	fifo_int_t size;
} fifo_t;

#define FIFO_ENQ_READY(fifo) \
	(fifo.head_p != fifo.next_p)

#define FIFO_ENQ_BYTE(fifo, byte) \
	*fifo.head_p = byte; \
	register uint8_t *next_p = fifo.next_p + 1; \
	if (next_p >= fifo.end_p) { \
		next_p -= fifo.size; \
	} \
	fifo.next_p = next_p;

#define FIFO_DEQ_READY(fifo) \
	(fifo.head_p != fifo.tail_p)

#define FIFO_DEQ_BYTE(fifo, byte) \
	byte = *fifo.tail_p; \
	register uint8_t *tail_p = fifo.tail_p + 1; \
	if (tail_p >= fifo.end_p) { \
		tail_p -= fifo.size; \
	} \
	fifo.tail_p = tail_p;

void fifo_init(fifo_t *fifo, uint8_t *buffer, fifo_int_t size);
fifo_int_t fifo_enq(fifo_t *fifo, uint8_t *buffer, fifo_int_t byte_count);
fifo_int_t fifo_deq(fifo_t *fifo, uint8_t *buffer, fifo_int_t byte_count);
fifo_int_t fifo_space(fifo_t *fifo);
fifo_int_t fifo_size(fifo_t *fifo);
fifo_int_t fifo_count(fifo_t *fifo);
void fifo_flush(fifo_t *fifo);

#endif

#include "fifo.h"
#include "string.h"

void fifo_init(fifo_t* fifo, uint8_t* buffer, fifo_int_t size)
{
	memset((void*)fifo, 0, sizeof(fifo_t));
	fifo->buffer = buffer;
	fifo->size = size;
	fifo->end_p = fifo->buffer + fifo->size;
	fifo_flush(fifo);
}

static uint8_t *next_p(fifo_t* fifo, uint8_t *p, fifo_int_t byte_count)
{
	p += byte_count;
	if (p >= fifo->end_p) {
		p -= fifo->size;
	}
	return p;
}

fifo_int_t fifo_enq(fifo_t* fifo, uint8_t* buffer, fifo_int_t byte_count)
{
	fifo_int_t space = fifo_space(fifo);
	if (space < byte_count) {
		byte_count = space;
	}
	if ((fifo->head_p + byte_count) > fifo->end_p) {
		fifo_int_t count_1 = byte_count - (fifo->end_p - fifo->head_p);
		fifo_int_t count_2 = byte_count - count_1;
		memcpy(fifo->head_p, buffer, count_2);
		memcpy(fifo->buffer, buffer + count_2, count_1);
	}
	else {
		memcpy(fifo->head_p, buffer, byte_count);
	}
	fifo->head_p = next_p(fifo, fifo->head_p, byte_count);
	return byte_count;
}

fifo_int_t fifo_deq(fifo_t * fifo, uint8_t *buffer, fifo_int_t byte_count)
{
	fifo_int_t count = fifo_count(fifo);
	if (byte_count > count) {
		byte_count = count;
	}
	if ((fifo->tail_p + byte_count) > fifo->end_p) {
		fifo_int_t count_1 = byte_count - (fifo->end_p - fifo->tail_p);
		fifo_int_t count_2 = byte_count - count_1;
		memcpy(buffer, fifo->tail_p, count_2);
		memcpy(buffer + count_2, fifo->buffer, count_1);
	}
	else {
		memcpy(buffer, fifo->tail_p, byte_count);
	}
	fifo->tail_p = next_p(fifo, fifo->tail_p, byte_count);
	return byte_count;
}

fifo_int_t fifo_space(fifo_t * fifo)
{
	return fifo_size(fifo) - fifo_count(fifo);
}

fifo_int_t fifo_size(fifo_t * fifo)
{
	return fifo->size - 1;
}

fifo_int_t fifo_count(fifo_t * fifo)
{
	fifo_int_t count = fifo->head_p - fifo->tail_p;
	if (count < 0) {
		count += fifo->size;
	}
	return count;
}

void fifo_flush(fifo_t * fifo)
{
	fifo->head_p = fifo->buffer;
	fifo->tail_p = fifo->buffer;
	fifo->next_p = fifo->buffer + 1;
}

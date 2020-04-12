#include "fifo.h"
#include "string.h"

void fifo_init(fifo_t* fifo, uint8_t* buffer, fifo_int_t size)
{
	memset(fifo, 0, sizeof(fifo_t));
	fifo->buffer = buffer;
	fifo->head_p = buffer;
	fifo->tail_p = buffer;
	fifo->size = size;
	fifo->end_p = fifo->buffer + fifo->size;
	FIFO_MUTEX_INIT();
}

fifo_int_t fifo_push(fifo_t* fifo, uint8_t* buffer, fifo_int_t byte_count)
{
	fifo_int_t space = fifo_space(fifo);
	if (space < byte_count) {
		byte_count = space;
	}
	FIFO_MUTEX_LOCK();
	if ((fifo->head_p + byte_count) > fifo->end_p) {
		fifo_int_t count_1 = byte_count - (fifo->end_p - fifo->head_p);
		fifo_int_t count_2 = byte_count - count_1;
		memcpy(fifo->head_p, buffer, count_2);
		memcpy(fifo->buffer, buffer + count_2, count_1);
	}
	else {
		memcpy(fifo->head_p, buffer, byte_count);
	}
	fifo->head_p += byte_count;
	if (fifo->head_p >= fifo->end_p) {
		fifo->head_p -= fifo->size;
	}
	FIFO_MUTEX_UNLOCK();
	return byte_count;
}

fifo_int_t fifo_pop(fifo_t * fifo, uint8_t *buffer, fifo_int_t byte_count)
{
	fifo_int_t count = fifo_count(fifo);
	if (byte_count > count) {
		byte_count = count;
	}
	FIFO_MUTEX_LOCK();
	if ((fifo->tail_p + byte_count) > fifo->end_p) {
		fifo_int_t count_1 = byte_count - (fifo->end_p - fifo->tail_p);
		fifo_int_t count_2 = byte_count - count_1;
		memcpy(buffer, fifo->tail_p, count_2);
		memcpy(buffer + count_2, fifo->buffer, count_1);
	}
	else {
		memcpy(buffer, fifo->tail_p, byte_count);
	}
	fifo->tail_p += byte_count;
	if (fifo->tail_p >= fifo->end_p) {
		fifo->tail_p -= fifo->size;
	}
	FIFO_MUTEX_UNLOCK();
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
	FIFO_MUTEX_LOCK();
	fifo_int_t count = fifo->head_p - fifo->tail_p;
	if (count < 0) {
		count += fifo->size;
	}
	FIFO_MUTEX_UNLOCK();
	return count;
}

void fifo_flush(fifo_t * fifo)
{
	FIFO_MUTEX_LOCK();
	fifo->head_p = fifo->buffer;
	fifo->tail_p = fifo->buffer;
	FIFO_MUTEX_UNLOCK();
}

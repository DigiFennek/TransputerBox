#ifdef __cplusplus
extern "C" {
#endif

#ifndef FIFO_H
#define FIFO_H

#include <stdint.h>

#if defined(_WIN32) || defined(_WIN64)
#include "windows.h"
#define FIFO_MUTEX_INIT() fifo->mutex = CreateMutex(0, 0, 0)
#define FIFO_MUTEX_LOCK() WaitForSingleObject(fifo->mutex, INFINITE)
#define FIFO_MUTEX_UNLOCK() ReleaseMutex(fifo->mutex)
#elif MULTICORE_APP==1
#include "fsl_mailbox.h"
#define FIFO_MUTEX_INIT()
#define FIFO_MUTEX_LOCK() {while(MAILBOX_GetMutex(MAILBOX) == 0);}
#define FIFO_MUTEX_UNLOCK() {MAILBOX_SetMutex(MAILBOX);}
#else
#define FIFO_MUTEX_INIT()
#define FIFO_MUTEX_LOCK()
#define FIFO_MUTEX_UNLOCK()
#endif

	typedef int fifo_int_t;

	typedef struct
	{
		uint8_t* buffer;
		uint8_t* head_p;
		uint8_t* tail_p;
		uint8_t* end_p;
		fifo_int_t size;
#if defined(_WIN32) || defined(_WIN64)
		HANDLE mutex;
#endif
	} fifo_t;

#define FIFO_PUSH_READY(fifo) \
	((fifo.head_p + 1) != fifo.tail_p && (fifo.head_p + 1 - fifo.size) != fifo.tail_p)

#define FIFO_PUSH_BYTE(fifo, byte) \
	FIFO_MUTEX_LOCK(); \
	*fifo.head_p++ = byte; \
	if (fifo.head_p >= fifo.end_p) { \
		fifo.head_p -= fifo.size; \
	} \
	FIFO_MUTEX_UNLOCK();

#define FIFO_POP_READY(fifo) \
	(fifo.head_p != fifo.tail_p)

#define FIFO_POP_BYTE(fifo, byte) \
	FIFO_MUTEX_LOCK(); \
	byte = *fifo.tail_p++; \
	if (fifo.tail_p >= fifo.end_p) { \
		fifo.tail_p -= fifo.size; \
	} \
	FIFO_MUTEX_UNLOCK();

	void fifo_init(fifo_t* fifo, uint8_t* buffer, fifo_int_t size);
	fifo_int_t fifo_push(fifo_t* fifo, uint8_t* buffer, fifo_int_t byte_count);
	fifo_int_t fifo_pop(fifo_t* fifo, uint8_t* buffer, fifo_int_t byte_count);
	fifo_int_t fifo_space(fifo_t* fifo);
	fifo_int_t fifo_size(fifo_t* fifo);
	fifo_int_t fifo_count(fifo_t* fifo);
	void fifo_flush(fifo_t* fifo);

#endif

#ifdef __cplusplus
}
#endif


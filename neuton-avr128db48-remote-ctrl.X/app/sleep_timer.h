#ifndef SLEEP_TIMER_H
#define	SLEEP_TIMER_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>


#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

void sleep_timer_init(void);
uint64_t sleep_timer_read_ms(void);
uint64_t sleep_timer_read_us(void);
void sleep_timer_sleep_ms(uint32_t ms);
void sleep_timer_sleep_us(uint32_t us);

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* SLEEP_TIMER_H */

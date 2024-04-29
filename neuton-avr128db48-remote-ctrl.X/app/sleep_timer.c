#include "sleep_timer.h"
#include <system/system.h>
#include "app_config.h"

static volatile uint32_t tickcounter = 0;
static volatile uint16_t tickrate = 0;

static void Ticker_Callback() {
    static uint32_t mstick = 0;

    ++tickcounter;
    if (tickrate == 0 || mstick > tickrate) {
        mstick = 0;
    }
    else if (++mstick == tickrate) {
        mstick = 0;
    }
}

void sleep_timer_init(void)
{
    /* Register and start the millisecond interrupt ticker */
    TC_TimerCallbackRegister(Ticker_Callback);
}

uint64_t sleep_timer_read_ms(void)
{
    return tickcounter;
}

uint64_t sleep_timer_read_us(void)
{
    return tickcounter * 1000U + (uint32_t) TC_TimerGet_us();
}

void sleep_timer_sleep_ms(uint32_t ms)
{
    uint32_t t0 = sleep_timer_read_ms();
    while ((sleep_timer_read_ms() - t0) < ms) { };
}

void sleep_timer_sleep_us(uint32_t us)
{
    uint32_t t0 = sleep_timer_read_us();
    while ((sleep_timer_read_us() - t0) < us) { };
}
#include "pico/stdlib.h"

int main() {
#ifndef PICO_DEFAULT_LED_PIN

#else
    const uint LED_PIN = PICO_DEFAULT_LED_PIN;
    gpio_init_mask(0b11111111);
    gpio_set_dir_masked(0b11111111,0b11111111);
    while (true) {
        //gpio_put(LED_PIN, 1);
        gpio_put_all(0b11111111);
        sleep_ms(250);
        //gpio_put(LED_PIN, 0);
        gpio_put_all(0);
        sleep_ms(250);
    }
#endif
}
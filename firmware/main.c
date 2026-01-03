#include "gpio.h"
int main(void)
{
    gpio_init();

    while (1)
    {
        gpio_toggle();
    }

    return 0;
}

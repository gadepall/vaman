//Code by Umesh Garg
//Revised by GVV Sharma
//April 24, 2022
//https://www.gnu.org/licenses/gpl-3.0.en.html
//
//Driving Seven Segment Display using esp32
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"

#define a GPIO_NUM_12          
#define b GPIO_NUM_13        
#define c GPIO_NUM_14        
#define d GPIO_NUM_15        
#define e GPIO_NUM_16
#define f GPIO_NUM_17
#define g GPIO_NUM_18


extern "C" void app_main() 
{
  gpio_pad_select_gpio(a);
  gpio_pad_select_gpio(b);
  gpio_pad_select_gpio(c);
  gpio_pad_select_gpio(d);
  gpio_pad_select_gpio(e);
  gpio_pad_select_gpio(f);
  gpio_pad_select_gpio(g);

gpio_set_direction(a, GPIO_MODE_OUTPUT);
 gpio_set_direction(b, GPIO_MODE_OUTPUT);
 gpio_set_direction(c, GPIO_MODE_OUTPUT);
 gpio_set_direction(d, GPIO_MODE_OUTPUT);
 gpio_set_direction(e, GPIO_MODE_OUTPUT);
 gpio_set_direction(f, GPIO_MODE_OUTPUT);
 gpio_set_direction(g, GPIO_MODE_OUTPUT);

 while(1)
 {
    //for displaying output
    //9 will be display
          gpio_set_level(a,0);
         gpio_set_level(b,0); 
         gpio_set_level(c,0);
         gpio_set_level(d,1);
         gpio_set_level(e,1);
         gpio_set_level(f,0);
         gpio_set_level(g,0);
vTaskDelay(1111 / portTICK_PERIOD_MS);

 }
}

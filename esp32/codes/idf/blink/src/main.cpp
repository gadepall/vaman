//Code by GVV Sharma
//April 24, 2022
//https://www.gnu.org/licenses/gpl-3.0.en.html
//
//Blink program using esp idf
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"

//Assign variable to pin number 2 for simplicity
#define dot GPIO_NUM_2


extern "C" void app_main() 
{
	//Configure corresponding pin as gpio
  gpio_pad_select_gpio(dot);

  // Declaring pin as output
 gpio_set_direction(dot, GPIO_MODE_OUTPUT);

 while(1)
 {
	 //Blink code
         gpio_set_level(dot,0);//Output 0
vTaskDelay(1000 / portTICK_PERIOD_MS);//Blink Delay
         gpio_set_level(dot,1);
vTaskDelay(1000 / portTICK_PERIOD_MS);//Output 1

 }
}

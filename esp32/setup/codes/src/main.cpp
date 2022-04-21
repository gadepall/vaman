#include <Arduino.h>

//#include <WiFi.h>
//#include <esp32PWMUtilities.h>

void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(18, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(18, HIGH);   // turn the LED on (HIGH is the voltage leve
delay(500);
  digitalWrite(18, LOW);   // turn the LED on (HIGH is the voltage leve

delay(500);

}

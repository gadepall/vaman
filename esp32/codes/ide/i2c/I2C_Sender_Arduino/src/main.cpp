#include <Arduino.h>
#include <Wire.h>

// function that executes whenever data is requested by master
// this function is registered as an event, see setup()
void requestEvent() {
  Wire.write("I am Arduino"); // respond with message of 12 bytes as expected by master

}

void setup() {
  Wire.begin(15);                // join i2c bus with address #0X0F
  Wire.onRequest(requestEvent); // register event
}

void loop() {
  delay(1000);
}


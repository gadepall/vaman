#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal.h>
#include <ArduinoOTA.h>
LiquidCrystal lcd(19, 23, 18, 17, 16, 15);

//    Can be client or even host   //
#ifndef STASSID
#define STASSID "gvv"  // Replace with your network credentials
#define STAPSK  "abcd"  
#endif

const char* ssid = STASSID;
const char* password = STAPSK;

void OTAsetup() {
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    delay(5000);
    ESP.restart();
  }
  ArduinoOTA.begin();
}
void OTAloop() {
  ArduinoOTA.handle();
}
void setup() {
  Wire.begin();        // join i2c bus (address optional for master)
  Serial.begin(9600);  // start serial for output
  lcd.begin(16, 2);
 OTAsetup();
}


void loop() {
	OTAloop();
  delay(10); 
	
	Wire.requestFrom(0x0F, 12);    // request 12 bytes from peripheral device #15
	lcd.setCursor(0, 0);
  // Print a message to the LCD.
  

	while (Wire.available()) { // peripheral may send less than requested
		char c = Wire.read(); // receive a byte as character
		Serial.print(c);         // print the character
		lcd.print(c);
  }
Serial.println();
  delay(1000);
  lcd.clear();
  delay(1000);
}

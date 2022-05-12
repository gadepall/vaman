
//Code by Jala Rajashekhar
//May 12, 2022 
//https://www.gnu.org/licenses/gpl-3.0.en.html
//
//Seven segment diplay OTA
//
//----------------------Skeleton Code--------------------//
#include <WiFi.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>
#include <LiquidCrystal.h>
//    Can be client or even host   //
#ifndef STASSID
#define STASSID "gvv"  // Replace with your network credentials
#define STAPSK  "abcd"  
#endif

LiquidCrystal lcd(19, 23, 18, 17, 16, 15);

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


void setup(){
  OTAsetup();

  //-------------------//
  // Custom setup code //
  //-------------------//
    lcd.begin(16, 2);
}

void loop() {
  OTAloop();
  delay(10);  // If no custom loop code ensure to have a delay in loop
  //-------------------//
  // Custom loop code  //
  //-------------------//
  //
lcd.setCursor(0, 0);
  // Print a message to the LCD.
  lcd.print("Hi ");
  lcd.setCursor(0, 1);
  lcd.print("THIS IS CSP LAB ");  
}



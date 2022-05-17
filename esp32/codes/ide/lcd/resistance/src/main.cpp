
//Code by GVV Sharma
//April 29, 2022
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
#define STASSID "SSID"  // Replace with your network credentials
#define STAPSK  "PASSWORD"  
#endif

LiquidCrystal lcd(19, 23, 18, 17, 16, 15);

const char* ssid = STASSID;
const char* password = STAPSK;

//Declarations
int V_out_q=0;
//V_out_q is the quantized voltage
float V_in = 5,V_out;
//V_in = V_cc
float R1=220,R2; 
//R1 is known resistance
//R2 is unknown resistance
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
  lcd.begin(16, 2);
}
void loop() {
  OTAloop();
  delay(10);  // If no custom loop code ensure to have a delay in loop
  V_out_q=analogRead(34);//reading from Pin34 of ESP32
  //V_out is the actual voltage at the junction of R1 and R2
  V_out = V_in*V_out_q/4095;
  R2 = R1*((V_in)/(V_out)-1.0);
  delay(3000);
  lcd.setCursor(0, 0);
  // Print a message to the LCD.
  lcd.print("Resistance ");
  lcd.setCursor(0, 1);
  lcd.print(R2);
  lcd.print(" Ohms");  
}



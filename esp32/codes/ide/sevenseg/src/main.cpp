//Code by GVV Sharma
//April 26, 2022
//https://www.gnu.org/licenses/gpl-3.0.en.html
//
#include <Arduino.h>

void sevenseg(int a,int b,int c,int d,int e,int f,int g)
{
  digitalWrite(12, a); 
  digitalWrite(13, b); 
  digitalWrite(14, c); 
  digitalWrite(15, d); 
  digitalWrite(16, e); 
  digitalWrite(17, f);     
  digitalWrite(18, g); 
}
void setup() 
{
    pinMode(12, OUTPUT);  
    pinMode(13, OUTPUT);
    pinMode(14, OUTPUT);
    pinMode(15, OUTPUT);
    pinMode(16, OUTPUT);
    pinMode(17, OUTPUT);
    pinMode(18, OUTPUT);            
}
void loop() 
{
sevenseg(0,1,0,0,0,0,0);  
}

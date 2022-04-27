//Code by GVV Sharma
//April 26, 2022
//https://www.gnu.org/licenses/gpl-3.0.en.html
//
#include <Arduino.h>

void sevenseg(int a,int b,int c,int d,int e,int f,int g)
{
  digitalWrite(2, a); 
  digitalWrite(4, b); 
  digitalWrite(22, c); 
  digitalWrite(12, d); 
  digitalWrite(14, e); 
  digitalWrite(16, f);     
  digitalWrite(18, g); 
}
void setup() 
{
    pinMode(2, OUTPUT);  
    pinMode(4, OUTPUT);
    pinMode(22, OUTPUT);
    pinMode(12, OUTPUT);
    pinMode(14, OUTPUT);
    pinMode(16, OUTPUT);
    pinMode(18, OUTPUT);            
}
void loop() 
{
sevenseg(0,0,0,0,0,0,0);  
}

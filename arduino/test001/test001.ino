#include "FastLED.h"
#include <DS1307.h>


#define NUM_LEDS 41
#define DATA_PIN 4

byte position[] = {5,4,6,3,7,2,8,1,9,0};
CRGB leds[NUM_LEDS];
boolean point = true;
byte num[] = {0,0,0,0};
DS1307  rtc(D1, D2);
Time  t;

void setup() {
  Serial.begin(9600);
  Serial.println("Hello");
  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);
  //
//  rtc.setDOW(SUNDAY);        // Set Day-of-Week to SUNDAY
//  rtc.setTime(8, 59, 0);     // Set the time to 12:00:00 (24hr format)
//  rtc.setDate(19, 8, 2017);   // Set the date to October 3th, 2010

}

void drawNumber(byte shift, byte value, CRGB color){
  for(int i=0; i<10; i++){
    if (i==position[value]){
      leds[shift+i] = color;
    } else {
      leds[shift+i]=0;
    }
  }
}

void redraw(){
  drawNumber(0, num[0], 0xff0000);
  drawNumber(10, num[1], 0xff0a00);
  drawNumber(21, num[2], 0x0000ff);
  drawNumber(31, num[3], 0x000aff);
  if (point){
    leds[20]=0x00ff00;
  } else {
    leds[20]=0x0;
  }
}

void loop() {
//  Serial.println("step...");
//  num[3]++;
//  if (num[3]>9){
//    num[3]=0;
//    num[2]++;
//    if (num[2]>9){
//      num[2]=0;
//      num[1]++;
//      if (num[1]>9){
//        num[1]=0;
//        num[0]++;
//        if (num[0]>9){
//          num[0]=0;
//        }
//      }
//    }
//  }
  t = rtc.getTime();
  Serial.printf("%i-%i-%i\t%i:%i:%i\n",
    t.year, t.mon, t.date,
    t.hour, t.min, t.sec);
  num[0]=t.hour/10;
  num[1]=t.hour%10;
  num[2]=t.min/10;
  num[3]=t.min%10;

  point = !point;
  redraw();
  FastLED.show();
  delay(1000);
}

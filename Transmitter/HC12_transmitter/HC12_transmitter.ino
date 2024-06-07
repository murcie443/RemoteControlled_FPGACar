#include <SoftwareSerial.h>
SoftwareSerial HC12(10, 11); // HC-12 TX Pin, HC-12 RX Pin

int mapy; //A1 mapping for angle
int mapx; //A2 mapping for accelerator

byte mergeb; //byte merged

void setup() {
  Serial.begin(9600);
  HC12.begin(9600);               // Serial port to HC12
}

void loop() {
  mapy = map(analogRead(A1), 0, 1000, 0, 15);
  mapx = map(analogRead(A2), 0, 1000, 0, 15);

  //Serial.print("y:");
  //Serial.println(mapy);
  Serial.print("x:");
  Serial.println(mapx);
  Serial.println("");
  
  mergeb = (mapx << 4) | mapy;

  HC12.write(mergeb);

  delay(1);
}
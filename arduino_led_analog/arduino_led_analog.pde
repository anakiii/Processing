import processing.serial.*; 
import cc.arduino.*;
Arduino arduino; 
int ledPin=9;   

void setup() {
  size(400, 400);
  background(0);
  for(int i=0; i<width; i++){
    stroke(map(i, 0, width, 0, 255));
    line(i, 0, i, height);
  }
  println(Arduino.list());        
  arduino = new Arduino(this, "/dev/tty.usbmodem1421", 57600);              
  arduino.pinMode(ledPin, Arduino.OUTPUT);
}                 

void draw() {
}

void mouseMoved(){
  arduino.analogWrite(ledPin, int(map(mouseX, 0, width, 0, 255)));
}
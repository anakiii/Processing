import processing.serial.*; 
import cc.arduino.*;
Arduino arduino; 
int button=8, pState=Arduino.LOW;   

void setup() {
  size(400, 400);
  background(255);
  randomSeed(second());
  println(Arduino.list());        
  arduino = new Arduino(this, "/dev/tty.usbmodem1421", 57600);
  arduino.pinMode(button, Arduino.INPUT);
}                 

void draw() {
  int state = arduino.digitalRead(button);
  if (pState==Arduino.LOW && state==Arduino.HIGH) {
    float radius=random(30, 200);
    fill(random(0, 255), random(0, 255), random(0, 255), 20);
    ellipse(mouseX, mouseY, radius, radius);
  }
  pState=state;
}
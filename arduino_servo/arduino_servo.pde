import processing.serial.*; 
import cc.arduino.*;
Arduino arduino; 
int servo=9, rad=0; //각도
int cx, cy;   

void setup() {
  size(400, 400);
  textSize(30);
  textAlign(CENTER, CENTER);
  cx=width/2;  //호의 중심 좌표
  cy=height*2/3;
  println(Arduino.list());
  arduino = new Arduino(this, "/dev/tty.usbmodem1421", 57600);
  arduino.pinMode(servo, Arduino.SERVO); //attach
}                 

void draw() {
  if (keyPressed) {
    if (key==CODED) {
      if (keyCode==UP) ++rad;
      else if (keyCode==DOWN) --rad;
      rad=constrain(rad, 0, 160);
    }
  }
  drawBackground();
  arduino.servoWrite(servo, rad);
  delay(50);
}

void drawBackground() {
  background(255);
  fill(255);
  arc(cx, cy, width, height, PI, TWO_PI, PIE);
  float r=TWO_PI - map(rad, 0, 360, 0, TWO_PI);
  fill(255, 0, 0); 
  arc(cx, cy, width, height, r ,TWO_PI, PIE);
  fill(0);
  text(rad, cx, cy+30);
}
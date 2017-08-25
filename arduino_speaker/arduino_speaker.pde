import processing.serial.*;
Serial myPort;
char note_chars[]={'1', '2', '3', '4', '5', '6', '7', '8'};
String notes[]={"C", "D", "E", "F", "G", "A", "B", "C2"};
void setup() {
  size(400, 400);
  background(255);
  textSize(200);
  textAlign(CENTER, CENTER);
  fill(0);
  println (Serial.list());
  myPort = new Serial(this, "/dev/tty.usbmodem1421", 9600);
}                 
void draw() {
}
void keyPressed() {
  myPort.write(key);
  background(255);
  for (int i=0; i<8; i++) {
    if (key==note_chars[i]) {
      text(notes[i], width/2, height/2);
    }
  }
}
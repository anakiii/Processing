Ball myBall;

void setup(){
  size(640, 360);
  myBall=new Ball();
}
void draw(){
  background(255);
  myBall.move();
  myBall.display();
}
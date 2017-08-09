int x, y=130; 
void setup() {
  size(400, 300);
  noLoop();
}
void draw() {
  background(200);
  rect(x, y, 50, 20);
  //x+=5;
  //if (x>=width)
  //  x=0;
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==UP) {
      y-=5;
    }
    if (keyCode==DOWN) {
      y+=5;
    }
    if (keyCode==LEFT) {
      x-=5;
    }
    if (keyCode==RIGHT) {
      x+=5;
    }
  }
  redraw();
}
Snake mySnake;
int tail=50;
int tempC;
void setup(){
  size(600, 400);
  mySnake=new Snake(tail);
}

void draw(){
  background(255);
  mySnake.display(tempC);
}

void mousePressed(){
  tempC=color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
}
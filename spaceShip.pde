void setup(){
  size(640, 360); 
}
void draw(){
  background(255);
  spaceShip(482, 159, 223);
  spaceShip(126, 89, 93);
  spaceShip(422, 286, 84);
  spaceShip(294, 49, 48);
  spaceShip(162, 220, 151);
}

void spaceShip(int x, int y, int size){
  ellipseMode(CENTER);
  fill(0);
  ellipse(x, y, size, size/3);
  ellipse(x, y-(size/6), size/3, size/3);
  fill(255);
  ellipse(x, y, size/8, size/8);
  ellipse(x-size/4, y, size/8, size/8);
  ellipse(x+size/4, y, size/8, size/8);
}
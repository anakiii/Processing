class Ball{
  //data
  color c;
  int xpos, ypos;
  int dx, dy;
  int radius;
  //generator
  Ball(){
    c=color(175);
    xpos=int(random(0,width));
    ypos=int(random(0,height));
    dx=5;
    dy=5;
    radius=20;
  }
  //method
  void display(){
    ellipseMode(CENTER);
    stroke(0);
    fill(c);
    ellipse(xpos, ypos, radius*2, radius*2);
  }
  void move(){
    xpos+=dx;
    ypos+=dy;
    if(xpos<radius || xpos>width-radius)
      dx*=-1;
    if(ypos<radius || ypos>height-radius)
      dy*=-1;
  }
}
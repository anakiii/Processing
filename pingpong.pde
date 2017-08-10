int ex, ey, ew;
int dx, dy;
int rx, ry, rw, rh;

void setup(){
  size(400,300);
  ex=int(random(0, width/2)); //ellipse xpos
  ey=int(random(0, height));  //ellipse ypos
  ew=30; //ellipse width
  dx=dy=3; //direction of x axis, y axis
  rw=20; //rect width
  rh=50; //rect height
}
void draw(){
  background(255);  
  fill(200);
  ellipseMode(CENTER);
  ellipse(ex, ey, ew, ew);
  fill(0);
  rx=width-rw;
  ry=mouseY-rh/2;
  rect(rx, ry, rw, rh); //rectMode(CORNER);
  
  if((ex+ew/2>=rx && ey>=ry && ey<=ry+rh) || ex<=0){
    dx*=-1;
  }
  if(ex>=width){
    noLoop();
  }
  if(ey>=height || ey<=0){
    dy*=-1; 
  }
  ex+=dx;
  ey+=dy;
}
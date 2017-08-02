void setup(){
  size(400,400);
  background(255);
  noStroke();
}
void draw(){
  int s=int(random(1,10));
  f(s);
}
void f(int s){
  int r, g, b;
  float x, y, w, h;
  r=int(random(1,255));
  g=int(random(1,255));
  b=int(random(1,255));
  x=random(0,width);
  y=random(0,height);
  w=random(20,80);
  h=random(20,80); 
  fill(r, g, b, 50);
  switch(s%3){
  case 0:
    ellipse(x,y,w,h); 
    break;
  case 1:
    triangle(x,y,x+w,y,x+w/2,y-h);
    break;
  default:
    rect(x, y, w, h);
  }
}
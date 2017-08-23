class Car{
 color c;
 int x;
 int y;
 int w=20;
 int h=10;
 int speed;
 
 Car(int x, int y, int s, color c){
  this.c=c;
  this.x=x;
  this.y=y;
  speed=s;
 }
  
 void display(){
  fill(c);
  rect(x,y,w,h);
  x=x+speed;
  if(x>width) x=0;
 }
}
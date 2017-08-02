void setup(){
  size(500, 500); 
}

void draw(){
  background(255);
  f(width, height/2, width);
  noLoop();
}

void f(float x, float y, float r){
   ellipse(x-0.5*r, y, r, r);
   ellipse(x+0.5*r, y, r, r);
   if(r>2){
     r=r*0.5;
     f(x-r, y, r);
     f(x+r, y, r);
   }
}
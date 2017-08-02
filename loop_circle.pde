float w;
void setup(){
  size(200,200);
  background(255);
  stroke(0);
  w=width;
}

void draw(){
// using a while loop
  while(w>10){
    fill(w);
    ellipse(width/2, height/2, w, w);
    w=w-20;
  }
/* using a for loop
  for(w=width; w>10; w-=20){
    fill(w);
    ellipse(width/2, height/2, w, w); 
  }
*/
}
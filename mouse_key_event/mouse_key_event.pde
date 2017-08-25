
void setup(){
  size(400,400); 
  strokeWeight(10);
  background(255);
}
void draw(){
}

void mouseDragged(){
  line(pmouseX, pmouseY, mouseX, mouseY); 
}

void mouseClicked(){
  if(mouseButton==LEFT){
    int r=int(random(0,255));
    int g=int(random(0,255));
    int b=int(random(0,255));
    stroke(r,g,b);   
  }
  else if(mouseButton==RIGHT){
    background(255);
  }
}

void keyPressed(){
  fill(0);
  int xpos=int(random(0, width));
  int ypos=int(random(0, height));
  int size=int(random(10,30));
  textSize(size);
  text(key, xpos, ypos);
}
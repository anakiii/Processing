int r1x=100, r1y=250, r2x=300, r2y=250, rs=40;
int ex, ey, es=50;
void setup(){
  size(400, 300);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(20);
  ex=width/2;
  ey=height/2;
}
void draw(){
  background(0);
  fill(255);
  rect(r1x, r1y, rs, rs);
  rect(r2x, r2y, rs, rs);
  fill(0);
  text("+", r1x, r1y, rs, rs);
  text("-", r2x, r2y, rs, rs);
  fill(255,255,0);
  ellipse(ex, ey, es, es);
}
void mousePressed(){  
  println(mouseX, mouseY);
  if(mouseX>r1x-rs && mouseX<r1x+rs && mouseY>r1y-rs && mouseY<r1y+rs)
    if(es<width/2) es+=5;
  if(mouseX>r2x-rs && mouseX<r2x+rs && mouseY>r2y-rs && mouseY<r2y+rs)
    if(es>50) es-=5;
}
float radius=100.0;
int sideCount=3;
void setup(){
  size(400,400);
  background(150);
  stroke(0);
  fill(255);
  textSize(25);
}

void draw(){
  translate(width/2, height/2);
    background(150);
    text("the number of sides: "+sideCount, -150, -150);
    for(int i=1; i<=sideCount; i++){
      beginShape();
        vertex(0,0);
        vertex(0,-radius);
        vertex(cos(PI/2-TWO_PI/sideCount)*radius, -sin(PI/2-TWO_PI/sideCount)*radius);
      endShape(CLOSE);
      rotate(2*PI/sideCount);
    }
  delay(500);
  if(sideCount<20){
    sideCount+=1;
  }else{
    sideCount=3; 
  }
}
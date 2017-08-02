int alpha=255;

void setup(){
  size(300, 300);
  frameRate(10);    
}

void draw(){
  background(0,0,50);
  alpha=alpha-10;
  if(alpha<100){
    alpha=200; 
  }
  
  //snow
  noStroke();
  fill(255,255,255,alpha);
  ellipseMode(CENTER);
  ellipse(20,20,8,8);
  ellipse(90,20,8,8);
  ellipse(150,20,8,8);
  ellipse(220,20,8,8);
  ellipse(260,20,8,8);
  ellipse(50,50,10,10);
  ellipse(100,50,10,10);
  ellipse(200,50,10,10);
  ellipse(280,50,10,10);
  
  ellipse(20,80,8,8);
  ellipse(90,80,8,8);
  ellipse(150,80,8,8);
  ellipse(220,80,8,8);
  ellipse(260,80,8,8);
  ellipse(50,120,10,10);
  ellipse(100,120,10,10);
  ellipse(200,120,10,10);
  ellipse(280,120,10,10);
  
  ellipse(20,170,8,8);
  ellipse(90,170,8,8);
  ellipse(150,170,8,8);
  ellipse(220,170,8,8);
  ellipse(260,170,8,8);
  ellipse(50,220,10,10);
  ellipse(100,220,10,10);
  ellipse(200,220,10,10);
  ellipse(280,220,10,10);
  
  //ground
  fill(255);
  rect(0,260,300,40);

  //house
  fill(80);
  rect(190,240,30,20);
  triangle(205,225,180,240,230,240);
  fill(255,255,0);
  rect(196,244,6,4);
  rect(208,244,6,4);
  rect(196,252,6,4);
  rect(208,252,6,4);

  //tree
  noStroke();
  fill(200,50,50);
  rect(250,220,10,40);
  fill(20,150,30);
  triangle(255,180,235,240,275,240);
  fill(20,200,30);
  triangle(255,180,235,210,275,210);
  
  //text
  fill(255,0,0);
  text("Merry Christmas!", mouseX+20, mouseY);
  fill(20,180,30);
  text("Breath First Study!", mouseX+20, mouseY+15);
}
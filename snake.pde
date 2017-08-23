int[] xpos=new int[50];
int[] ypos=new int[50];

void setup(){
  size(600,400);
  for(int i=0; i<xpos.length; i++){
    xpos[i]=0;
    ypos[i]=0;
  }
  //frameRate(120);
}

void draw(){
  background(255);
  //배열 값 이동
  for(int i=0; i<xpos.length-1; i++){
    xpos[i]=xpos[i+1];
    ypos[i]=ypos[i+1];
  }
  //마지막 위치 세팅
  xpos[xpos.length-1]=mouseX;
  ypos[ypos.length-1]=mouseY;
  //그리기..
  for(int i=0; i<xpos.length; i++){
    noStroke();
    fill(255-i*5);
    ellipse(xpos[i], ypos[i], i, i);
  }
}
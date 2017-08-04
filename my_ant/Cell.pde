class Cell{
  int x, y, w, h;
  color c;
  boolean current;
  
  Cell(int x, int y){
    this.x=x;
    this.y=y;
    this.c=100;
    this.current=false;
  }
  
  void setColor(color c){
    this.c=c;    
  }
  
  void display(){
    stroke(0);
    fill(c);
    if(current){
      fill(color(255,0,0));
    }
    w=width/rows;
    h=height/cols;
    rect(x*w, y*h, w, h);
    current=false;
  }
}
class Cell{
  int x, y;
  int w, h;
  color c;
  
  Cell(int tx, int ty, int tw, int th, color tc){
    x=tx;
    y=ty;
    w=tw;
    h=th;
    c=tc;
  }
  
  void setGrid(color tc){
    c=tc;
  }
  
  void display(){
    stroke(255);
    fill(c);
    rect(x, y, w, h);  
  }
}
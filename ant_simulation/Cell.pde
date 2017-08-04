class Cell{
  float x, y; 
  float w, h;
  int c;
  boolean current;
  Cell(int i, int j){ //constructor
    x=j;               //change x value with y value
    y=i;
    c=0;
    current=false;
  }
  void setGrid(int c){ 
    this.c=c; 
  }
 void display(){
   stroke(127);
   fill(c);
   if(current) //current cell<--red color
     fill(255,0,0);
   rect(x*cellWidth, y*cellHeight, cellWidth-1, cellHeight-1);
   current=false;
 }  
}
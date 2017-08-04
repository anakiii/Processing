int cols=5;
int rows=7;
int cellWidth, cellHeight;
int n=22;
int w, h, p, q, t, d;
int dx[]={1,-1,1,-1}, dy[]={1,-1,-1,1};
Cell[][] grid=new Cell[rows][cols];
int start, stop;

void setup(){
  size(600, 600);
  cellWidth=width/cols;
  cellHeight=height/rows;
  
  for(int i=0; i<rows; i++) // x -> cols
    for(int j=0; j<cols; j++) //y -> rows
      grid[i][j]=new Cell(i, j);
  background(0);
      
  for(int i=0; i<rows; i++)
    for(int j=0; j<cols; j++)
      grid[i][j].display();
      
  w=6; h=4; p=4; q=1; t=8;
  start=millis();
  frameRate(10);
}

int count=0;
int i;

void draw(){
  background(0);
  if(count==t){
    noLoop();
    println("finish");
    stop=millis();
    println((stop-start)/1000.0);
  }
  if(d==0){
    if(p==w && q!=h) d=3;
    if(p==w && q==h) d=1;
    if(p!=w && q!=h) d=0;
    if(p!=w && q==h) d=2;
  }else if(d==1){
    if(p==0 && q!=0) d=2;
    if(p==0 && q==0) d=0;
    if(p!=0 && q!=0) d=1;
    if(p!=0 && q==0) d=3;
  }else if(d==2){
    if(p==w && q!=0) d=1;
    if(p==w && q==0) d=3;
    if(p!=w && q!=0) d=2;
    if(p!=w && q==0) d=0;
  }else{
    if(p==0 && q!=h) d=0;
    if(p==0 && q==h) d=2;
    if(p!=0 && q!=h) d=3;
    if(p!=0 && q==h) d=1;
  }
  p+=dx[d]; q+=dy[d];
  
  grid[p][q].setGrid(255);
  grid[p][q].current=true;
  for(int i=0; i<rows; i++)
    for(int j=0; j<cols; j++)
      grid[i][j].display();
  count++;
}
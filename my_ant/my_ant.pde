int rows=10, cols=10;
int cellWidth, cellHeight;
int cnt, t=300;
int start;

int p=7, q=7; //position of ant
int d=3; //direction: ru(0), lu(1), ld(2), rd(3)
int[] dx={1,-1,-1,1}; //move-x: ru, lu, ld, rd
int[] dy={1,1,-1,-1}; //move-y: ru, lu, ld, rd

Cell[][] myCell=new Cell[rows][cols];

void setup(){
  size(400, 400);
  cellWidth=width/rows;
  cellHeight=height/cols;
  background(255);
  for(int i=0; i<rows; i++){
    for(int j=0; j<cols; j++){
      myCell[i][j]=new Cell(i, j);
      myCell[i][j].display();
    }
  }
  //frameRate(30);
  start=millis();
  println(start*0.001,"sec");
}

void draw(){ 
  if(cnt==t){
    println((millis()-start)*0.001,"sec");
    noLoop();  
  }
  if(d==0){ //ru
    if(p==(rows-1) && q!=(cols-1)) d=1;
    if(p==(rows-1) && q==(cols-1)) d=2;
    if(p!=(rows-1) && q==(cols-1)) d=3;
    if(p!=(rows-1) && q!=(cols-1)) d=0;
  }
  if(d==1){ //lu                      ru lu ld rd
    if(p==0 && q!=(cols-1)) d=0;    // 0  1  2  3 
    if(p==0 && q==(cols-1)) d=3;
    if(p!=0 && q==(cols-1)) d=2;
    if(p!=0 && q!=(cols-1)) d=1;
  }
  if(d==2){ //ld
    if(p==0 && q!=0) d=3;
    if(p==0 && q==0) d=0;
    if(p!=0 && q==0) d=1;
    if(p!=0 && q!=0) d=2;    
  }  
  if(d==3){ //rd
    if(p==(rows-1) && q!=0) d=2; 
    if(p==(rows-1) && q==0) d=1; 
    if(p!=(rows-1) && q==0) d=0; 
    if(p!=(rows-1) && q!=0) d=3; 
  }
  p+=dx[d];
  q+=dy[d];
  
  myCell[p][q].setColor(200);
  myCell[p][q].current=true;
  for(int i=0; i<rows; i++){
    for(int j=0; j<cols; j++){
      myCell[i][j].display(); 
    } 
  }
  cnt++;
  //println(p,q);
}

//void mousePressed(){
//    redraw();
//}
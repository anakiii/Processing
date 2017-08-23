class Snake{
 color c;
 Point[] p;
 
 Snake(int num){
   this.c=100;
   p=new Point[num];
   for(int i=0; i<p.length; i++){
     p[i]=new Point();  
   }
 }
 
 void display(color c){
   for(int i=0; i<p.length-1; i++){
     p[i].x=p[i+1].x;
     p[i].y=p[i+1].y;
   }
   p[p.length-1].x=mouseX;
   p[p.length-1].y=mouseY;
   for(int i=0; i<p.length; i++){
     noStroke();
     fill(c, constrain(i*5, 0, 250));
     ellipse(p[i].x, p[i].y, i, i);
   }
 }
}
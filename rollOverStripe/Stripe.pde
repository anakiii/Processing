class Stripe{
 float x;
 float speed;
 float w;
 boolean mouse;
 
 Stripe(){
   x=0;
   speed=random(1);
   w=random(10, 30);
   mouse=false;
 }
 
 void display(){
   if(mouse){
     fill(255);
   }else{
     fill(255,100);
   }
   noStroke();
   rect(x, 0, w, height);
 }
 
 void move(){
   x+=speed;
   if(x>width+20) x=-20;
 }
 
 void rollover(int mx, int my){
   if(mx>x && mx<x+w){
     mouse=true; 
   }else{
     mouse=false;  
   }
 }
}
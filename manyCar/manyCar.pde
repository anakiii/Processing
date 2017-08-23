Car[] myCar=new Car[10];
int num=0;
void setup() {
  size(600, 400);
}
void draw() {
  background(255);
  if(num>0){
    for(int i=0; i<num; i++){ 
      myCar[i].display();
    }
  }
}
void mousePressed() {
  if (num<10) {
    myCar[num]=new Car(mouseX, mouseY, 3, int(random(0,255)));
    num+=1;
  }
}
yes[]circ;
void setup(){
  size(300,300);
  background(255);
  circ = new yes[100];
  for(int i =0; i<circ.length;i++)
  { 
    circ[i] = new yes();
  }
}
void draw(){
 for(int i =0; i<circ.length;i++)
  { 
    circ[i].show();
    circ [i].move();
  }
}
class yes{
 int myX, myY;
 yes()
 {
  myX = (int)(Math.random()*300); 
  myY = (int)(Math.random()*300); 
 }
 void move(){
  if(myX<150)
    myX = myX + (int)(Math.random()*4)-0;
  else myX = myX + (int)(Math.random()*4)-3;
  if(myY<150)
    myY = myY + (int)(Math.random()*4);
  else myY = myY + (int)(Math.random()*4)-4;
 }
 void show(){
  fill(255);
  ellipse(myX,myY,10,10);
  
 }
}

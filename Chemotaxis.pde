yes[]circ;
void setup(){
  size(300,300);
  background(255);
  noStroke();
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
 int myX, myY, myC;
 yes()
 {
  myX = (int)(Math.random()*300); 
  myY = (int)(Math.random()*300); 
  myC = color ((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 }
 void move(){
  if(myX<mouseX)
    myX = myX + (int)(Math.random()*2)-0;
  else myX = myX + (int)(Math.random()*2)-1;
  if(myY<mouseY)
    myY = myY + (int)(Math.random()*2);
  else myY = myY + (int)(Math.random()*2)-2;
 }
 void show(){
  fill(myC);
  ellipse(myX,myY,10,10);
  
 }
}

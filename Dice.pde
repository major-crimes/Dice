Die titty;
int sum;
void setup()
{
  noLoop();
  size(630, 630);
 
}
void draw()
{  background(0);
sum=0;
 for (int y=0;y<=570; y+=30){
  for (int x=0;x<=630; x+=30){
   Die titty = new Die(x,y);

  titty.roll();
  titty.show();
 sum+= titty.R;
  }

 }
  stroke (255,255,255);
  text("sum: "+ sum, 300,610);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
 
  int myX;
  int myY; 
  int R;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    R = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    fill(0,0,0);
    stroke(255,0,0);
    rect(myX, myY, 30, 30, 7);
    
    if (R == 1) {
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(myX + 15,myY + 15, 7, 7);
    }
    else if (R == 2) {
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(myX + 9,myY +  10, 7, 7);
      ellipse(myX + 21,myY + 20, 7, 7);
    }
    else if (R == 3) {
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(myX + 7,myY +  8, 7, 7);
      ellipse(myX + 15,myY +  15, 7, 7);
      ellipse(myX + 23,myY +  22, 7, 7);
    }
    else if (R == 4) {
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(myX + 9,myY +  10, 7, 7);
      ellipse(myX + 22,myY +  10, 7, 7);
      ellipse(myX + 22,myY +  22, 7, 7);
      ellipse(myX + 9,myY +  22, 7, 7);
    }
    else if (R == 5) {
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(myX + 7,myY +  8, 7, 7);
      ellipse(myX + 24,myY +  8, 7, 7);
      ellipse(myX + 24,myY +  24, 7, 7);
      ellipse(myX + 7,myY +  24, 7, 7);
      ellipse(myX + 15,myY +  16, 7, 7);
    }
    else {
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(myX + 7,myY +  7, 7, 7);
      ellipse(myX + 7,myY +  16, 7, 7);
      ellipse(myX + 7,myY +  25, 7, 7);
      ellipse(myX + 24,myY +  7, 7, 7);
      ellipse(myX + 24,myY +  16, 7, 7);
      ellipse(myX + 24,myY +  25, 7, 7);
    }
  }
}

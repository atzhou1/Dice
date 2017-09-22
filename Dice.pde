int total=0;
void setup()
{
  size(300,400);
  noLoop();
}

void draw()
{
  background(0);
  for(int y=25; y<=300; y+=100)
  {
    for(int x=25; x<=300; x+=100)
    {
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
    textSize(30);
    text("TOTAL =",50,350);
    text(total,190,350);

}

void mousePressed()
{
  total=0;
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, num;
  
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    num=(int)((Math.random()*6)+1);
  }
  void roll()
  {
    total=total+num;
  }
  void show()
  {
    rect(myX,myY,50,50,7);
    fill(255);
    if(num==1)
    {
      ellipse(myX+25, myY+25, 7, 7);
    }
    else if(num==2)
    {
      ellipse(myX+20, myY+20,6,6);
      ellipse(myX+30, myY+30,6,6);
    }
    else if(num==3)
    {
      ellipse(myX+15, myY+15,6,6);
      ellipse(myX+25, myY+25,6,6);
      ellipse(myX+35, myY+35,6,6);
    }
    else if(num==4)
    {
      ellipse(myX+17, myY+17,6,6);
      ellipse(myX+33, myY+17,6,6);
      ellipse(myX+17, myY+33,6,6);
      ellipse(myX+33, myY+33,6,6);
    }
    else if(num==5)
    {
      ellipse(myX+25, myY+25 ,6,6);
      ellipse(myX+15, myY+15,6,6);
      ellipse(myX+35, myY+15,6,6);
      ellipse(myX+15, myY+35,6,6);
      ellipse(myX+35, myY+35,6,6);
    }
    else if(num==6)
    {
      ellipse(myX+18, myY+12,6,6);
      ellipse(myX+18, myY+25,6,6);
      ellipse(myX+18, myY+38,6,6);
      ellipse(myX+32, myY+12,6,6);
      ellipse(myX+32, myY+25,6,6);
      ellipse(myX+32, myY+38,6,6);
    }
  }
}
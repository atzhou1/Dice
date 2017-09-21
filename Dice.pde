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
    for(int x=25; x<=350; x+=100)
    {
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
}

void mousePressed()
{
  total=0;
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, num, total;
  
  Die(int x, int y) //constructor
  {
    //roll();
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
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
    }
    else if(num==4)
    {
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
    }
    else if(num==5)
    {
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
    }
    else if(num==6)
    {
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
      ellipse(myX, myY,6,6);
    }
  }
}
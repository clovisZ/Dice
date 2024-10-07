Die dice;
int rolls = 0;
int highScore = 0;

void setup()
{
  size(460, 460);
  noLoop();
  strokeWeight(2);
  textAlign(CENTER);
}
void draw()
{
  background(204, 204, 204);
  int sum = 0;
  rolls++;
  for (int y = 10; y < 360; y+=90)
    for (int x = 10; x < 460; x+=90) 
    {
      dice = new Die(x, y);
      dice.roll();    
      dice.show();
      sum += dice.dots;
    }
  if (sum > highScore)
    highScore = sum;
  textSize(20);
  text("• Total: " + sum + " | Rolls: " + rolls + " | High Score: " + highScore + " •",230,400);
  textSize(13);
  text("- click anywhere to reroll -", 230, 430);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 80, 80, 12);
    fill(0);
    if (dots == 1) {
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (dots == 2) {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 55, myY + 55, 10, 10);
    } else if (dots == 3) {
      ellipse(myX + 20, myY + 60, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 60, myY + 20, 10, 10);
    } else if (dots == 4) {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 55, myY + 25, 10, 10);
      ellipse(myX + 25, myY + 55, 10, 10);
      ellipse(myX + 55, myY + 55, 10, 10);
    } else if (dots == 5) {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 60, myY + 20, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 20, myY + 60, 10, 10);
      ellipse(myX + 60, myY + 60, 10, 10);
    } else {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 60, myY + 20, 10, 10);
      ellipse(myX + 20, myY + 40, 10, 10);
      ellipse(myX + 60, myY + 40, 10, 10);
      ellipse(myX + 20, myY + 60, 10, 10);
      ellipse(myX + 60, myY + 60, 10, 10);
    }
  }
}

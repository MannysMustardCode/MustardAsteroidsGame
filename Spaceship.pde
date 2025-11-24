class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 3;
    xCorners = new int[] {20, -10, -10};
    yCorners = new int[] {0, 10, -10};

    myColor = color(255);

    myCenterX = width / 2;
    myCenterY = height / 2;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = 0;
  }

  public void hyperspace()
  {
    myXspeed = 0;
    myYspeed = 0;

    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;

    myPointDirection = Math.random() * 360;
  }
}

Spaceship ship;
Star[] stars;

public void setup()
{
  size(800, 800);

  ship = new Spaceship();

  stars = new Star[200];
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

public void draw()
{
  background(0);

  // Show stars
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }

  // Show & move ship
  ship.show();
  ship.move();
}

void keyPressed()
{
  if (key == 'a' || key == 'A')
    ship.turn(-10);

  if (key == 'd' || key == 'D')
    ship.turn(10);

  if (key == 'w' || key == 'W')
    ship.accelerate(0.2);

  if (key == 's' || key == 'S')
    ship.hyperspace();
}

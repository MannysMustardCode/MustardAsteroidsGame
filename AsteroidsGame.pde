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

 
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }

 
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

Spaceship ship;
ArrayList<Asteroid> asteroids;

setup();
  size(800, 800);
  ship = new Spaceship();

  asteroids = new ArrayList<Asteroid>();
  for (int i = 0; i < 5; i++)
    asteroids.add(new Asteroid());
}

void draw() {
  background(0);

  
  ship.move();
  ship.show();

  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid a = asteroids.get(i);

    float d = dist((float)a.getX(), (float)a.getY(), 
                   (float)ship.getX(), (float)ship.getY());

    if (d < 30) {  
      asteroids.remove(i);
    } else {
      a.move();
      a.show();
    }
  }
}

void keyPressed() {
  if (key == 'w') ship.accelerate(0.1);
  if (key == 's') ship.accelerate(-0.1);
  if (key == 'a') ship.turn(-5);
  if (key == 'd') ship.turn(5);
}

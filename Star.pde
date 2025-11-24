class Star
{
  private int x, y;

  public Star()
  {
    x = (int)(Math.random() * width);
    y = (int)(Math.random() * height);
  }

  public void show()
  {
    stroke(255);
    point(x, y);
  }
}

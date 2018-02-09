public void setup()
{
  rectMode(CENTER);
  size(500, 500);
  noStroke();

}
public void draw()
{
  background(0);
  frameRate(1);
  myFractal(250, 250, 200);
}
public void myFractal(int x, int y, int size)
{
  int r = (int)(Math.random()*250 + 85);
  int g = (int)(Math.random()*250 + 85);
  int b= (int)(Math.random()*250 + 85); 
  fill(r, g, b,90);
  int o = size+(int)(Math.random()*50-40);
  ellipse(x, y, o, o);
  int az = (int)(Math.random()*200+100);
  if (size> 20)
  {
    myFractal((x-az),(y-az), size/(int)(Math.random()*2+2));
    myFractal((x+az), y+az, size/(int)(Math.random()*2+2));
    myFractal((x-az), y-az, size/(int)(Math.random()*2+2));
  }

  }
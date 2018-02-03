public void setup()
{
  size(600, 600);
  background(0, 0, 0);
  frameRate(2);
}
public void draw()
{
  sierpinski(0, 600, 1200);
}
public void mouseMoved()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    color[] colors = {color(250,249,250), color(150,173,189), color(169,185,203), color(141,164,189), color(48,102,146)};
    int index = int(random(colors.length));
    noStroke();
    fill(colors[index]);
    triangle(x, y, x + len/2, y - len, x + len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}

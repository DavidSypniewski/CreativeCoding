
size(500, 500);
strokeWeight(1);
float y = 1;
while(y < 500)
{
  line(0, y*0.99, 500, y);
  y = y + 5;
}
float x = 1;
while(x < 500)
{
  line(x, 0, x*1.01, 500);
  x = x + 5;
}

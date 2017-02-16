/* 1. Change the code below to make the rocket ship take off. */
/* 2. Add a moon and stars to the sky. */

int x = 400;
int y = 600;

void setup() {
  background(0, 0, 40);
  size(800, 800);
}

void draw() {
  background(0, 0, 40);
  fill(random(255), 0, 0);
  ellipse(x, y + 120, 90, 90);
  fill(248, 128, 0);
  ellipse(x, y + 105, 70, 70);
  fill(255, 153, 0);
  ellipse(x, y + 85, 35, 35);
  fill(100, 100, 100);
  triangle(x, y + 0, x + 50, y + 100, x - 50, y + 100);
  y=y-10;
  fill(255, 255, 255);
ellipse(700, 100, 80, 80);
fill(255,255,255);
ellipse(150, 165, 9,9);
}




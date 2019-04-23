float x;
float y;
float tx;
float ty;

void setup() {
  size(400, 400);
  
  x = random(width);
  y = random(height);
  tx = x;
  ty = y;
}

void draw() {
 background(234);
 
  x = lerp(x, tx, .1);
  y = lerp(y, ty, .1);
  //tx = mouseX;
  //ty = mouseY;
 
 ellipse(x, y, 20, 20);
}

void mousePressed() {
  tx = mouseX;
  ty = mouseY;
}

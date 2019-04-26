float x, y;
float sz;

void setup() {
  size(500, 500);
  x = 250;
  y = 250;
  sz = 30;
}

void draw() {
  background(123);
  
  if (mousePressed) {
    float d = dist(mouseX, mouseY, x, y);
    if (d < sz/2) {
      // issues: 1.it jumps; 2.not following at high speed/small size
      x = mouseX;
      y = mouseY;
    }
  }
  
  ellipse(x, y, sz, sz);
}

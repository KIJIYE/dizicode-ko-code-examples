float x, y;
float w, h;

void setup() {
  size(500, 500);

  x = 50;
  y = 50;
  w = 100;
  h = 80;
}

void draw() {
  background(123);

  if (mousePressed) {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      float dx = mouseX - pmouseX;
      float dy = mouseY - pmouseY;
      x += dx;
      y += dy;
    }
  }
  
  rect(x, y, w, h);
}

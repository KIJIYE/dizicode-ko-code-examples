class Box {
  float x, y;
  float w, h;

  Box(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }

  void update() {
    if (mousePressed) {
      if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
        float dx = mouseX - pmouseX;
        float dy = mouseY - pmouseY;
        x += dx;
        y += dy;
      }
    }
  }

  void display() {
    rect(x, y, w, h);
  }
}

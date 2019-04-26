class Box {
  float x, y;
  float w, h;
  boolean clicked;

  Box(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    clicked = false;
  }

  void checkClicked(float cx, float cy) {
    if (cx > x && cx < x+w && cy > y && cy < y+h) {
      clicked = true;
    } else {
      clicked = false;
    } 
  }

  void update() {
    if (!clicked) return;

    float dx = mouseX - pmouseX;
    float dy = mouseY - pmouseY;
    x += dx;
    y += dy;
  }

  void display() {
    rect(x, y, w, h);
  }
}

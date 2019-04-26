/*
to do:
 - order of boxes: re-sort array based on z-index
 */

Box box1;
Box box2;

float x, y;
float w, h;

void setup() {
  size(500, 500);

  box1 = new Box(50, 50, 100, 30);
  box2 = new Box(150, 234, 86, 230);
}

void draw() {
  background(123);

  box1.display();
  box2.display();
}

void mouseReleased() {
  box1.clicked = false;
  box2.clicked = false;
}

void mouseDragged() {
  box1.update();
  box2.update();
}

void mousePressed() {
  box1.checkClicked(mouseX, mouseY);
  box2.checkClicked(mouseX, mouseY);
}

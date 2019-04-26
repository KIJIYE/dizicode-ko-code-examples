// issue: drag over other object: multiple dragging not intended.

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

  box1.update();
  box1.display();

  box2.update();
  box2.display();
}

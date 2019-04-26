/*
to do:
 - order of boxes: re-sort array based on z-index
 */

Box[] boxes;
int numBoxes = 20;

float x, y;
float w, h;

void setup() {
  size(500, 500);

  boxes = new Box[numBoxes];
  for (int i = 0; i < numBoxes; i++) {
    boxes[i] = new Box(random(width-100), random(height-100), random(50, 100), random(50, 100));
  }
}

void draw() {
  background(123);

  for (int i = 0; i < numBoxes; i++) {
    boxes[i].display();
  }
}

void mouseReleased() {
  for (int i = 0; i < numBoxes; i++) {
    boxes[i].clicked = false;
  }
}

void mouseDragged() {
  for (int i = 0; i < numBoxes; i++) {
    boxes[i].update();
  }
}

void mousePressed() {
  //for (int i = numBoxes - 1; i >= 0; i--) {
  //  boxes[i].checkClicked();
  //  if (boxes[i].clicked) break;
  //}

  for (int i = 0; i < numBoxes; i++) {
    boxes[i].checkClicked(mouseX, mouseY);
    //if (boxes[i].clicked) break;
  }
}

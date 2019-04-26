Box[] boxes;
int numBoxes = 20;

float x, y;
float w, h;

void setup() {
  size(500, 500);

  boxes = new Box[numBoxes];
  for (int i = 0; i < numBoxes; i++) {
    boxes[i] = new Box(random(width-100), random(height-100), random(50, 200), random(50, 200));
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
  int idx = -1; // store index of clicked box
  for (int i = numBoxes - 1; i >= 0; i--) {
    boxes[i].checkClicked(mouseX, mouseY);
    if (boxes[i].clicked) {
      idx = i;
      break;
    }
  }
  // reorder boxes (for large amount of data, list will be better)
  if (idx != -1) {
    Box last = boxes[idx];
    for (int i = idx+1; i < numBoxes; i++) {
      boxes[i-1] = boxes[i];
    }
    boxes[numBoxes-1] = last;
  }
}

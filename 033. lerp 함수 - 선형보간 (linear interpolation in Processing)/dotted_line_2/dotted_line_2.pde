float x1;
float y1;
float x2;
float y2;

void setup() {
  size(400, 400);

  x1 = 0;
  y1 = 0;
  x2 = 300;
  y2 = 300;
}

void draw() {
  background(123);
  dottedLine(width/2, height/2, mouseX, mouseY, 10);
}

void dottedLine(float x1, float y1, float x2, float y2, int numDots) {
  float interval = 1.0/(numDots-1); // 얼만큼 움직이나? 점이 10개이니 1/9만큼.
  for (int i = 0; i < numDots; i++) {
    float nx = lerp(x1, x2, i*interval);
    float ny = lerp(y1, y2, i*interval);
    ellipse(nx, ny, 5, 5);
  }
}

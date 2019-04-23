void setup() {
  size(200, 200);
}

void draw() {
  background(234);
 
  strokeWeight(10);
  fill(200, 200, 100);
  beginShape();
  vertex(20, 20);
  vertex(80, 20);
  vertex(80, 40);
  vertex(40, 40);
  vertex(40, 60);
  vertex(60, 60);
  vertex(60, 80);
  vertex(40, 80);
  vertex(40, 120);
  vertex(20, 120);
  endShape(CLOSE);
}

// April, 2019
// by Dae In Chung
// www.dizicode.com

PVector p1;
PVector cp1;
PVector cp2;
PVector p2;

boolean clickP1 = false;
boolean clickCP1 = false;
boolean clickCP2 = false;
boolean clickP2 = false;

void setup() {
  size(400, 400);

  p1 = new PVector(50, 50);
  cp1 = new PVector(200, 50);
  cp2 = new PVector(350, 200);
  p2 = new PVector(350, 350);
}

void draw() {
  background(123);
  noFill();

  stroke(200, 0, 0);
  bezier(p1.x, p1.y, cp1.x, cp1.y, cp2.x, cp2.y, p2.x, p2.y);

  // without bezier()
  noStroke();
  fill(0, 200, 200);
  for (int i = 0; i < 10; i++) {
    float amt = i/10.;
    PVector q0 = PVector.lerp(p1, cp1, amt);
    PVector q1 = PVector.lerp(cp1, cp2, amt);
    PVector q2 = PVector.lerp(cp2, p2, amt);
    PVector r0 = PVector.lerp(q0, q1, amt);
    PVector r1 = PVector.lerp(q1, q2, amt);
    PVector s0 = PVector.lerp(r0, r1, amt);
    ellipse(s0.x, s0.y, 6, 6);
  }

  noStroke();
  fill(200, 0, 0);
  ellipse(p1.x, p1.y, 10, 10);
  ellipse(cp1.x, cp1.y, 10, 10);
  ellipse(cp2.x, cp2.y, 10, 10);
  ellipse(p2.x, p2.y, 10, 10);
}

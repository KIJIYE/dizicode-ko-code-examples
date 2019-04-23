// April, 2019
// by Dae In Chung
// www.dizicode.com

PVector[] pts;
boolean[] clicked;

void setup() {
  size(400, 400);

  pts = new PVector[4];
  pts[0] = new PVector(50, 50);
  pts[1] = new PVector(200, 50);
  pts[2] = new PVector(350, 200);
  pts[3] = new PVector(350, 350);

  clicked = new boolean[4];
  for (int i = 0; i < clicked.length; i++) {
    clicked[i] = false;
  }
}

void draw() {
  background(123);

  noFill();
  stroke(200, 0, 0);
  bezier(pts[0].x, pts[0].y, pts[1].x, pts[1].y, pts[2].x, pts[2].y, pts[3].x, pts[3].y);

  // without bezier()
  noStroke();
  fill(0, 200, 200);
  int numPoints = 30;
  for (int i = 0; i < numPoints; i++) {
    float amt = float(i)/numPoints;
    PVector q0 = PVector.lerp(pts[0], pts[1], amt);
    PVector q1 = PVector.lerp(pts[1], pts[2], amt);
    PVector q2 = PVector.lerp(pts[2], pts[3], amt);

    PVector r0 = PVector.lerp(q0, q1, amt);
    PVector r1 = PVector.lerp(q1, q2, amt);

    PVector s0 = PVector.lerp(r0, r1, amt);
    ellipse(s0.x, s0.y, 6, 6);
  }

  noStroke();
  fill(200, 0, 0);
  ellipse(pts[0].x, pts[0].y, 10, 10);
  ellipse(pts[1].x, pts[1].y, 10, 10);
  ellipse(pts[2].x, pts[2].y, 10, 10);
  ellipse(pts[3].x, pts[3].y, 10, 10);

  stroke(200, 0, 0);
  line(pts[0].x, pts[0].y, pts[1].x, pts[1].y);
  line(pts[1].x, pts[1].y, pts[2].x, pts[2].y);
  line(pts[2].x, pts[2].y, pts[3].x, pts[3].y);
}

void mouseReleased() {
  for (int i = 0; i < pts.length; i++) {
    clicked[i] = false;
  }
}

void mouseDragged() {
  for (int i = 0; i < pts.length; i++) {
    if (clicked[i] == true) {
      pts[i].x = mouseX;
      pts[i].y = mouseY;
    }
  }
}

void mousePressed() {
  for (int i = 0; i < pts.length; i++) {
    float d = dist(mouseX, mouseY, pts[i].x, pts[i].y);
    if (d < 10) {
      clicked[i] = true;
      break;
    }
  }
}

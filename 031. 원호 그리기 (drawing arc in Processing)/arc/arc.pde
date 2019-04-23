import processing.pdf.*;

size(400, 400);

beginRecord(PDF, "arcs.pdf");

noFill();
stroke(0);
strokeWeight(10);
for (int i = 0; i <= 10; i++) {
  arc(width/2, height/2, 360-i*30, 360-i*30, 0, radians(i/10.*360));
}
endRecord();

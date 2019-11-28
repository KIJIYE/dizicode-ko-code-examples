/*
5. image save
*/

int brushSize;
color brushCol;

void setup() {
  size(1280, 720);
  background(#333399);
  
  brushSize = 40;
  brushCol = color(0);
}

void draw() {
  stroke(brushCol);
  strokeWeight(brushSize);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void keyPressed() {
  if (key == 'r') { // refresh screen
    background(#333399);
  } else if (key == '-') { // decrease brush size
    brushSize -= 5;
  } else if (key == '=') { // increase brush size (not + key)
    brushSize += 5;
  } else if (key == ' ') { // randomize brush color
    brushCol = color( random(255), random(255), random(255) );
  } else if (key == 's') {
    //save("myPainting.png");
    save( str(year()) + month() + day() + "-" + hour() + minute() + second() + ".png");
    println("image saved!");
  }
  
  brushSize = constrain(brushSize, 5, 100);
}

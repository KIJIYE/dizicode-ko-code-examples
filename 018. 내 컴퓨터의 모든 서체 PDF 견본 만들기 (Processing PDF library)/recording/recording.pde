import processing.pdf.*;

PGraphicsPDF pdf;

PFont font; // current font
PFont captionFont; // display font name
String[] allFontNames; // store all font names
int total; // total num of fonts
String testString = "The quick brown fox jumps over";

void setup() {
  // A4: 210 x 297mm
  size(420, 594);
  
  //println( PFont.list() );
  
  pdf = (PGraphicsPDF) beginRecord(PDF, "book.pdf");
  background(255);
  noStroke();
  fill(0);
  
  total = PFont.list().length;
  println("total number of fonts: " + total);
  allFontNames = PFont.list();
  
  float marginLeft = 20;
  float marginTop = 30;
  float marginBottom = 30;
  float xpos = marginLeft;
  float ypos = marginTop;
  int fontSize = 12;
  int captionFontSize = 6;
  captionFont = createFont("Monospaced", captionFontSize);
  for (int i = 0; i < total; i++) {
    // display each font and turn page
    font = createFont(allFontNames[i], fontSize);
    textFont(font);
    text(testString, xpos, ypos);
    ypos += captionFontSize * 2;
    textFont(captionFont);
    text(allFontNames[i], xpos, ypos);
    ypos += fontSize * 2;
    if (ypos >= height - marginBottom) {
      ypos = marginTop;
      pdf.nextPage();
      println("turning page...");
      background(255);
    }
  }
  
  endRecord();
  println("PDF recording finished!");
  //exit();
  
}

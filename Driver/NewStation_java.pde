PShape square, circle, triangle;
int timez = 0;
float startLineX = 0.0;
float startLineY= 0.0;
float endLineX = 0.0;
float endLineY = 0.0;
ArrayList<PGraphics> lines;
color back = 0;
color start;
// Make an array of lines that is added to with the mousePressed and then make their storke weight 0 when drawLine is called;

void makeStations(){
  int shape;
  timez++;
  if(timez % 1500 == 0){
  shape = int(random(3));
  if(shape == 0){
    fill(0);
    rect(int(random(width)), int(random(height)), 20, 20);
  }
  else if(shape == 1){
    fill(0);
    ellipse(int(random(width)), int(random(height)), 20, 20);
  }
  else{
    fill(0);
    int triX = int(random(width));
    int triY = int(random(height));
    triangle(triX, triY, triX + 20, triY + 20, triX + 20, triY);
  }
  }
 if(mousePressed){
    if(startLineX == 0.0 && startLineY == 0.0){
      startLineX = mouseX; startLineY = mouseY;
}
  stroke(0);
  strokeWeight(2);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
  if(!mousePressed){
    endLineX = mouseX;
    endLineY = mouseY;    
    color current = get(int(endLineX), int(endLineY));
    color current2 = get(int(endLineX) + 1, int(endLineY));
    color current3 = get(int(endLineX), int(endLineY) + 1);
    color current4 = get(int(endLineX) + 1, int(endLineY) + 1);
    if(startLineX != 0.0 && startLineY != 0.0 /* (current == back || current2 == back || current3 == back || current4 == back) */){
      drawLine();
    }
  }
}
  
  void drawLine(){
  stroke(0);
  strokeWeight(5);
  line(startLineX, startLineY, endLineX, endLineY);
  rect(int((startLineX + endLineX) / 2) - 4, int((startLineY + endLineY) / 2) - 4, 7, 7);
  startLineX = 0.0;
  startLineY = 0.0;
  endLineX = 0.0;
  endLineY = 0.0;
  }
   
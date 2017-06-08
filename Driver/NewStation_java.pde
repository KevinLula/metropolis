PShape square, circle, triangle;
int timez = 0;
ArrayList<PGraphics> lines;
color back = 0;
color start;
// Make an array of lines that is added to with the mousePressed and then make their storke weight 0 when drawLine is called;

// example of what to do
void makeStation(int x, int y, int type){
  if(type == 0){
    fill(0);
    rect(x, y, 20, 20);
  }
  else if(type == 1){
    fill(0);
    ellipse(x, y, 20, 20);
  }
  else{
    fill(0);
    triangle(x, y, x + 20, y + 20, x + 20, y);
  }
}
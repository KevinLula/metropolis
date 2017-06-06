PShape square, circle, triangle;
int time = 0;
float startLineX = 0.0;
float startLineY= 0.0;
float endLineX = 0.0;
float endLineY = 0.0;
// Make an array of lines that is added to with the mousePressed and then make their storke weight 0 when drawLine is called;

void setup(){
  size(800,800);
int shape;
for(int x = 3; x > 0; x--){
  shape = int(random(3));
  if(shape == 0){
    fill(0);
    rect(int(random(500)), int(random(500)), 20, 20);
  }
  else if(shape == 1){
    fill(0);
    ellipse(int(random(500)), int(random(500)), 20, 20);
  }
  else{
    int triX = int(random(500));
    int triY = int(random(500));
    triangle(triX, triY, triX + 20, triY + 20, triX + 20, triY);
  }
}
}

void draw(){
  int shape;
  time++;
  if(time % 1500 == 0){
  shape = int(random(3));
  if(shape == 0){
    fill(0);
    rect(int(random(500)), int(random(500)), 20, 20);
  }
  else if(shape == 1){
    fill(0);
    ellipse(int(random(500)), int(random(500)), 20, 20);
  }
  else{
    int triX = int(random(500));
    int triY = int(random(500));
    triangle(triX, triY, triX + 20, triY + 20, triX + 20, triY);
  }
}
if(mousePressed){
  stroke(0);
  strokeWeight(0);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
}

/*  if(mousePressed){
    if(startLineX == 0.0 && startLineY == 0.0){
      startLineX = mouseX; startLineY = mouseY;
    }
    stroke(0);
    strokeWeight(2);      
    line(mouseX, mouseY, pmouseX, pmouseY);      
  }
  
  if(!mousePressed){
    if(startLineX != 0.0 && startLineY != 0.0){
      endLineX == mouseX;
      endLineY = mouseY;
      drawLine();
    }
  }
  
  void drawLine(){
    */
   
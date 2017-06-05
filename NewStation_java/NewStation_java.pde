PShape square, circle, triangle;

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
  if(int(random(200)) == 0){
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
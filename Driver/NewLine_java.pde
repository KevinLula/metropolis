float startLineX = 0.0;
float startLineY= 0.0;
float endLineX = 0.0;
float endLineY = 0.0;
 
 void drawLines(){
   if(mousePressed){
    if(startLineX == 0.0 && startLineY == 0.0){
      startLineX = mouseX; startLineY = mouseY;
}
  stroke(0);
  strokeWeight(2);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
 }

 void mouseReleased(){
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

  void drawLine(){
  stroke(0);
  strokeWeight(5);
  line(startLineX, startLineY, endLineX, endLineY);
  rect(int((startLineX + endLineX) / 2) - 4, int((startLineY + endLineY) / 2) - 4, 7, 7);
  }
  
  int getStartLineX(){
    return (int)startLineX;
  }
  
  int getStartLineY(){
    return (int)startLineY;
  }
  
  int getEndLineX(){
    return (int)endLineX;
  }
  
  int getEndLineY(){
    return (int)endLineY;
  }
  
  void setStartLineX(int sx){
    startLineX = (float)sx;
  }
  
  void setStartLineY(int sy){
    startLineY = (float)sy;
  }
  
  void setEndLineX(int sx){
    endLineX = (float)sx;
  }
  
  void setEndLineY(int sy){
    endLineY = (float)sy;
  }
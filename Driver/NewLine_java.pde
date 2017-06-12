float startLineX = 0.0;
float startLineY= 0.0;
float endLineX = 0.0;
float endLineY = 0.0;
 
 void drawLines(){
   if(mousePressed){
    if(startLineX == 0.0 && startLineY == 0.0){
      startLineX = mouseX; startLineY = mouseY;
}
}
 }

 void mouseReleased(){
    endLineX = mouseX;
    endLineY = mouseY;
    drawLine();
    }

  void drawLine(){
  stroke(100);
  strokeWeight(5);
  line(startLineX, startLineY, endLineX, endLineY);
  rect(int((startLineX + endLineX) / 2) - 4, int((startLineY + endLineY) / 2) - 4, 7, 7);
  }
  
  void drawLine(int startX, int startY, int endX, int endY, int strokeColor1, int strokeColor2, int strokeColor3){
  stroke(strokeColor1, strokeColor2, strokeColor3);
  strokeWeight(5); 
  line(startX, startY, endX, endY);
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
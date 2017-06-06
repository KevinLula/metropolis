PShape rectangle;
int time;
public Clock(){
  time = 0; // we'll just use iterations. 60 iterations = 1hr
}  
public void createClock(){
    rectangle = createShape(RECT, 0, 0, 25, 1);
    rectangle.setFill(color(0,0,0));
}

public void rotate(){
  ellipse(100,100,60,60);
  shape(rectangle, 100, 100);
  rectangle.rotate(0.1);
  delay(100);
}    
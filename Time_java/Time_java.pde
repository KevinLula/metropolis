PShape rectangle;

void setup(){
  size(800,800);
  fill(255);
  ellipse(100,100,60,60);
  rectangle = createShape(RECT, 0, 0, 25, 1);
  rectangle.setFill(color(0,0,0));
}
void draw(){ 
    background(255);
    ellipse(100,100,60,60);
    shape(rectangle, 100, 100);
    rectangle.rotate(0.1);
    delay(100);
}
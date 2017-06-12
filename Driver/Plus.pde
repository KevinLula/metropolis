public class Plus{
  
  PShape s;
  
  
  Plus(int x, int y){
  s = createShape();
  s.beginShape();
  s.vertex(x,y);
  s.vertex(x+ 5,y);
  s.vertex(x,y + 5);
  s.vertex(x + 5,y + 5);
  s.vertex(x - 5,y + 5);
  s.vertex(x - 5,y + 10);
  s.vertex(x,y + 10);
  s.vertex(x + 10,y + 5);
  s.vertex(x + 10,10);
  s.vertex(x + 5,y + 10);
  s.vertex(x, y + 15);
  s.vertex(x + 5,y + 15);
  s.endShape(CLOSE);
  
  }
}
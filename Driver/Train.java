import java.util.ArrayList;
import java.util.Vector;
public class Train{
  double x, y;
  int people, startX, startY, endX, endY;
  boolean toStart, toEnd, reverse;
  Line line;
  Station lastStation;
  Vector lineVector, location;
  public Train(Line line, int startX, int startY, int endX, int endY, boolean reverse){
    this.line = line;
    this.startX = startX;
    this.startY = startY;
    this.endX = endX;
    this.endY = endY;
    this.x = Math.abs(startX + endX) / 2;
    this.y = Math.abs(startY + endY) / 2;
    this.reverse = reverse;
    //System.out.println("START X: "+this.x+"START Y: "+this.y);
    toStart = false;
    toEnd = true;
    lineVector = new Vector();
    lineVector.add(endX-startX);
    lineVector.add(endY-startY);
    location = new Vector();
    location.add(this.x);
    location.add(this.y);
  }
  // slopes vs vectors
// i have given up on vectors, im so sorry
  // how this function works: starting station coords, ending station coords, have for loop in
  // driver that will do every single one, and have the first and
  //1. last stations be edge cases
  //OR 2.

  public boolean move(int speed){
    boolean returned = false;
    int distance = distance((double) endX, startX, (double) endY, startY);
    double slope = slope();
    //double unitDistance = unitFind();
    if(reverse){
        int temp = endX;
        endX = startX;
        startX = temp;
    }
    x = x + speed;
    y = y + (slope() * speed);
    if(distance(x, endX, y, endY) < 15){
      returned = true;
    }
    else{
      returned = false;
    }
    if(reverse){
      int temp = endX;
      endX = startX;
      startX = temp;
    }
    return returned;
  }
  private int distance(double x1, int x2, double y1, int y2){
    return (int) Math.sqrt(Math.pow(x2-x1, 2)+Math.pow(y2-y1, 2));
  }
  private double slope(){
    return (endY-startY)/(endX-startX);
  }
  /*private double unitFind(){
    if(endY - startY > endX - startX){
      return slope();
    }
    else{
      return (endX-startX)/(endY-startY);
    }
  }*/
  public void putInReverse(){
    reverse = !reverse;
  }
  public boolean getReverseStatus(){
    return reverse;
  }
  /*public void move(){
    if(toStart){
      if((int) location.get(0) < 10 + startX && (int) location.get(1) < 10 + startY){
        toStart = false;
        toEnd = true;
        lineVector.set(0, endX-startX);
        lineVector.set(0, endY-startY);
      }
      else{
        location.set(0, (int) ((int) location.get(0) + (int) lineVector.get(0))); //(Math.round(1/10 * (int) lineVector.get(0)))));
        location.set(1, (int) ((int) location.get(1) + (int) lineVector.get(1))); //(Math.round(1/10 * (int) lineVector.get(1)))));
        // 1 / 100 is an arbitrary rate
        // that we can change in order to speed up the game
      }
    }
    else{
      if((int) location.get(0) < (10 + endX) && (int) location.get(1) < (10 + endY)){
        toStart = true;
        toEnd = false;
        lineVector.set(0, startX-endX);
        lineVector.set(0, startY-endY);
      }
      else{
        System.out.println("reached here");
        location.set(0, (int) ((int) location.get(0) + (int) lineVector.get(0)));//(Math.round(1/10 * (int) lineVector.get(0)))));
        location.set(1, (int) ((int) location.get(1) + (int) lineVector.get(1)));//(Math.round(1/10 * (int) lineVector.get(1)))));
        // 1 / 100 is an arbitrary rate
        // that we can change in order to speed up the game
      }
    }
  }*/
  public double getX(){
    return x;
  }
  public double getY(){
    return y;
  }
}

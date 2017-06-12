import java.util.ArrayList;
import java.util.Vector;
import java.util.NoSuchElementException;
public class Train{
  double x, y;
  int people, startX, startY, endX, endY;
  boolean toStart, toEnd, reverse;
  boolean destination = false;
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
    if(destination){
        int temp = endX;
        endX = startX;
        startX = temp;
        int temp2 = endY;
        endY = startY;
        startY = temp2;
    }
    //System.out.println(slope);// go the opp direction
      x = x + (slopeX() / 300);
      y = y + (slopeY() / 300);
    //System.out.println(distance(x, startX, y, startY)); // doesn't matter because we're switching
    Station temp3;
    Line temp4;
    Station temp5;
    if(distance(x, endX, y, endY) < 30){
/*      try{ // we live so dangerously, this is admittedly hacky, but because of the floating point error that
        //took an entire day, I was unable to create a distinct subclass called rails that would usurp lines,
        // with lines being each individual part of the rails, sorry, but legitimately no time
        temp3 = line.getStation(startX, startY);
        temp4 = temp3.getLine(line.getColor1(), line.getColor2(), line.getColor3(), line);
        if(startX != temp4.getStartX() && startY != temp4.getStartY()){
          startX = temp4.getStartX();
          startY = temp4.getStartY();
        }
        else{
          startX = temp4.getEndX();
          startY = temp4.getEndY();
        }
        endX = (int) x;
        endY = (int) y;
      }
      catch(Exception e){
        returned = true;
      } */
      destination = true;
    }
    else{
      destination = false;
    }
/*    if(reverse){
      int temp = endX;
      endX = startX;
      startX = temp;
      int temp2 = endY;
      endY = startY;
      startY = temp2;
    } */
    return returned;
  }
  private int distance(double x1, int x2, double y1, int y2){
    return (int) Math.sqrt(Math.pow(x2-x1, 2)+Math.pow(y2-y1, 2));
  }
  private double slope(){
    //System.out.println("END Y: "+endY+" START Y: "+startY+" END X:"+endX+" START X:"+startX);
    return (1.0*endY-1.0*startY)/(1.0*endX-1.0*startX);
  }
  
  private double slopeX(){
    return (1.0*endX - 1.0*startX);
  }
  
  private double slopeY(){
    return (1.0*endY - 1.0*startY);
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
import java.util.Random;
import java.util.ArrayList;
import java.util.NoSuchElementException;
public class Station{
  private int size, x, y, people, type;
  private String name;
  private boolean interchange;
  private ArrayList<Line> lines;
  private static Random rand = new Random();

  public Station(String name, int type){
    this(rand.nextInt(100), rand.nextInt(100), name, type);
  }

  public Station(int x, int y, String name, int type){
    this.x = x;
    this.y = y;
    this.size = 1;
    this.people = 0;
    this.interchange = false;
    this.name = name;
    this.type = type;
    lines = new ArrayList<Line>();
  }
  public void addPeople(int people){
    if(people < 0){
      throw new IllegalArgumentException();
    }
    this.people += people;
  }
  public void removePeople(int people){
    if(this.people - people < 0){
      throw new IllegalArgumentException();
    }
    this.people -= people;
  }
  public boolean isInterchange(){
    return interchange;
  }
  public boolean switchInterchange(){
    // switches interchange state
    interchange = !interchange;
    return interchange;
  }
  public boolean addLines(Line line){
    if(lines.indexOf(line) == -1){
      lines.add(line);
      return true;
    }
    else{
      return false;
    }
  }
  public boolean removeLines(Line line){
    if(lines.indexOf(line) != -1){
      lines.remove(line);
      return true;
    }
    else{
      return false;
    }
  }
  public int getX(){
    return this.x;
  }
  public int getY(){
    return this.y;
  }
  public int getType(){
    return this.type;
  }

  public int getLineSize(){
    return lines.size();
  }

  public ArrayList<Line> getLines(){
    return lines;
  }

  public Line getLine(int color1, int color2, int color3, Line other){
      if(lines.size() == 1){
        throw new NoSuchElementException();
      }
        for(Line i : lines){
        if(i.getColor1() == color1 && i.getColor2() == color2 && i.getColor3() == color3 && i != other){
         return i;
       }
     }
     throw new NoSuchElementException();
   }

  public int compareTo(Station other){
    return 0; // for now, will use if the interactive selective function of line doesn't work
  }
}

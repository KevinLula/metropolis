import java.util.Random;
import java.util.ArrayList;
public class Station{
  private int size, x, y, people;
  private String name;
  private boolean interchange;
  private ArrayList<Line> lines;
  private static Random rand = new Random();

  public Station(String name){
    this(rand.nextInt(100), rand.nextInt(100), name);
  }

  public Station(int x, int y, String name){
    this.x = x;
    this.y = y;
    this.size = 1;
    this.people = 0;
    this.interchange = false;
    this.name = name;
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
  public int compareTo(Station other){
    return 0; // for now, will use if the interactive selective function of line doesn't work
  }  
}
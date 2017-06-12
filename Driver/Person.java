import java.util.Random;
public class Person extends World{
  private static Random rand = new Random();
  private int satisfaction;
  private Station current;
  private String dest;

  public Person(Station current, String dest){
    this.current = current;
    this.dest = dest;
    this.satisfaction = 100;
  }


  public void decreaseSatisfaction(int howMuch){
    if(howMuch < 0){
      throw new IllegalArgumentException();
    }
    else if(satisfaction - howMuch < 0){
      satisfaction = 0;
    }
    else{
      satisfaction = satisfaction - howMuch;
    }
  }

  public void increaseSatisfaction(int howMuch){
    if(howMuch > 100){
      throw new IllegalArgumentException();
    }
    else if(satisfaction + howMuch > 100){
      satisfaction = 100;
    }
    else{
      satisfaction = satisfaction + howMuch;
    }
  }

  // pathfinding algorithm(s)

}

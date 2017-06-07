import java.util.ArrayList;
public class Line{
  ArrayList<Station> stations;
  int color1, color2, color3; // rgb
  int tunnels;
  
  public Line(int color1, int color2, int color3){
    stations = new ArrayList<Station>();
    this.color1 = color1;
    this.color2 = color2;
    this.color3 = color3;
  }
  
  public void addStation(Station station){
    if(stations.indexOf(station) != -1){
      throw new IllegalArgumentException();
    }
    else{
      stations.add(station);
      // processing graphics part
    }
  }
  
  public void removeStation(Station station){
    if(stations.indexOf(station) == -1){
      throw new IllegalArgumentException();
    }
    else{
      stations.remove(station);
    }
  }   
}  
  
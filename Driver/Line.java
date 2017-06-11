import java.util.ArrayList;
public class Line{
  ArrayList<Station> stations;
  int color1, color2, color3;
  int startX, startY, endX, endY;// rgb
  int tunnels;
  
  public Line(int color1, int color2, int color3, int startX, int startY, int endX, int endY){
    stations = new ArrayList<Station>();
    this.color1 = color1;
    this.color2 = color2;
    this.color3 = color3;
    this.startX = startX;
    this.startY = startY;
    this.endX = endX;
    this.endY = endY;
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
  
  int getStartX(){
    return (int)(startX);
  }
  
  int getStartY(){
    return (int)(startY);
  }
  
  int getEndX(){
    return (int)(endX);
  }
  
  int getEndY(){
    return (int)(endY);
  }
  
  int getColor1(){
    return color1;
  }
  
  int getColor2(){
    return color2;
  }
  
  int getColor3(){
    return color3;
  }
}  
  
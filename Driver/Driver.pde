import java.util.ArrayList;
//Clock time;
String previousDay;
String[] streets = {"Kendall St","Cannonball Lane","Birch St","Times Square","Lockwood/Rent St",
"TT Towers","White House","Kevins House,Jonathans House","Elm St","Franklin Av","KCU Hospital",
"Dornsby Rd","Interstate 86","Grove St","Harbor St", "Green St", "Duane St", "Island Av", "Meadow Av", "Meadow St", "Crystal St",
"Fresh Pond Rd", "Myrtle St", "Lakewood/Ozone Park", "Staten Island Dump", "Cape St", "Valley Av", "Burning St", "Grove Falls", "Cotton Oak Ledge", "Sandy Ridge Av", "Bay St",
"Marina Av","Capital St","Flushing/Main St","63rd Drive/Rego Park", "Heller St", "da Bronx", "Hippiesville","South Station","Penn Station","Central Park","Flushing Meadows/114 St","Hastings St.","Grand Central/42nd St"};
Station a;
ArrayList<Station> stations;
ArrayList<Line> rails;

void settings(){
  fullScreen();
}
void setup(){
  //time = new Clock();
  clockSetup();
  stations = new ArrayList<Station>();
}
void draw(){
  if(!day.equals(previousDay)){
    stations.add(new Station((int)random(width), (int)random(height), streets[(int)random(46)], (int)random(3)));
  }
  background(255);
  for(Station i : stations){
    makeStation(i.getX(), i.getY(), i.getType()); // param three is type
  }
  for(int x = 0; x < rails.size(); x++){
    line(rails.get(x).getStartX(), rails.get(x).getStartY(), rails.get(x).getEndX(), rails.get(x).getEndY());
  }
  drawLines();
  if(getEndLineX() != 0){
    rails.add(new Line(0, 0, 0, getStartLineX(), getStartLineY(), getEndLineX(), getEndLineY()));
  }    
  previousDay = day;
  strokeWeight(2);
  tick();
}
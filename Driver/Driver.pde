import java.util.ArrayList;
//Clock time;
String previousDay;
String[] streets = {"Kendall St","Cannonball Lane","Birch St","Times Square","Lockwood/Rent St",
"TT Towers","White House","Kevin's House","Jonathan's House","Elm St","Franklin Av","KCU Hospital",
"Dornsby Rd","Interstate 86","Grove St","Harbor St", "Green St", "Duane St", "Island Av", "Meadow Av", "Meadow St", "Crystal St",
"Fresh Pond Rd", "Myrtle St", "Lakewood/Ozone Park", "Staten Island Dump", "Cape St", "Valley Av", "Burning St", "Grove Falls", "Cotton Oak Ledge", "Sandy Ridge Av", "Bay St",
"Marina Av","Capital St","Flushing/Main St","63rd Drive/Rego Park", "Heller St", "da Bronx", "Hippiesville","South Station","Penn Station","Central Park","Flushing Meadows/114 St","Hastings St.","Grand Central/42nd St"};
ArrayList<Station> stations;
ArrayList<Line> rails;
//ArrayList<River> rivers;
ArrayList<UpgradeScreen> screens;
boolean firstStat = false;
boolean secondStat = false;
boolean alreadyTried = false;
int firstStatX, firstStatY, secondStatX, secondStatY;
int numRivers;

void settings(){
  fullScreen();
}

void setup(){
  //time = new Clock();
  clockSetup();
  stations = new ArrayList<Station>();
  rails = new ArrayList<Line>();
//  rivers = new ArrayList<River>();
  screens = new ArrayList<UpgradeScreen>();
//  numRivers = (int)random(2) + 1;
//  for(int x = 0; x < numRivers; x++){
//    rivers.add(new River(0, (int)random(height), 25);
//  }
  if(screens.size() < 1){
    screens.add(new UpgradeScreen(0,0,0,0));
  }
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
    drawLine(rails.get(x).getStartX(), rails.get(x).getStartY(), rails.get(x).getEndX(), rails.get(x).getEndY());
  }
//  for(int x = 0; x < rivers.size()){
//    drawLine(
  drawLines();
  if(getEndLineX() != 0){
    for(Station i : stations){
      if((abs(i.getX() - getStartLineX()) < 10) && (abs(i.getY() - getStartLineY()) < 10)){
        firstStat = true;
        firstStatX = i.getX();
        firstStatY = i.getY();
        alreadyTried = true;
      }
      if((abs(i.getX() - getEndLineX()) < 10) && (abs(i.getY() - getEndLineY()) < 10) && !alreadyTried){
        secondStat = true;
        secondStatX = i.getX();
        secondStatY = i.getY();
      }
      alreadyTried = false;
    }
    if(firstStat && secondStat){
    rails.add(new Line(0, 0, 0, firstStatX, firstStatY, secondStatX, secondStatY));
    }
    setStartLineX(0);
    setStartLineY(0);
    setEndLineX(0);
    setEndLineY(0);
    firstStat = false;
    secondStat = false;
  }
  for(int x = 0; x < screens.size(); x++){
  drawScreen(screens.get(x).getTunnels(), screens.get(x).getRail(), screens.get(x).getXtraCar(), screens.get(x).getXtraTrain());
  }
  strokeWeight(2);
  ellipse(width / 2, height - 230, 20 ,20);
  previousDay = day;
  tick();
}
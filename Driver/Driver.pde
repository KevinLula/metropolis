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
boolean firstStat = false;
boolean secondStat = false;
boolean alreadyTried = false;
int trains;
int days;
int trainAddRate, speed;

void settings(){
  fullScreen();
}
void setup(){
  //time = new Clock();
  clockSetup();
  stations = new ArrayList<Station>();
  rails = new ArrayList<Line>();
  trains = 3; // number of trains
  days = 0;
  trainAddRate = 3; // every x days a new train is added
  speed = 2; // how fast the trains go
}
void draw(){
  if(days % trainAddRate == 0){
    trains++;
  }
  if(!day.equals(previousDay)){
    stations.add(new Station((int)random(width), (int)random(height), streets[(int)random(46)], (int)random(3)));
  }
  background(255);
  for(Station i : stations){
    makeStation(i.getX(), i.getY(), i.getType()); // param three is type
  }
  for(int x = 0; x < rails.size(); x++){
    drawLine(rails.get(x).getStartX(), rails.get(x).getStartY(), rails.get(x).getEndX(), rails.get(x).getEndY(), rails.get(x).getColor1(), rails.get(x).getColor2(), rails.get(x).getColor3());
  }
  for(Line i : rails){
    ArrayList<Train> trainList = i.returnTrains();
    for(Train j : trainList){
      displayTrain(j.getX(), j.getY());
      if(j.move(speed)){
        j.putInReverse();
      }
    }
  }
  drawLines();
  if(getEndLineX() != 0){
    for(Station i : stations){
      if((abs(i.getX() - getStartLineX()) < 15) && (abs(i.getY() - getStartLineY()) < 15)){
        firstStat = true;
        alreadyTried = true;
      }
      if((abs(i.getX() - getEndLineX()) < 15) && (abs(i.getY() - getEndLineY()) < 15) && !alreadyTried){
        secondStat = true;
      }
      alreadyTried = false;
    }
    if(firstStat && secondStat){
      rails.add(new Line(0, 0, 0, getStartLineX(), getStartLineY(), getEndLineX(), getEndLineY(), false));
      trains--;
    }
    setStartLineX(0);
    setStartLineY(0);
    setEndLineX(0);
    setEndLineY(0);
    firstStat = false;
    secondStat = false;
  }
  previousDay = day;
  strokeWeight(2);
  tick();
  days++;
}

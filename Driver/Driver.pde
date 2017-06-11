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
Station firstStats, secondStats;
boolean alreadyTried = false;
boolean upgradeAdded = false;
int firstStatX, firstStatY, secondStatX, secondStatY;
int numRivers;
int daysPassed;
int choice = 0;

void settings(){
  fullScreen();
}

void setup(){
/*  if(rails.size() <= 3){
    howManyRails = rails.size();
  }
  else{
  for(int x = 0; x < rails.size(); x++){
    for(int y = 1; y < rails.size(); y++){
      if(rails.get(x).getColor1() - rails.get(y).getColor1() != 0 && rails.get(x).getColor2() - rails.get(y).getColor2() != 0 && rails.get(x).getColor3() - rails.get(y).getColor3() != 0){
        howManyRails ++;
      }
    }
  }
  } */
        
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
    screens.add(new UpgradeScreen(0,3,0,0));
  }
}
void draw(){
  int howManyRails = 0;
  if(!day.equals(previousDay)){
    stations.add(new Station((int)random(width), (int)random(height), streets[(int)random(46)], (int)random(3)));
    daysPassed++;
    upgradeAdded = false;
  }
  background(255);
  for(Station i : stations){
    makeStation(i.getX(), i.getY(), i.getType()); // param three is type
  }
  for(int x = 0; x < rails.size(); x++){
    drawLine(rails.get(x).getStartX(), rails.get(x).getStartY(), rails.get(x).getEndX(), rails.get(x).getEndY(), rails.get(x).getColor1(), rails.get(x).getColor2(), rails.get(x).getColor3());
  }
//  for(int x = 0; x < rivers.size()){
//    drawLine(
 if(screens.get(0).getRail() > 0){
  drawLines();
  if(getEndLineX() != 0){
    for(Station i : stations){
      if((abs(i.getX() - getStartLineX()) < 10) && (abs(i.getY() - getStartLineY()) < 10)){
        firstStat = true;
        firstStats = i;
        firstStatX = i.getX();
        firstStatY = i.getY();
        alreadyTried = true;
      }
      if((abs(i.getX() - getEndLineX()) < 10) && (abs(i.getY() - getEndLineY()) < 10) && !alreadyTried){
        secondStat = true;
        secondStats = i;
        secondStatX = i.getX();
        secondStatY = i.getY();
      }
      alreadyTried = false;
    }
    if(firstStat && secondStat){
    rails.add(new Line(int(random(256)), int(random(256)), int(random(256)), firstStatX, firstStatY, secondStatX, secondStatY));
    rails.get(rails.size() - 1).addStation(firstStats);
    rails.get(rails.size() - 1).addStation(secondStats);
    firstStats.addLines(rails.get(rails.size() - 1));
    secondStats.addLines(rails.get(rails.size() - 1));
    howManyRails++;
    }
    setStartLineX(0);
    setStartLineY(0);
    setEndLineX(0);
    setEndLineY(0);
    firstStat = false;
    secondStat = false;
    firstStats = null;
    secondStats = null;
  }
  }
  if(screens.get(0).getRail() == 0){
    int c1 = 0;
    int c2 = 0;
    int c3 = 0;
    drawLines();
    if(getEndLineX() != 0){
      for(Station i : stations){
        if((abs(i.getX() - getStartLineX()) < 10) && (abs(i.getY() - getStartLineY()) < 10) && i.getLineSize() > 0){
        c1 = i.getLines().get(choice).getColor1();
        c2 = i.getLines().get(choice).getColor2();
        c3 = i.getLines().get(choice).getColor3();
        firstStat = true;
        firstStats = i;
        firstStatX = i.getX();
        firstStatY = i.getY();
        alreadyTried = true;
      }
      if((abs(i.getX() - getEndLineX()) < 10) && (abs(i.getY() - getEndLineY()) < 10) && !alreadyTried){
        secondStat = true;
        secondStats = i;
        secondStatX = i.getX();
        secondStatY = i.getY();
      }      
      alreadyTried = false; 
      }
    if(firstStat && secondStat){
    rails.add(new Line(c1, c2, c3, firstStatX, firstStatY, secondStatX, secondStatY));
    rails.get(rails.size() - 1).addStation(firstStats);
    rails.get(rails.size() - 1).addStation(secondStats);
    firstStats.addLines(rails.get(rails.size() - 1));
    secondStats.addLines(rails.get(rails.size() - 1));
    choice = 0;
    }
    setStartLineX(0);
    setStartLineY(0);
    setEndLineX(0);
    setEndLineY(0);
    firstStat = false;
    secondStat = false;
    firstStats = null;
    secondStats = null;
  }
  }          
  for(int x = 0; x < screens.size(); x++){
  useUpgrades(screens.get(x).getTunnels(), screens.get(x).getXtraCar(), screens.get(x).getXtraTrain());
  int removedT = getRemovedT();
  int removedC = getRemovedC();
  int removedX = getRemovedX();
  drawScreen(screens.get(x).getTunnels() - removedT, screens.get(x).getRail(), screens.get(x).getXtraCar() - removedC, screens.get(x).getXtraTrain() - removedX);
  screens.get(x).removeTunnels(removedT);
  screens.get(x).removeXtraCar(removedC);
  screens.get(x).removeXtraTrain(removedX);
  screens.get(x).removeRail(howManyRails);
  if(daysPassed % 14 == 0 && !upgradeAdded){
    int y = int(random(100));
    if(y < 20){
      screens.get(x).addRail();
      upgradeAdded = true;
    }
    else if(y >= 20 && x < 46){
      screens.get(x).addTunnels();
      upgradeAdded = true;
    }
    else if(y >= 46 && y < 73){
      screens.get(x).addXtraTrain();
      upgradeAdded = true;
    }
    else if(y >= 73 && y < 100){
      screens.get(x).addXtraCar();
      upgradeAdded = true;
    }
  }
  }
  stroke(0);
  strokeWeight(2);
  ellipse(width / 2, height - 230, 20 ,20);
  previousDay = day;
  tick();   
}

void keyReleased(){
  choice++;
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    choice = 0;
  }
}
  

/* Right now an extra rail can be drawn from any station that has a rail going through it not just the endpoint of the rail so we have to fix that.
This can be done by referring to the colors of the lines that will be changed later.
Also we have to 
*/
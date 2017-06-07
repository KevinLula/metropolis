//Clock time;
String previousDay;
String[] streets = {"Kendall St","Cannonball Lane","Birch St","Times Square","Lockwood/Rent St",
"TT Towers","White House","Kevin's House","Jonathan's House","Elm St","Franklin Av","KCU Hospital",
"Dornsby Rd","Interstate 86","Grove St","Harbor St", "Green St", "Duane St", "Island Av", "Meadow Av", "Meadow St", "Crystal St",
"Fresh Pond Rd", "Myrtle St", "Lakewood/Ozone Park", "Staten Island Dump", "Cape St", "Valley Av", "Burning St", "Grove Falls", "Cotton Oak Ledge", "Sandy Ridge Av", "Bay St",
"Marina Av","Capital St","Flushing/Main St","63rd Drive/Rego Park", "Heller St", "da Bronx", "Hippiesville","South Station","Penn Station","Central Park","Flushing Meadows/114 St","Hastings St.","Grand Central/42nd St"};
Station a;
void settings(){
  fullScreen();
}  
void setup(){
  //time = new Clock();
  clockSetup();
}
void draw(){
  if(day != previousDay){
    a = new Station(streets[(int)random(46)]);
  }  
  background(255);
  tick();
  previousDay = day;
}  
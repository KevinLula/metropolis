//Clock time;
void settings(){
  fullScreen();
}  
void setup(){
  //time = new Clock();
  clockSetup();
}
void draw(){
  background(255);
  tick();
}  
/*class Lines{
  private String colors;
  private ArrayList<Stations> Stations;
  private int Tunnels;
  private int Length;
  private int Trains; */
  
  void setup(){
    size(800,800);
    background(255);
  }
  
  void draw(){
    stroke(0);
    strokeWeight(20);
    if(mousePressed){
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
  

//Got to update so that if the mouse is pressed on a station it begins to draw a line until it hits another station.
//Or if you touch the station where the line is at then it will draw back the line.
//change thickness of the line.
//make trains running on the line understand if a line is drawn there (x,y) coords
//
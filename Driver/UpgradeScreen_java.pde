PImage tun, rai, car, train;
int removedTunnels = 0;
int removedRails = 0;
int removedCars = 0;
int removedTrains = 0;

void drawScreen(int tunn, int Rai, int xCar, int xTrain){
  fill(255);
  if(mousePressed && abs(int(mouseX) - (width / 2))<= 20 && abs(int(mouseY) - (height - 230)) <= 20){
   strokeWeight(2); 
   rect((width/2) - 200, height - 200, 400, 200); 
   tun = loadImage("bridge.jpg");
   rai = loadImage("rails.png");
   car = loadImage("train.png");
   train = loadImage("cars.png");
   addPowerUps(tunn, Rai, xCar, xTrain);
  }
}

void addPowerUps(int bridge, int numRai, int numCar, int numTrain){  
image(tun, (width/2) - 170, height - 160, 80, 90);
image(rai, (width/2) - 80, height - 160, 80, 90);
image(car, (width/2) + 10, height - 160, 80, 90);
image(train, (width/2) + 110, height - 160, 80, 90);
fill(0);
textSize(20);
text(bridge + "", (width/2) - 140, height - 40);
text(numRai + "", (width/2) - 50, height - 40);
text(numCar + "", (width/2) + 40, height - 40);
text(numTrain + "", (width/2) + 150, height - 40);
}

void useUpgrades(int bridges, int numCars, int numTrains){
  if(bridges > 0 && keyPressed && (key == 't' || key == 'T')){
    removedTunnels += 1;
    //add Tunnel to the mouseX mouseY coordinates;
  }
  if(numCars > 0 && keyPressed && (key == 'c' || key == 'C')){
    removedCars += 1;
    //add train car to one of the trains randomly
  }
  if(numTrains > 0 && keyPressed && (key == 'x' || key == 'X')){
    removedTrains += 1;
    //add train to the mouseX and mouseY of the user
  }
}

public int getRemovedT(){
  return removedTunnels; 
}

public int getRemovedR(){
  return removedRails;
}

public int getRemovedC(){
  return removedCars;
}

public int getRemovedX(){
  return removedTrains;
}
//add the images obtained
//add the number of how many of those powerups you currently have underneath the images by using get...() and adding text number like in clock


  
  
public class UpgradeScreen{
int tunnels = 0;
int rail = 0;
int xtraTrain = 0;
int xtraCar =0 ;

public UpgradeScreen(int tunnels, int rail, int xtraTrain, int xtraCar){
  this.tunnels = tunnels;
  this.rail = rail;
  this.xtraTrain = xtraTrain;
  this.xtraCar = xtraCar;
}

public void addTunnels(){
  tunnels += 1;
}

public void addRail(){
  rail += 1;
}

public void addXtraTrain(){
  xtraTrain += 1;
}

public void addXtraCar(){
  xtraCar += 1;
}

public void removeTunnels(int remove){
  tunnels -= remove;
}

public void removeRail(int remove){
  rail -= remove;
}

public void removeXtraTrain(int remove){
  xtraTrain -= remove;
}

public void removeXtraCar(int remove){
  xtraCar -= remove;
}

public int getTunnels(){
  return tunnels;
}

public int getRail(){
  return rail;
}

public int getXtraTrain(){
  return xtraTrain;
}

public int getXtraCar(){
  return xtraCar;
}
}
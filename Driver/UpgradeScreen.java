public class UpgradeScreen{
int tunnels = 0;
int rail = 0;
int xtraTrain = 0;
int xtraCar =0 ;
int wide = 0;
int high = 0;

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

public void removeTunnels(){
  tunnels -= 1;
}

public void removeRail(){
  rail -= 1;
}

public void removeXtraTrain(){
  xtraTrain -= 1;
}

public void removeXtraCar(){
  xtraCar -= 1;
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
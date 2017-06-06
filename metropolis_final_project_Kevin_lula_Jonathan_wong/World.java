public class World{
  // why we need a world class ->
  // say the player is such an op that he/she is capable of managing this behemoth of a service
  // this person eventually makes the game run out of visual space, even when the sprite sizes--
  // have been reduced.
  // what to do?
  // this class implements a coordinate system on top of processing's coordinate system, to--
  // facilitate movement
  private int wx, wy;

  public World(){
      wx = 500;
      wy = 500;
  }
  public void resize(int x, int y){
    if(x < 500 || y < 500){
      throw new IllegalArgumentException();
    }
    wx = x;
    wy = y;
  }
}

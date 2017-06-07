public class Color{
  int RGB;
  int RGB2;
  int RGB3;
  
public Color(int val, int val2, int val3){
  RGB = val;
  RGB2 = val2;
  RGB3 = val3;
}

public int compareTo(Color other){
  return
  other.RGB + other.RGB2 + other.RGB3
  - this.RGB - this.RGB2 - this.RGB3;
  }
}
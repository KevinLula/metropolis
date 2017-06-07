PShape rectangle;
String day;
int date;
int time;

void setup(){
  size(800,800);
  fill(255);
  ellipse(100,100,60,60);
  rectangle = createShape(RECT, 0, 0, 19, 1);
  rectangle.setFill(color(0,0,0));
  day = "Monday";
  time = 0;
}
void draw(){ 
   background(255);
    fill(255);
    ellipse(100,100,60,60);
    fill(0);
    textSize(9);
    text("12",95,79);
    text("1",110,85);
    text("2",117,93);
    text("3",122,103);
    text("4",117,113);
    text("5",110,122);
    text("6",98,126);
    text("7",86,122);
    text("8",79,113);
    text("9",73,103);
    text("10",77,93);
    text("11",83,85); 
    textSize(20);
    if((second() / 7) % 7 == 2){
      day = "Tuesday";
    }
    else if((second() / 7) % 7 == 3){
      day = "Wednesday";
    }
    else if((second() / 7) % 7 == 4){
      day = "Thursday";
    }
    else if((second() / 7) % 7 == 5){
      day = "Friday";
    }
    else if((second() / 7) % 7 == 6){
      day = "Saturday";
    }
    else if((second() / 7) % 7 == 0){
      day = "Sunday";
    }
    else{day = "Monday";
    }
    text(day,20,20);      
    shape(rectangle, 100, 100);
    rectangle.rotate(0.03);
}
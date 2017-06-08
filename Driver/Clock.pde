PShape rectangle;
int time;
String day;
public void clockSetup(){
    time = 0; // we'll just use iterations. 60 iterations = 1hr
    day = "Monday";
    rectangle = createShape(RECT, 0, 0, 25, 1);
    rectangle.setFill(color(0,0,0));
}

public void tick(){
    fill(255);
    ellipse(100,100,60,60);
    shape(rectangle, 100, 100);
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
    rectangle.rotate(0.031);
}    
class Button {
  float x;
  float y;
  String c = "color";
  
  Button(float x1, float y1, String c1) {
    x = x1;
    y = y1;
    c = c1;

  }
  
  boolean contains(float mx, float my) {
    if (dist(mx, my, x, y) < 75) {
      return true;
    } else {
      return false;
    }
  }
  
  //show button
  void display(float mx,float my) {
    if (contains(mx, my)) {
      fill(0);
    } else {
      tint(255, 255);
    }
    
    if (c == "red") {
      fill(255,0,0);
    } else if (c == "red" && contains(mouseX,mouseY)) {
      fill(255,0,0,127);
    } else if (c == "green") {
      fill(0,255,0);
    }else if (c == "blue") {
      fill(0,0,255);
    }  
  noStroke();
  ellipseMode(CENTER);
  ellipse(x,y,75,130);
  }
}
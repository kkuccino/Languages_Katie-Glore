//ship class
class ship { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // constructor with parameters 
  ship(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC++;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    shape(ship, xpos, ypos, 150, 150);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
  
  void sail() {
    xpos = xpos - xspeed;
    if (xpos < -150) {
      xpos = 1130;
    }
    }
}
   
class Square {
  int x1;
  int y1;
  int x2;
  int y2;
  int c;
  float xpos, ypos;
  float xspeed = 2.8;
  float yspeed = 2.2;
  
  int xdirection = 1;
  int ydirection = 1;
  
  Square(int tempx1,int tempy1,int tempx2,int tempy2) {
    x1 = tempx1;
    y1 = tempy1;
    x2 = tempx2;
    y2 = tempy2;
  }
  
  void display() {
    if (c >= 255)  c=0;  else  c++;
    fill(c, 255, 255);
    noStroke();
    rect(x1, y1, x2, y2);
    xpos = width/2;
    ypos = height/2;
  }
  
  void bounce() {
      // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  /*
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-(x1) || xpos < (x1)) {
    xdirection *= -1;
  }
  if (ypos > height-(y1) || ypos < (y1)) {
    ydirection *= -1;
  }
  
  */
  }
 
}
    
  
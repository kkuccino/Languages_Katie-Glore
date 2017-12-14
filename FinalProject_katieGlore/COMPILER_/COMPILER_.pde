//--------------------------------------------------
//FINAL PROJECT
//katie glore
//december 2017
//--------------------------------------------------

//program states
//final int stateStart = 0;
final int wave = 1;
final int geode = 2;
final int stripes = 3;
final int cube = 4;

int state = 1;

void setup() {
  fullScreen(P3D);
  //size(1280,768,P3D);
  smooth();
  

}

void draw() {
  //this calls functions for each state
  switch (state) {
    //case stateStart:
    //drawForStateStart();
    //break;
    
    case wave:
    drawForWave();
    break;
    
    case geode:
    drawGeo();
    break;
    
    case stripes:
    drawStripes();
    break;
    
    case cube:
    drawCube();
    break;
  }  
   
}

void drawForStateStart() {
  background(0);
  //fill(0);
  //rect(0,0,1280,768);
}

void keyPressed() {
  
  if (keyCode == LEFT) {
    clear();
    state--;
    if (state < 1) {
      state = 4; 
    }
  }
  else if (keyCode == RIGHT) {
    clear();
    state++;
    if (state > 4) {
      state = 1;
    }
  }
  
  
  //if (state == 2) {
  if (keyCode == '=') {
    size = size + 0.25;
  } else if (keyCode == '-') {
    size = size - 0.25;
  }
  
}


/*
void keyPressed() {
  switch (state) {
    case stateStart:
    clear();
    state = wave;
    break;
    
    case wave:
    if (key == CODED) {
      if (keyCode == LEFT) {
        clear();
        state = stateStart; 
      } else if (keyCode == RIGHT) {
        clear();
        frameRate(60);
        state = geode;
      }
    }
    
    case geode:
    if (key == CODED) {
      if (keyCode == LEFT) {
        clear();
        frameRate(30);
        state = wave;
      } else if (keyCode == RIGHT) {
        clear();
        state = geode;
      }
    }
  }
}
*/
float t;
float theta;
float theta2;
float numb = 2;
int maxFrameCount = 400;

//boolean locked = false;
float rx;
float ry;
float rdifx = 0.0;
float rdify = 0.0;

Geometry geo = new Geometry();


void setup(){
  //size(540,540,P3D);
  fullScreen(P3D);
  noFill();
  colorMode(HSB);
  strokeWeight(6);
  
}

float c;
float s;

void draw(){
  background(0);
  translate(width/2,height/2);  
  
  scale(2.5);
  
  rotateX(radians(map(ry,0,height,0,360)));
  rotateY(radians(map(rx,0,width,0,360)));
  geo.display();
 
}

void mousePressed() {
  rdifx = mouseX - rx;
  rdify = mouseY - ry;
}

void mouseDragged() {
  rx = mouseX - rdifx;
  ry = mouseY - rdify;
}
/*
rainbow geode
katie glore
*/


float t;
float thetag;
float theta2;
float numb = 2;
int maxFrameCount = 400;

//boolean locked = false;
float rx;
float ry;
float rdifx = 0.0;
float rdify = 0.0;

Geometry geo = new Geometry();


float size = 3;
float cg;
float sg;

void drawGeo() {
  smooth();
  noFill();
  colorMode(HSB);
  strokeWeight(6);
  background(0);
  translate(width/2,height/2);  
  
  scale(size);
  
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
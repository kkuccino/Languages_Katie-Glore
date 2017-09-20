

void setup() {
 size(1080,720);
 background(255);
}


/*void draw() {
  int r = int(random(1,255));
  int g = int(random(1,255));
  int b = int(random(1,255));
 stroke(r,g,b);
 strokeWeight(abs(mouseX - pmouseX));
 line(pmouseX, pmouseY, mouseX, mouseY);
}*/

void draw() {
  int r = int(random(1,255));
  int g = int(random(1,255));
  int b = int(random(1,255));
  int m = constrain(abs(pmouseX - mouseX),5,600);
 noStroke();
 fill(r,g,b);
 rectMode(CENTER);
 rect(mouseX,mouseY,m,m);
}

void mousePressed() {
  noStroke();
  fill(255,85);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,300,300);
}

void keyPressed() {
  int r = int(random(1,255));
  int g = int(random(1,255));
  int b = int(random(1,255));
  background(r,g,b);
}
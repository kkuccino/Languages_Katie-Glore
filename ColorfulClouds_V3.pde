
int scene = 1;
int r = int(random(1,255));
int g = int(random(180,240));
int b = int(random(180,240));
float c;

void setup() {
 size(1080,720);
 colorMode(HSB);
 background(r,g,b);
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
  int m = constrain(abs(pmouseX - mouseX),5,600);
 if (c >= 255) {
   c = 0;
 } else {
   c++;
 }
 noStroke();
 fill(c,255,255);
 if (mouseButton == LEFT ) {
   if (scene==1) {
     rectMode(CENTER);
     rect(mouseX,mouseY,m,m);
   } else if (scene==2) {
     ellipseMode(CENTER);
     ellipse(mouseX,mouseY,m,m);
   } else if (scene==3) {
     stroke(c,255,255);
     strokeWeight(abs(mouseX - pmouseX));
     line(pmouseX, pmouseY, mouseX, mouseY);
   }
 }
 println(scene);
}

void mousePressed() {
  if (mouseButton == RIGHT ) {
  noStroke();
  fill(255,85);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,300,300);
  }
}

void keyPressed() {
  int r = int(random(1,255));
  int g = int(random(180,240));
  int b = int(random(180,240));
  if (key == ' ' ) {
    background(r,g,b);
  }
  if (key == '1') {
    scene = 1;
  } else if (key == '2') {
    scene = 2;
  } else if (key == '3') {
    scene = 3;
  }
}
Square sqr;

void setup() {
  sqr = new Square(20, 20, 400, 400);
  size(1000,720);
  background(250);
  colorMode(HSB);
}

void draw() {
  sqr.display();
  sqr.bounce();
}
  
  
  
/*noStroke();
fill(250,182,200);
rect(20,20,400,400);

fill(245,188,151,213);
rect(170,120,350,350);

fill(245,242,151,171);
rect(320,220,300,300);

fill(127, 249, 202,129);
rect(450,320,250,250);

fill(162,221,247,87);
rect(535,400,200,200);

fill(244,152,255,45);
rect(615,475,150,150);
} */
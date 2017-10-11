
String state = "open";
PImage img;

void setup() {
  size(1000,1000);
  background(200);
}

void draw() {
  if (state.equals("open")) {
    cursor();
    background(0);
    img = loadImage("NYCSkylinecrop.jpg");
    image(img,0,0,1000,1000);
    fill(255);
    textSize(90);
    textAlign(CENTER);
    text("NYC Animal", width/2, height/2 - 50);
    text("Simulator", width/2, height/2 + 25);

    
  } else if (state.equals("home")) {
    cursor();
    background(0);
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("who are you?", width/2, 150);
    button(width/3, height/3, 200, 0, 200, "Pigeon");
    button(2*width/3, 2*height/3, 200, 0, 0, "Cockroach");
    button(width/3, 2*height/3, 50, 50, 50, "Subway Rat");
    button(2*width/3, height/3, 0, 200, 0, "Squirrel");
  } else if (state.equals("pigeon")) {
    pigeon();
  } else if (state.equals("cockroach")) {
    cockroach();
  } else if (state.equals("rat")) {
    rat();
  } else if (state.equals("squirrel")) {
    squirrel();
  }
}

void button(int x, int y, int r, int g, int b, String name) {
  noStroke();
  fill(r,g,b);
  ellipse(x,y,150,150);
  textAlign(CENTER);
  textSize(22);
  text(name, x, y + 115);
}

void rat() {
    background(0);
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("RAT", width/2, height/2);
    noCursor();
    button(mouseX, mouseY, 50, 50, 50, "");
}

void pigeon() {
    background(0);
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("PIGEON", width/2, height/2);
    noCursor();
    button(mouseX, mouseY, 200, 0, 200, "");
}

void cockroach() {
    background(0);
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("COCKROACH", width/2, height/2);
    noCursor();
    button(mouseX, mouseY, 200, 0, 0, "");
}

void squirrel() {
    background(0);
    fill(255);
    textSize(35);
    textAlign(CENTER);
    text("SQUIRREL", width/2, height/2);
    noCursor();
    button(mouseX, mouseY, 0, 200, 0, "");
}



void mousePressed() {
  if (state.equals("open")){
    state = "home";
  }  
   
   else if (state.equals("home") && (mouseX < width/2 && mouseY > height/2)) {
     state = "rat";
   } 
   
   else if (state.equals("home") && (mouseX > width/2 && mouseY > height/2)) {
     state = "cockroach";
   }
   
   else if (state.equals("home") && (mouseX < width/2 && mouseY < height/2)) {
     state = "pigeon";
   }
   
   else if (state.equals("home") && (mouseX > width/2 && mouseY < height/2)) {
     state = "squirrel";
   }
   
   else if (state.equals("rat")) {
     state = "home";
   } else if (state.equals("cockroach")) {
     state = "home";
   } else if (state.equals("pigeon")) {
     state = "home";
   } else if (state.equals("squirrel")) {
     state = "home";
   }
  
 
  
println(state);
}

void keyPressed() {
  state.equals("open");
}



  
  
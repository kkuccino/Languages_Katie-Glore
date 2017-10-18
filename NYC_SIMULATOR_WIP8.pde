
String state = "open";
PImage skyline;

PImage img;

PImage cockroach;
PImage kitchenbkg;
PImage tinyplant;
PImage sponge;
PImage succulents;
PImage pot;
PImage glass;
PImage bowl;
PImage plate;

PImage pigeon;
PImage street;
PImage bus;
PImage girl;
PImage guys;
PImage hipster;
PImage hotdog;
PImage oldlady;

PImage squirrel;
PImage restbkg;
PImage chair;
PImage salt;
PImage sideglass;
PImage wine;
PImage wrinkle;

PImage rat;
PImage subwaybkg;
PImage person;
PImage subwaydoor;
PImage oldman;
PImage trash;
PImage pole;

void setup() {
  size(1000,1000);
  background(200);
  skyline = loadImage("NYCSkylinecrop.jpg");
 
  cockroach = loadImage("cockroach.png");
  kitchenbkg = loadImage("kitchenbkg.png");
  tinyplant = loadImage("tinyplant.png");
  sponge = loadImage("sponge.png");
  succulents = loadImage("succulents.png");
  pot = loadImage("pot.png");
  glass = loadImage("glass.png");
  bowl = loadImage("bowl.png");
  plate = loadImage("plate.png");
  
  pigeon = loadImage("pigeon01.png");
  street = loadImage("street.png");
  bus = loadImage("bus.png");
  girl = loadImage("girl.png");
  guys = loadImage("guys.png");
  hipster = loadImage("hipster.png");
  hotdog = loadImage("hotdog.png");
  oldlady = loadImage("oldlady.png");
  
  squirrel = loadImage("squirrel.png");
  restbkg = loadImage("restaurantbkg.png");
  chair = loadImage("chair.png");
  salt = loadImage("salt.png");
  sideglass = loadImage("sideglass.png");
  wine = loadImage("wine.png");
  wrinkle = loadImage("wrinkle.png");
  
  rat = loadImage("rat.png");
  subwaybkg = loadImage("subwaybkg.png");
  person = loadImage("person.png");
  subwaydoor = loadImage("subwaydoor.png");
  oldman = loadImage("oldman.png");
  trash = loadImage("trash.png");
  pole = loadImage("pole.png");
}


void draw() {
  if (state.equals("open")) {
    cursor();
    background(0);
    image(skyline,0,0,1000,1000);
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
    button(width/3, height/3, pigeon, "Pigeon");
    button(2*width/3, 2*height/3, cockroach, "Cockroach");
    button(width/3, 2*height/3, rat, "Subway Rat");
    button(2*width/3, height/3, squirrel, "Squirrel");
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

void loadBkg(PImage image) {
  imageMode(CORNER);
  image(image, 0, 0, 1000, 1000);
}

void button(int x, int y, PImage image, String name) {
  imageMode(CENTER);
  image(image, x, y, 200,200);
  textAlign(CENTER);
  textSize(22);
  text(name, x, y + 115);
}

void rat() {
    loadBkg(subwaybkg);
    noCursor();
    //button(mouseX, mouseY, rat, "");
    imageMode(CENTER);
    image(rat, mouseX, mouseY, 200, 200);
    imageMode(CORNER);
    loadBkg(oldman);
    loadBkg(person);
    loadBkg(pole);
    loadBkg(subwaydoor);
    loadBkg(trash);
}

void pigeon() {
    loadBkg(street);
    noCursor();
    imageMode(CENTER);
    image(pigeon, mouseX, mouseY, 100, 100);
    imageMode(CORNER);
    loadBkg(bus);
    loadBkg(girl);
    loadBkg(guys);
    loadBkg(hipster);
    loadBkg(hotdog);
    loadBkg(oldlady);
}

void cockroach() {
    noCursor();
    loadBkg(kitchenbkg);
    //textSize(35);
    //textAlign(CENTER);
    //text("COCKROACH", width/2, height/2);
    imageMode(CENTER);
    image(cockroach, mouseX, mouseY, 200, 200);
    //button(mouseX, mouseY, 200, 0, 0, "");
    //loadBkg("tinyplant.png");
    //loadBkg("sponge.png");
    imageMode(CORNER);
    loadBkg(tinyplant);
    loadBkg(sponge);
    loadBkg(succulents);
    loadBkg(glass);
    loadBkg(pot);
    loadBkg(bowl);
    loadBkg(plate);
}

void squirrel() {
    loadBkg(restbkg);
    noCursor();
    imageMode(CENTER);
    image(squirrel, mouseX, mouseY, 400, 400);
    imageMode(CORNER);
    //loadBkg(chair);
    //loadBkg(salt);
    //loadBkg(sideglass);
    //loadBkg(wine);
    //loadBkg(wrinkle);
    image(chair, 0, 0, 1000, 1000);
    image(salt, 0, 0, 1000, 1000);
    image(sideglass, 0, 0, 1000, 1000);
    image(wine, 0, 0, 1000, 1000);
    image(wrinkle, 0, 0, 1000, 1000);
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



  
  
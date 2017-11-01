//original sketch "SS4_boatclass" & class "Ship" by Samuel Warga
//Methods I added "sail"
//Event functions I added "mousePressed" & state changes
//Title: Back and Forth Boat Time by Katie Glore and Samuel Warga
//11/1/17



//a mother boat spawns babies and ships them off to see the sea, oh fare thee well young tugs (toot, toot)

String state = "1";

//define PShape svg name
PShape ship;

//define object
ship myShip1;


//ship array
ship[] ships = new ship[400];

//setup
void setup() {
  size(1240, 720);
  //ship with arguments
  myShip1 = new ship(color(51), 0, 100, 2);
  ship = loadShape("ship.svg");
  if (state.equals("1")) {
  for (int i = 0; i < ships.length; i++) {
    ships[i] = new ship(color(i*2),0,i*20, i/2.0);
  }
  } else if (state.equals("2")) {
    for (int i=0; i < ships.length; i++) {
      ships[i] = new ship(color(i/2),0,i/20, i*2.0);
    }
  }
 
}


//draw
void draw() {
  if (state.equals("1")) {
    background(255);
    for (int i = 0; i < ships.length; i++) { 
    ships[i].display();
    ships[i].move();
    }
   } else if (state.equals("2")) {
     background(255);
     for (int i = 0; i < ships.length; i++) { 
     ships[i].display();
     ships[i].sail();
   }
   }
   println(state);
}

void mousePressed() {
  if (state.equals("1")) {
    state = "2";
    background(255);
     for (int i = 0; i < ships.length; i++) { 
     ships[i].display();
     ships[i].sail();
     }
  } else if (state.equals("2")) {
    state = "1";
    background(255);
    for (int i = 0; i > ships.length; i++) { 
    ships[i].display();
    ships[i].move();
    }
  }
}



    
    
  
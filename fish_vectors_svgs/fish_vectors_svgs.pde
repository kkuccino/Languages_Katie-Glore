PShape redfish;

void setup() {
  size(600,800);
  redfish = loadShape("fish.svg");
}

void draw() {
  background(0);
  shape(redfish,30,0);
}
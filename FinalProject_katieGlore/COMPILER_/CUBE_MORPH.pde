float tt;
float thetat;
int maxFrameCountt = 75;

int a = 101; // offset number
int space = 100; // size of cube for for loops

color c1;
color c2;

void drawCube() {
  colorMode(RGB);
  background(5);
  translate(width/2,height/2);
  scale(3.2);
  tt = (float)frameCount/maxFrameCountt;
  thetat = TWO_PI*tt;

  // lights
  directionalLight(245, 245, 245, 300, -200, -200);  
  ambientLight(240, 240, 240); 
  
  // rotate the whole cube
  rotateY(radians(map(mouseX, 0, width, 0, 360)));
  rotateX(radians(map(mouseY, 0, height, 0, 360)));
  
// 3 nested for loops to create sides  
  for (int x = -space; x <= space; x += 20) {
  for (int y = -space; y <= space; y += 20) {
  for (int z = -space; z <= space; z += 200) {

    // map size of small cubes with offset
    float offSet = ((x*y*z))/a;
    float sz = map(sin(-thetat+offSet), -1, 1, -0, 20);

   // if (k >= 255)  k=0;  else  k++;
   // if (j <= 0)  j=255;  else  j--;
    
    
    color c1 = color(240,40,100);
    color c2 = color(70,220,220);

  strokeWeight(1); 
  if ((x*y*z)%60 == 0){
    fill(c1);
    stroke(c2);
  } else {
    fill(c2);
    stroke(c1);
  }
    
    // small blocks, 3 times to create cube
    shp(x,y,z,sz);
    shp(y,z,x,sz);
    shp(z,x,y,sz);

    }}}


  } // end loop

  void shp(float x, float y,  float z, float d){
    
         pushMatrix();
         translate(x,y,z);
         box(d);
         popMatrix();
         
   }
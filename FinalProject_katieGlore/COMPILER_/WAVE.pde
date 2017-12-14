/*
wave sketch wip
katie glore
 */
 boolean runonce = true;
 
 float theta = 0;
 float r = 30;
 float c;
 float s;
 
void drawForWave() {
  
  smooth();
   colorMode(RGB);
   noStroke();
   
   /*if (runonce == true) {
     fill(255);
     rect(width/2,height/2,1024,768);
     translate(0,0,300);
     runonce = false;
   } */
   
   translate(0,0,0);
   rectMode(CENTER);
   fill(25,30);//background
   rect(width/2,height/2,1280,768);
   rotate(45);
   translate(0,-1100);
  
   
   
   
   noStroke();
   //BOTTOM COLOR not
   fill(0,200,88);
   //fill(227,96,245);
   //fill(255,0,60);
   
   float xs, ys;
   float k = 0;
   float l = 0;
   
     xs = map(mouseX,0,width,1,5);
     ys = map(mouseY,0,height,1,5);
   
   for(int j = 0; j <= height + 800; j += 37*ys){
   for(int i = 0; i <= width + 500; i += 37*xs){
     
     float x = xs*(r * sin(theta + k));
     float y = ys*(r * cos(theta + l));
     k = k + 0.5;
     l = l + 0.5;
     
     
     noStroke();
     
     if (c >= 255) c=0; else c++;
     //color of dots
     //fill(0,map(i,0,height+400,229,224), map(i,10,height+400,252,54));
     //fill(map(i,0,width,248,255),0,map(i,0,height,186,255));
     fill(map(i,0,width,229,224),0,map(i,10,height,252,54));
     //fill(c,150,255);
     ellipse(x+i,y+j,30,30);
    }
    k = 0;
    //i = 0;
    l = 0;
   }
   theta = theta + 0.1;

 
 }
class Geometry {
  void display() {
      t = (float)frameCount/maxFrameCount;
  theta = TWO_PI*t;
  theta2 = TWO_PI*t*2;
 
  for ( int x= -100; x <= 101; x += 200){
   for (int y= -100; y <= 101; y += 200){
    for (int z= -100; z<= 101; z += 200){
    for (int i=0;i<=numb-1; i++){
      float offSet = (TWO_PI/numb*i);    
      float pos1 = map(cos(-thetag+offSet), -1, 1, -200, 200);
      float pos2 = map(sin(-thetag+offSet), -1, 1, 100,  -100);
      float pos3 = map(cos(-theta2+offSet), -1, 1, -200, 200);
      float pos4 = map(sin(-theta2+offSet), -1, 1, 100,  -100);
      
      float pos5 = map(cos(-thetag+offSet), -1, 1, -100, 100);
      float pos6 = map(cos(-theta2+offSet), -1, 1, -100, 100);
  

      cg = map(mouseX,0,width,0,255);
      sg = map(mouseY,0,height,20,255);
      
      strokeJoin(ROUND);
      strokeCap(ROUND);
      stroke(cg,sg,255);
      beginShape();
      vertex(x,y,z);
      vertex(pos1,pos2,pos5);
      vertex(pos3,pos4,pos6);
      vertex(x,y,z);
      endShape();
      //quad(x,y,pos1,pos2,pos4,pos3,x,y);
 
    }
  }
  }
  }
  }
}
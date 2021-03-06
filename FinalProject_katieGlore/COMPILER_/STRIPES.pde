void drawStripes() {
  background(0);
  colorMode(HSB);
  
  float curveWidth = 10.0;
  float curveThickness = 10.0;
  float angleOffset = 0.9;
  
  float u;
  
  float angleIncrement = map(mouseY, 0, height, 0.0, 0.2);
  float angleA = 0.0;
  float angleB = angleA + angleOffset;
  
  float k = map(mouseX, 0, width, 2.0, 4.0);
  float c;
  
  for (int i = 0; i < height; i += curveWidth*k) {
    float waveColor = map(i, 0, mouseY+10, 0, 255);
    noStroke();

    c = map(mouseY,0,height,0,255);
 

    pushMatrix();
    translate(0, 400);
    fill(c,waveColor,255);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 10) {
      //float y1 = i + (sin(angleA)* curveWidth);
      //float y2 = i + (sin(angleB)* curveWidth);
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape();
    
    pushMatrix();
    scale(1.0, -1.0);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 10) {
      //float y1 = i + (sin(angleA)* curveWidth);
      //float y2 = i + (sin(angleB)* curveWidth);
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape();
    popMatrix();
    popMatrix();
  }
}
//Short Study 6: Sound
//Katie Glore

import processing.sound.*;

SoundFile cow;
SoundFile chicken;
SoundFile horse;

Button button;
Button button2;
Button button3;

void setup() {
  size(800, 300);
  background(255);
  
  cow = new SoundFile(this, "cow.wav");
  chicken = new SoundFile(this, "chicken.wav");
  horse = new SoundFile(this, "horse.wav");
  
  button = new Button(width/4, height/2, "red");
  button2 = new Button(width/2, height/2, "green");
  button3 = new Button(3*width/4, height/2, "blue");
}

void draw() {
  button.display(mouseX, mouseY);
  button2.display(mouseX, mouseY);
  button3.display(mouseX, mouseY);
}

void mousePressed() {
  if (button.contains(mouseX,mouseY)) {
    cow.play(1);
  } else if (button2.contains(mouseX,mouseY)) {
    chicken.play(1.5);
  } else if (button3.contains(mouseX,mouseY)) {
    horse.play(1);
  }
}
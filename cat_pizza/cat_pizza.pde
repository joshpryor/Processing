PImage goblin;   
PImage kitten;
import processing.sound.*;
SoundFile sound;
void draw(){
  fill(232,200,110);
ellipse(500,500 , 700,700);
fill(188,0,0);
ellipse(500,500,650,650);
fill(232,225,2);
ellipse(500,500,620,620);


   
  if (mousePressed ) {
 goblin = loadImage("pizza1.gif");
  image(goblin, 400, 500);
  kitten = loadImage("cat.gif");
  image(kitten,500,400);
  }

  
}
void setup (){
  size(1000,1000);
 sound = new SoundFile(this, "beep.wav");
  
  
}
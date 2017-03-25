int red = 0;
int green = 0;
int blue = 0;

void setup(){

  
  size (1000,1000);


 
  PImage face = loadImage("face.jpg");
 
 face.resize(1000,1000);
 image(face,0,0);



}
void draw(){
  
  
  fill (red,green,blue);
  ellipse(300,550,100,100);
  ellipse(700,550,100,100);
  
  fill(0 ,0,0);
  ellipse(300,550,39,39);
    ellipse(700,550,39,39);
  
}
void mouseMoved (){
  red = (int)random(255);
  green = (int)random(255);
  blue = (int)random(255);
  
  
  
}

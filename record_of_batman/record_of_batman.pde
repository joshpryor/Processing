PImage pictureOfRecord;  //as member variable   the top
int speed = 50;
int angle = 5;
 int xPosition = 0;
 int yPosition = 0;
 
 
 
 
 import ddf.minim.*;  //at the very top of your sketch
Minim minim;  //as a member variable
AudioPlayer song;  //as a member variable








 void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}







void setup(){
  
size(400,400);
background(0,255,255);

pictureOfRecord= loadImage("record.png");  //in setup method    //i did it
pictureOfRecord.resize(width,height);
minim = new Minim(this);  //in the setup method
song = minim.loadFile("batman.mp3", 512);//in the setup method

}



void draw(){
 if(mousePressed){
   
  rotateImage(pictureOfRecord,  angle );
  
image(pictureOfRecord, xPosition, yPosition);//in draw method                              i did it
angle+=speed;
song.play();
}
else{
song.pause();
}
}
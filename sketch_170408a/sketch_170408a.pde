  
  PImage donkey;  //at top of sketch  

  PImage tail;  //as the very top of your sketch

void setup(){
 size (1000,1001);
  
//Copy this stuff into the setup()method.  
donkey = loadImage("donkey.jpg");   
donkey.resize(1000,1001);
background(donkey);
  
tail = loadImage("tail.png");  //in the setup method
  
}
void draw(){
  if(mouseX<60 && mouseY<60){
     background(donkey);
  }
  else{
    background(21,255,186);
  }
   if(mousePressed ){
  background(donkey);
     image(tail, mouseX, mouseY);  //in your draw method
  
   }
  
 
   fill(232,16,16);
 ellipse (30,30,30,30);
  
   
  
  
}


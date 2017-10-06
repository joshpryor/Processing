void setup(){
  size (1000,500);
}
void draw(){
 
    background(0,255,255);
    fill(255,255,255);
  ellipse(250,250,400,200);
    ellipse(750,250,400,200);
    if(mousePressed){
  drawEyes();
    }

}
void drawEyes(){

    fill(0,0,0);
    ellipse(mouseX+500,mouseY,100,100);
    ellipse(mouseX,mouseY,100,100);
    if(mouseY<150,mouseY>350){
    
    }
}
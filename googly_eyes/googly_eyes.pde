void setup(){
  size (1000,500);
}
void draw(){
    background(255,255,255);
    if(mousePressed){
  drawEyes();
    }

}
void drawEyes(){
fill(255,255,255);
  ellipse(250,250,400,200);
    ellipse(750,250,400,200);
    fill(0,0,0);
    ellipse(mouseX+500,mouseY,100,100);
    ellipse(mouseX,mouseY,100,100);
    
}
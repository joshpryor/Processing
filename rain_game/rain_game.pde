int speed = 50;
int x = 50;
int y = 50;
int z = 50;
void setup( ){
size(1000,500);
  

}

void draw(  ) {
  background(#FFC82E);                  // /\/ / /\/ _/ /\



if (y == 500){
y = 50;
   x = (int) random(950);
}
  fill(0,0,255);
  stroke(0,0,0);
  ellipse(x,y+=speed,50,50);
fill(#868583);
rect(mouseX, 450, 100,50);
}





void drop (){
fill(100,140,200);
stroke(0,0,0);
ellipse(50,y++,50,50);

}


void newDrop (){
fill(100,140,200);
stroke(0,0,0);
ellipse(50,z++,50,50);

}
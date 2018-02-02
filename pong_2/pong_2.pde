int r = 500;
int f = 500;
int speed = 5;
int xDirection = 10;
int yDirection = 10;
int x = (int)random(1200);
int y = (int)random(1000);

//PImage backgroundImage;

void setup(){
size(1500, 1000);
//backgroundImage= loadImage("coolish.jpg");
}

void draw(){                                     //draw
background(#FFFFFF);
//image(backgroundImage, 0, 0);
//image(backgroundImage, 0, 0, width, height);
ball();
paddle();
if (x>width || x<25){
changeXDirection();      //  _/ O $ |-|
}


else if (intersects(x,y,mouseX,975,200) || y<25){
changeYDirection();      //  _/ O $ |-|
}
if (y>1010){
textSize(50);
fill(255,0,0);
text("GAME OVER", 30, 30); 


}
}                                                 //draw

void ball(){
fill(#C17400);
stroke(#FFFFFF);
ellipse(x+=xDirection,y+=yDirection,50,50);



}

void changeXDirection(){
xDirection =- xDirection;
}

void changeYDirection(){
yDirection =- yDirection;
}

void paddle(){
fill(#BFBFBF);
rect(mouseX ,975,200,25);
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}
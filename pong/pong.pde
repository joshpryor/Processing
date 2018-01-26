int r = 500;
int f = 500;
int speed = 5;
int xDirection = 5;
int yDirection = 5;
int x = (int)random(1200);
int y = (int)random(1000);
void setup(){
size(1000, 1000);

}

void draw(){
  background(#FFFFFF);
ball();
paddle();
if (x>975 || x<25){
changeXDirection();      //  _/ O $ |-|
}


else if (intersects(x,y,mouseX,975,200) || y<25){
changeYDirection();      //  _/ O $ |-|
}
if (x>1010){
textSize(50);
fill(#FF0000);
text("GAME OVER", 10, 30); 


}
}

void ball(){
fill(#8BFFFE);
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
fill(#89CDFF);
rect(mouseX,975,200,25);
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}
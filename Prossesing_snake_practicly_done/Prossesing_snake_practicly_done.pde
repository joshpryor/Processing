
// 1. Follow the recipe instructions inside the Segment class.

// The Segment class will be used to represent each part of the moving snake.

class Segment {

  //2. Create x and y member variables to hold the location of each segment.

int segX = 0;
int segY = 0;
  // 3. Add a constructor with parameters to initialize each variable.
Segment(int segX, int segY){
this.segX = segX;
this.segY = segY;
}

  // 4. Add getter and setter methods for both the x and y member variables.
  
  int getX(){
  return segX;
  }
   int getY(){
  return segY;
  }
  void setX(int segX){
  this.segX = segX;
  }
  void setY(int segY){
  this.segY = segY;
  }
  
}


// 5. Create (but do not initialize) a Segment variable to hold the head of the Snake
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
Segment head ;

int startingSize = 1;

int segmentSize = 10;

int theSize= 500;   //check the size command in the setup method//

int pointsPerFood = 1;

int foodCordenents = theSize / 10;

int startingCordenents = theSize / 2;
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



// 6. Create and initialize a String to hold the direction of your snake e.g. "up"

String direction = "up";

// 7. Create and initialize a variable to hold how many pieces of food the snake has eaten.
// give it a value of 1 to start.
int points = startingSize;



// 8. Create and initialize foodX and foodY variables to hold the location of the food.

// (Hint: use the random method to set both the x and y to random locations within the screen size (500 by 500).)

//int foodX = ((int)random(50)*10);
int foodX = ((int)random(foodCordenents)*10);
int foodY = ((int)random(foodCordenents)*10);
int headX = startingCordenents;
int headY = startingCordenents;
void setup() {

  // 9. Set the size of your sketch (500 by 500).

  size(500, 500);


  // 10. initialize your head to a new segment.

head = new Segment(headX,headY);
  // 11. Use the frameRate(int rate) method to set the rate to 20.
      
  frameRate(20);
  
}


void draw() {

background(0);


  //12. Call the manageTail, drawFood, drawSnake, move, and collision methods.
    manageTail();
  drawFood();

  drawSnake();
  move();
  collision(); 
  

}


// 13. Complete the drawFood method below. (Hint: each piece of food should be a 10 by 10 rectangle).

void drawFood() {
  fill(255,20,20);
  rect(foodX,foodY,segmentSize,segmentSize);
}


//14. Draw the snake head (use a 10 by 10 rectangle)

void drawSnake() {
fill(255,255,255);
rect(head.getX(),head.getY(),segmentSize,segmentSize);
  //test your code
}


// 15. Complete the move method below.

void move() {

  // 16. Using a switch statement, make your snake head move by 10 pixels in the correct direction.
  //This is an incomplete switch statement:
  
  switch(direction) {
  case "up":
  
    head.setY(head.getY()-segmentSize);
    break;
  case "down":
    head.setY(head.getY()+segmentSize);
    break;
  case "left":
   head.setX(head.getX()-segmentSize);
    break;
  case "right":
    head.setX(head.getX()+segmentSize);
    break;
  }
  
checkBoundaries();

  // 17. Call the checkBoundaries method to make sure the snake head doesn't go off the screen.
}


// 18. Complete the keyPressed method below. Use if statements to set your direction variable depending on what key is pressed.


  void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      direction = "up";
    } else if (keyCode == DOWN) {
     direction = "down";
    } 
    else if (keyCode == LEFT) {
     direction = "left";
    } 
    else if (keyCode == RIGHT) {
     direction = "right";
    } 
  }
  }
  
  



// 19. check if your head is out of bounds (teleport your snake head to the other side).L

void checkBoundaries() {
  int theX = head.getX() ;
  int theY = head.getY() ;
  if(theX < 0 &&  direction .equals("left")){
  head.setX(width - 10);
  }
  else if(theX > width - 10 &&  direction .equals("right")){
    head.setX(0);
  }
  else if(theY < 0 &&  direction .equals("up")){
  head.setY(height - 10);
  }
  else if(theY > height - 10 &&  direction .equals("down")){
  head.setY(0);
  }
}



//20. Make sure that the key for your current direction’s opposite doesn’t work(i.e. If you’re going up, down key shouldn’t work)



// 21. Complete the missing parts of the collision method below.

void collision() {
if(head.getY()==foodY && head.getX()==foodX){
foodX = ((int)random(width/10)*10);
foodY = ((int)random(height/10)*10);
points = points + pointsPerFood;
}
  // If the segment is colliding with a piece of food...
     // Increase the amount of food eaten and set foodX and foodY to new random locations.
}



/**
 
 ** Part 2: making the tail (the rest of the snake)
 
 **/

//  1. Create and initialize an ArrayList of Segments. (This will be your snake tail!)
ArrayList<Segment> tailList = new ArrayList();

// 2. Complete the missing parts of the manageTail method below and call it in the draw method.

void manageTail() {
checkTailCollision();
  //Call the drawTail and checkTailCollision methods.
drawTail();

  // Add a new Segment to your ArrayList that has the same X and Y as the head of your snake.
    tailList.add(new Segment(head.getX(),head.getY()) );
  // To keep your tail the right length:
  // while the tail size is greater than the number of food pieces eaten, remove the first Segment in your tail.
while(tailList.size() > points){
tailList.remove(0);

}

}
 Segment tails;
void drawTail() {


    // Draw a 10 by 10 rectangle for each Segment in your snake ArrayList.
for ( Segment tailSegment : tailList) {
  rect(tailSegment.getX(),tailSegment.getY(),segmentSize,segmentSize);
  }
}


// 3. Complete the missing parts of the bodyCollision method below.

void checkTailCollision() {

  // If your head has the same location as one of your segments...

//for(int i = 0;i < tailList.size() ; i+=1 ){
    
    for ( Segment tailSegment : tailList) {
  if(head.getX() == tailSegment.getX() && head.getY() == tailSegment.getY() ){
    points = 1;
  }
}
  // reset your food variable

  //Call this method at the beginning of your manageTail method.
}

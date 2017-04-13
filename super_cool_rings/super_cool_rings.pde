int i =400;
int counter = 1;
int j =250;

void setup(){
size (1000,500);



}
void draw(){
 drawBullseye(j,250);
 j++;
  drawBullseye(750,250);
  
}
void drawBullseye(int x,int y){
  for(int m=0; m<10;m++){
    if(i>9){

counter ++;
ellipse(x,y,i,i);
i-=7;
}}}


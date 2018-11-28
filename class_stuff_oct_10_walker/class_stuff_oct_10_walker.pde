float xpos;
float ypos;
int i;


//walker (rect)
//background size and color
//random num each frame
//random number between 0 and 4 each frame
void setup(){
  size(500, 500);
  xpos=width/2;
  ypos=height/2;
 frameRate(10);
}

void draw(){
  background(0);
   float randomNum= int(random(4));
float i;
i=randomNum;

if(i==0){
  ypos=ypos-20;
}else if (i==1){
  ypos=ypos+20;
}else if (i==2){
  xpos=xpos-20;
}else if (i==3){
  xpos=xpos+20;
}
 
  
  rect(xpos, ypos, 10, 10);
  
}
//if statement

//move up (minus y)

//move down (plus y)

//move left(minus x)

//move right(plus x)

//rect

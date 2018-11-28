float x = 10;
float xspeed = 3;
int xdirection  = 1;
float y = 10;
float yspeed = 2;
int ydirection = 1;

void setup(){

size(200, 200);


}
void draw(){
  background(255);
  
  
  x = x + xspeed * xdirection;
  if(x > width - 10 || x < 10){
   xdirection = -xdirection;
     } 
     y = y + yspeed * ydirection;
     if (y > height - 10 || y < 10){
   ydirection = -ydirection; 
  }
  ellipse(x, y, 20, 20);
  
  
  rectMode(CENTER);
  rect(width/2, height/2, 50, 50);
  

  

println(mouseX, mouseY);


  }
  
  

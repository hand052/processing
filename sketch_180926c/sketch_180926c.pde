float x = 10;
float speed = 3;
int direction  = 1;

void draw(){
  x = x + speed * direction;
  if(x > width - 10 || x < 10){
   direction = -direction;
  }
  ellipse(x, height/2, 20, 20);
}

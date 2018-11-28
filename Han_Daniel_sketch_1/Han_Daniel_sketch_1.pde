
float diameter = 100;
float speed = 5;

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, diameter, diameter);

  diameter += speed;  

if(diameter == 600) {
  speed = -speed;
}else{
  if(diameter == -600){
   speed = -speed; 
  }
}

}

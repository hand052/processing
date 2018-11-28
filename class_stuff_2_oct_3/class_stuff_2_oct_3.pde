void setup(){
  size(500, 500);
 rectMode(CENTER);
}


void draw(){
  background(0);
  
  println(hour(), minute(), second());
  
//  pushMatrix();
//  translate(width/2, height/2);
// rotate(radians(45));
//rect(0, 0, 100, 100);
//popMatrix();

rect(400, 400, 100, 100);
}

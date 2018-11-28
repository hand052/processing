float r1;
float r2;
float r3;


void setup(){
  size(400, 400);
}

void draw(){

  
}

void scene(){
  r1 = random(255);
  r2 = random(255);
  r3 = random(255);
    background(random(255), random(255), random(255));
  }
 

void faveColorText(String faveColor){
 text("my favorite color is " + faveColor, 100, 100); 
 
}
void drawRects(int numRects){
  println(numRects);
  for(int i = 0; i < numRects; i++) {
   rect(random(width), random(height), 10, 10); 
  }
  
}


void mousePressed(){
 drawRects(1000);
}

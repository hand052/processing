void setup(){
  size(500, 500);
}

void draw(){
  
}

void drawRects(int numRects){
  for (int i = 0; i<numRects; i++){
    rect(random(width), random(height), 10, 10);
  }
}

void mousePressed(){
  fill(255, 0, 0);
  drawRects(5000);
  fill(0, 255, 0);
  drawRects(500);
  fill(0, 0, 255);
  drawRects(50);
}

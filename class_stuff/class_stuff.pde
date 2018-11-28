void setup () {
size (600, 300);
}

void draw () {
background (255);

  //cactus
  noStroke();
  
  if(mouseX > width/3 && mouseX < width/3 * 2) {
    fill(255, 0, 0);
  } else {
   fill (131, 188, 62); 
  }
  
  //fill(255 - map(mouseX, 0, width, 0, 255), 188, map(mouseY, 0, height, 0, 255));
  
  
  ellipse (width/2, mouseY, 150, height - map(mouseY, 0, 300, 0, 100));
  
  //pot
fill(198, 111, 23);
rectMode (CENTER);
rect(width/2, height/2 + 50, 160, 20);
quad(width/2 - 70, height/2 + 60, width/2 + 70, height/2 + 60, width/2 + 50, height/2 + 150, width/2 - 50, height/2 + 150);

}

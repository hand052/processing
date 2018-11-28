void setup() {
size(500, 500);
background(10, 160, 230);

//cloud
fill(255);
stroke(255);
ellipse(155, 130, 90, 90);
ellipse(200, 160, 80, 80);
ellipse(210, 100, 80, 80);
ellipse(255, 160, 110, 110);
ellipse(255, 130, 110, 110);
ellipse(310, 140, 75, 75);

//rain
fill(180);
stroke(180);
ellipse(130, 190, 3, 5);
ellipse(330, 200, 3, 5);
ellipse(290, 230, 3, 5);
ellipse(170, 260, 3, 5);
ellipse(230, 280, 3, 5);
ellipse(190, 320, 3, 5);
ellipse(350, 265, 3, 5);
ellipse(280, 300, 3, 5);
ellipse(100, 300, 3, 5);
ellipse(130, 360, 3, 5);
ellipse(340, 350, 3, 5);
ellipse(255, 380, 3, 5);
ellipse(200, 430, 3, 5);
ellipse(100, 430, 3, 5);
ellipse(315, 470, 3, 5);

}


void draw(){

  println(mouseX +", " + mouseY);

}

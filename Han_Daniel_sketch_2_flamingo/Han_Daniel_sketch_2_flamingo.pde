void setup () {
background (60, 120, 160);
size (500, 500);

//head
fill (255, 150, 220);
stroke (255, 150, 220);
ellipse (210, 80, 90, 80);

//neck
quad (253, 95, 210, 100, 140, 240, 175, 245);

//body
ellipse (250, 250, 220, 150);
ellipse (420, 220, 30, 30);
quad (290, 180, 420, 205, 425, 235, 333, 300);


// beak
fill (209, 137, 23);
stroke (209, 137, 23);
arc(175, 105, 90, 90, radians(135), radians(270));

// eyes
fill (255);
stroke (255);
ellipse (210, 75, 25, 25);
fill (0);
stroke (0);
ellipse (210, 75, 10, 10);

//legs
fill (150);
stroke (150);
strokeWeight (4);
line (215, 323, 185, 440);
line (265, 325, 285, 440);

  
}

void draw(){

  println(mouseX +", " + mouseY);

}

color c;
color b;
color e;

Thing a1;


void setup() {
  size(500, 500);
  b= color(255);
  e= color(255);
  
  a1 = new Thing(190, 37);
  
}

void mouseClicked() {
  c=color(random(255), random(255), random(255));
  b=color(random(255), random(255), random(255));
  e=color(random(255), random(255), random(255));
}

void draw() {
  background(b);

  a1.drawThing();
}

class Thing {

  float xPos;
  float yPos;

  Thing(float tempX, float tempY) {
    xPos=tempX;
    yPos=tempY;
  }
  void drawThing() {
    fill(c);
    quad(35 + xPos, 138 + yPos, 
      0 + xPos, 193 + yPos, 
      5 + xPos, 263 + yPos, 
      15 + xPos, 198 + yPos);
    quad(85 + xPos, 138 + yPos, 
      120 + xPos, 193 + yPos, 
      115 + xPos, 263 + yPos, 
      105 + xPos, 198 + yPos);
    quad(40 + xPos, 263 + yPos, 
      25 + xPos, 333 + yPos, 
      50 + xPos, 403 + yPos, 
      37 + xPos, 333 + yPos);
    quad(80 + xPos, 263 + yPos, 
      95 + xPos, 333 + yPos, 
      70 + xPos, 403 + yPos, 
      83 + xPos, 333 + yPos);
    ellipse(60 + xPos, 213 + yPos, 75, 200);
    ellipse(60 + xPos, 63 + yPos, 125, 125);
    fill(e);
    quad(40 + xPos, 108 + yPos, 
      60 + xPos, 83 + yPos, 
      80 + xPos, 108 + yPos, 
      60 + xPos, 98 + yPos);
    ellipse(30 + xPos, 53 + yPos, 25, 25);
    ellipse(90 + xPos, 53 + yPos, 25, 25);
  }
}

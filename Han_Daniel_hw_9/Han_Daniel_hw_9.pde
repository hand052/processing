mountains m1;
mountains m2;
mountains m3;
mountains m4;

clouds c1;
clouds c2;
clouds c3;

trees t1;
trees t2;
trees t3;
trees t4;
trees t5;
trees t6;
trees t7;
trees t8;
trees t9;

void setup(){
size(600,500);
background(135,206,255);
fill(0,100,12);
  rect(0, 250, 600, 250);

m1= new mountains(20, 10);
m2= new mountains(-30, 40);
m3= new mountains(60, 50);
m4= new mountains(10, 80);

c1= new clouds(200, 50, 5);
c2= new clouds(20, 100, 0);
c3= new clouds(400, 80, 3);

t1= new trees(300, 200);
t2= new trees(530, 260);
t3= new trees(60, 280);
t4= new trees(400, 380);
t5= new trees(230, 300);
t6= new trees(100, 440);
t7= new trees(440, 290);
t8= new trees(280, 420);
t9= new trees(500, 400);
}

void draw(){
  stroke(1);
  
  sun();
  
  
 m1.mountain();
 m2.mountain();
 m3.mountain();
 m4.mountain();
 
t1.tree();
t2.tree();
t3.tree();
t4.tree();
t5.tree();
t6.tree();
t7.tree();
t8.tree();
t9.tree();
 
c1.cloud();
c2.cloud();
c3.cloud();
}

class mountains{
  
  float xPos;
  float yPos;
  
  
 mountains(float tempX, float tempY){
   xPos=tempX;
   yPos=tempY; 
  }

void mountain(){
  fill(230);
  triangle(100+xPos, 0+yPos, 0+xPos, 230+yPos, 200+xPos, 230+yPos);
}
}

class clouds{

  float xPos;
  float yPos;
  float zSize;
  
  clouds(float tempX, float tempY, float tempZ){
   xPos=tempX;
   yPos=tempY; 
   zSize=tempZ;
  }
  void cloud(){
    noStroke();
    fill(255, 255, 255, 210);
    ellipse(50+xPos, 10+yPos, 100+zSize, 10+zSize);
    ellipse(150+xPos, 10+yPos, 90+zSize, 10+zSize);
    ellipse(100+xPos, 5+yPos, 100+zSize, 10+zSize);
   
  }
}

void sun(){
fill(255, 255, 150);  
ellipse(480, 60, 50, 50);
}

class trees{
  
  float xPos;
  float yPos;
  
  trees(float tempX, float tempY){
   xPos=tempX;
   yPos=tempY; 
  }
  
void tree(){
fill(0, 150, 80);
triangle(15+xPos, 0+yPos, 0+xPos, 40+yPos, 30+xPos, 40+yPos);
fill(170,100,12);
rect(10+xPos, 40+yPos, 10, 20);
}
}

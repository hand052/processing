

float x, y;
float speed;
float radius =25;


wall w1, w2;
wall w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21;
wall b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13;
wall c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
wall d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12;
wall e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;
wall f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14;
wall h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14;
wall i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19;

gate g1,g2,g3,g4,g5,g6,g7,g8,g9;

gKey k1,k2,k3,k4,k5,k6,k7,k8;

boolean start, gate1, gate2,gate3,gate4,gate5,gate6,gate7,gate8,end;
boolean got1,got2,got3,got4,got5,got6,got7,got8,got9;


void setup() {
  size(800, 800);
  x= width/2;
  y= height/2;
  speed =15;
  noStroke();
//maze1
  w1= new wall(750, 0, 50, 350);
  w2= new wall(750, 450, 50, 350);
  
  w3= new wall(0, 300, 150, 50);
  w4= new wall(0, 450, 300, 50);
  w5= new wall(300, 450, 50, 200);
  w6= new wall(150, 600, 200, 50);
  w7= new wall(0,50,50,300);
  w8= new wall(0,0,200,50);
  w9= new wall(150, 150, 50, 200);
  w10= new wall(300, 0, 500, 50);
  w11= new wall(600, 750, 200, 50);
  w12= new wall(0, 750, 500, 50);
  w13= new wall(0, 450, 50, 350);
  w14= new wall(750, 50, 50, 700);
  w15= new wall(200, 150, 450, 50);
  w16= new wall(650, 300, 100, 50);
  w17= new wall(600, 300, 50, 350);
  w18= new wall(500, 600, 100, 50);
  w19= new wall(450, 300, 50, 350);
  w20= new wall(300, 300, 200, 50);
  w21= new wall(200, 300, 100, 50);
  //maze2
  b1= new wall(0,750,200,50);
  b2= new wall(300,750, 500, 50);
  b3= new wall(0,0, 50, 750);
  b4= new wall(50,0, 750, 50);
  b5= new wall(750,50, 50, 150);
  b6= new wall(750,300, 50, 450);
  b7= new wall(150,600,50,150);
  b8= new wall(200,600,450,50);
  b9= new wall(600,200,50,150);
  b10= new wall(300,450,450,50);
  b11= new wall(300,150,450,50);
  b12= new wall(150,150,50,350);
  b13= new wall(200,300,400,50);
  //maze2
  c1= new wall(0,0, 50, 200);
  c2= new wall(0,300, 50, 500);
  c3= new wall(50,0, 750, 50);
  c4= new wall(750,50, 50, 600);
  c5= new wall(50,750, 750, 50);
  c6= new wall(150,150, 50, 500);
  c7= new wall(300,150, 200, 50);
  c8= new wall(650,150, 100, 50);
  c9= new wall(500,50, 50, 150);
  c10= new wall(300,200, 50, 150);
  c11= new wall(450,300, 300, 50);
  c12= new wall(600,450, 50, 300);
  c13= new wall(450,350, 50, 300);
  c14= new wall(200,600, 150, 50);
  c15= new wall(300,450, 150, 50);
  //maze4
  d1=new wall(0,0, 50, 650);
  d2=new wall(0,750, 200, 50);
  d3=new wall(50,0, 750, 50);
  d4=new wall(750,50, 50, 700);
  d5=new wall(300,750, 500, 50);
  d6=new wall(50,150, 300, 50);
  d7=new wall(150,300, 50, 450);
  d8=new wall(200,600, 450, 50);
  d9=new wall(300,200, 50, 300);
  d10=new wall(600,150, 50, 500);
  d11=new wall(450,150, 50, 350);
  d12=new wall(500,450, 100, 50);
  //maze5
  e1=new wall(0,0, 200, 50);
  e2=new wall(300,0, 500, 50);
  e3=new wall(0,50, 50, 750);
  e4=new wall(750,50, 50, 750);
  e5=new wall(600,750, 200, 50);
  e6=new wall(50,750, 450, 50);
  e7=new wall(300,50, 50, 150);
  e8=new wall(150,150, 150, 50);
  e9=new wall(150,200, 50, 450);
  e10=new wall(200,600, 150, 50);
  e11=new wall(300,300, 50, 350);
  e12=new wall(450,150, 200, 50);
  e13=new wall(450,200, 50, 150);
  e14=new wall(350,300, 250, 50);
  e15=new wall(450,450, 50, 300);
  e16=new wall(600,300, 50, 350);
  //maze6
  f1=new wall(600,0, 200, 50);
  f2=new wall(0,0, 500, 50);
  f3=new wall(0,150, 50, 650);
  f4=new wall(750,50, 50, 750);
  f5=new wall(50,750, 700, 50);
  f6=new wall(50,150, 600, 50);
  f7=new wall(150,300, 50, 350);
  f8=new wall(200,600, 450, 50);
  f9=new wall(200,300, 100, 50);
  f10=new wall(300,300, 50, 200);
  f11=new wall(450,200, 50, 150);
  f12=new wall(300,450, 200, 50);
  f13=new wall(600,300, 50, 300);
  f14=new wall(500,300, 100, 50);
  //maze7
  h1=new wall(0,0,800,50);
  h2=new wall(0,750,800,50);
  h3=new wall(750,150,50,650);
  h4=new wall(0,50,50,400);
  h5=new wall(0,550,50,200);
  h6=new wall(600,50,50,250);
  h7=new wall(150,350,50,400);
  h8=new wall(150,50,50,200);
  h9=new wall(200,350,100,50);
  h10=new wall(300,150,50,500);
  h11=new wall(350,150,150,50);
  h12=new wall(450,300,200,50);
  h13=new wall(350,600,300,50);
  h14=new wall(450,450,300,50);
  //maze8
  i1=new wall(750,0,50,450);
  i2=new wall(750,550,50,250);
  i3= new wall(600, 0, 200, 50);
  i4= new wall(0, 0, 500, 50);
  i5= new wall(0, 50, 50, 750);
  i6= new wall(50, 750, 700, 50);
  i7= new wall(600, 50, 50, 600);
  i8= new wall(150, 150, 450, 50);
  i9= new wall(150, 600, 450, 50);
  i10= new wall(50, 300, 450, 50);
  i11= new wall(150, 450, 350, 50);
  i12= new wall(450, 350, 50, 100);
  //keys
  k1=new gKey(700,400);
  k2=new gKey(700,100);
  k3=new gKey(700,100);
  k4=new gKey(550,400);
  k5=new gKey(250,550);
  k6=new gKey(250,400);
  k7=new gKey(250,450);
  k8=new gKey(700,100);
  //gates
  g1=new gate(200, 0,100,50);
  g2=new gate(750,200,50,100);
  g3=new gate(750,650,50,100);
  g4=new gate(200,750,100,50);
  g5=new gate(500,750,100,50);
  g6=new gate(0,50,50,100);
  g7=new gate(0,450,50,100);
  g8=new gate(500,0,100,50);
  g9=new gate(500,750,100,50);
  
  start=true;
  gate1=false;
  gate2=false;
  
  got1=true;
  got2=true;
  got3=true;
  got4=true;
  got5=true;
  got6=true;
  got7=true;
  got8=true;
  got9=true;
}



void draw() {
  background(0);
  //player:
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  
  fill(255,255,0);
  textSize(40);
  textAlign(CENTER,BOTTOM);
  //text("You Win!!!",width/2,height/4);
   
  
if(start==true){
  w1.walls();
  w2.walls();
  }
   if(gate1==true){
    w3.walls();
    w4.walls();
    w5.walls();
    w6.walls();
    w7.walls();
    w8.walls();
    w9.walls();
    w10.walls();
    w11.walls();
    w12.walls();
    w13.walls();
    w14.walls();
    w15.walls();
    w16.walls();
    w17.walls();
    w18.walls();
    w19.walls();
    w20.walls();    
   if(got9==false){
   g9.walls();
   }   
   if(got1==false){
    g1.walls();
    k1.display();
   }if(x>k1.xPos-35&&x<k1.xPos+35&&y>k1.yPos-35&&y<k1.yPos+35){
   got1=true;
   }
  }
  
  if(gate2==true){
  b1.walls();
  b2.walls();
  b3.walls();
  b4.walls();
  b5.walls();
  b6.walls();
  b7.walls();
  b8.walls();
  b9.walls();
  b10.walls();
  b11.walls();
  b12.walls();
  b13.walls();
   if(got2==false){
    g2.walls();
    k2.display();
   }if(x>k2.xPos-35&&x<k2.xPos+35&&y>k2.yPos-35&&y<k2.yPos+35){
   got2=true;
   }
 }
 if(gate3==true){
 c1.walls();
 c2.walls();
 c3.walls();
 c4.walls();
 c5.walls();
 c6.walls();
 c7.walls();
 c8.walls();
 c9.walls();
 c10.walls();
 c11.walls();
 c12.walls();
 c13.walls();
 c14.walls();
 c15.walls();
    if(got3==false){
    g3.walls();
    k3.display();
   }if(x>k3.xPos-35&&x<k3.xPos+35&&y>k3.yPos-35&&y<k3.yPos+35){
   got3=true;
   }
 }
if(gate4==true){
  d1.walls();
  d2.walls();
  d3.walls();
  d4.walls();
  d5.walls();
  d6.walls();
  d7.walls();
  d8.walls();
  d9.walls();
  d10.walls();
  d11.walls();
  d12.walls();
    if(got4==false){
    g4.walls();
    k4.display();
   }if(x>k4.xPos-35&&x<k4.xPos+35&&y>k4.yPos-35&&y<k4.yPos+35){
   got4=true;
   }
}
if(gate5==true){
  e1.walls();
  e2.walls();
  e3.walls();
  e4.walls();
  e5.walls();
  e6.walls();
  e7.walls();
  e8.walls();
  e9.walls();
  e10.walls();
  e11.walls();
  e12.walls();
  e13.walls();
  e14.walls();
  e15.walls();
  e16.walls();
    if(got5==false){
    g5.walls();
    k5.display();
   }if(x>k5.xPos-35&&x<k5.xPos+35&&y>k5.yPos-35&&y<k5.yPos+35){
   got5=true;
   }
}
if(gate6==true){
  f1.walls();
  f2.walls();
  f3.walls();
  f4.walls();
  f5.walls();
  f6.walls();
  f7.walls();
  f8.walls();
  f9.walls();
  f10.walls();
  f11.walls();
  f12.walls();
  f13.walls();
  f14.walls();
    if(got6==false){
    g6.walls();
    k6.display();
   }if(x>k6.xPos-35&&x<k6.xPos+35&&y>k6.yPos-35&&y<k6.yPos+35){
   got6=true;
   }
}
if(gate7==true){
  h1.walls();
  h2.walls();
  h3.walls();
  h4.walls();
  h5.walls();
  h6.walls();
  h7.walls();
  h8.walls();
  h9.walls();
  h10.walls();
  h11.walls();
  h12.walls();
  h13.walls();
  h14.walls();
    if(got7==false){
    g7.walls();
    k7.display();
   }if(x>k7.xPos-35&&x<k7.xPos+35&&y>k7.yPos-35&&y<k7.yPos+35){
   got7=true;
   }
}
if(gate8==true){
  i1.walls();
  i2.walls();
  i3.walls();
  i4.walls();
  i5.walls();
  i6.walls();
  i7.walls();
  i8.walls();
  i9.walls();
  i10.walls();
  i11.walls();
  i12.walls();
if(got8==false){
    g8.walls();
    k8.display();
   }if(x>k8.xPos-35&&x<k8.xPos+35&&y>k8.yPos-35&&y<k8.yPos+35){
   got8=true;
   }
}
if(end==true){
  w1.walls();
  w2.walls();
  fill(255,255,0);
  text("You Win!!!",width/2,height/4);
  }

  //drawWalls();
if(x>820&&y>350&&y<450){
x=10;
y=400;
start=false;
gate1=true;
got1=false;
got9=false;
}
if(y<-20&&x>200&&x<300){
x=250;
y=790;
gate1=false;
gate2=true;
got2=false;
got9=true;
}
if(x>820&&y>200&&y<300){
x=10;
y=250;
gate2=false;
gate3=true;
got3=false;
  }
if(x>820&&y>650&&y<750){
x=10;
y=700;
gate3=false;
gate4=true;
got4=false;
  }
  if(y>820&&x>200&&x<300){
x=250;
y=10;
gate4=false;
gate5=true;
got5=false;
  }
    if(y>820&&x>500&&x<600){
x=550;
y=10;
gate5=false;
gate6=true;
got6=false;
  }
    if(x<-20&&y>50&&y<150){
x=790;
y=100;
gate6=false;
gate7=true;
got7=false;
  }
    if(x<-20&&y>450&&y<550){
x=790;
y=500;
gate7=false;
gate8=true;
got8=false;
  }
  if(y<-20&&x>500&&x<600){
x=550;
y=790;
w21.walls();
gate8=false;
gate1=true;
  }
    if(x<-20&&y>350&&y<450){
x=790;
y=400;
gate1=false;
end=true;
//fill(255,255,0);
//textSize(40);
//textAlign(CENTER,BOTTOM);
//text("You Win!!!",width/2,height/4);
  }
}




void keyPressed() {

  if (key=='w') {
    //up
    y = y-speed;
  }
  if (key=='a') {
    //left
    x = x-speed;
  }
  if (key=='d') {
    //right
    x = x+speed;
  }
  if (key=='s') {
    y = y+speed;
  }
}



class wall {

  float xPos;
  float yPos;
  float xSize;
  float ySize;

  wall(float tempX, float tempY, float tempSX, float tempSY) {
    xPos=tempX;
    yPos=tempY;
    xSize=tempSX;
    ySize=tempSY;
  }
  void walls() {
    fill(255);
    rectMode(CORNER);
    rect(xPos, yPos, xSize, ySize);


    //wall block

    //right side
    if ((x<(xPos+xSize)+radius && (x>(xPos+xSize-10))) &&  ( y>yPos && y < yPos+ySize ) ) {
      x= (xPos+xSize)+radius;
    }
    //left side
    else if ((x>xPos-radius && (x<(xPos+10)) ) && ( y>yPos && y < yPos+ySize)) {
      x= xPos-radius;
    }
    //top side
    else if ((y>yPos-radius && (y<yPos+10))&& (x>xPos && x<xPos+xSize)) {
      y=yPos-radius;
    } 
    //bottom side
    else if ((y<(yPos+ySize)+radius && (y>(yPos+ySize-10)))&& (x>xPos && x<xPos+xSize)) {
      y=(yPos+ySize)+radius;
    }
  }
  
 
}

 class gKey{
  float xPos;
  float yPos;
  boolean got;

  gKey(float tempX, float tempY) {
    xPos=tempX;
    yPos=tempY;
    got=false;
  }
  void display(){
  fill(255,255,0);
  
  
  if(got==false){
  ellipse(xPos,yPos, 20,20);
 
    //if(x>xPos-35&&x<xPos+35&&y>yPos-35&&y<yPos+35){
    //got=true;
        //}
      }
    }
  }
  
  class gate{
  float xPos;
  float yPos;
  float xSize;
  float ySize;


  gate(float tempX, float tempY, float tempSX, float tempSY) {
    xPos=tempX;
    yPos=tempY;
    xSize=tempSX;
    ySize=tempSY;
   
  }
  void walls() {
    fill(255,255,0);
    rectMode(CORNER);
 
    rect(xPos, yPos, xSize, ySize);
   
  
    //wall block

    //right side
    if ((x<(xPos+xSize)+radius && (x>(xPos+xSize-10))) &&  ( y>yPos && y < yPos+ySize ) ) {
      x= (xPos+xSize)+radius;
    }
    //left side
    else if ((x>xPos-radius && (x<(xPos+10)) ) && ( y>yPos && y < yPos+ySize)) {
      x= xPos-radius;
    }
    //top side
    else if ((y>yPos-radius && (y<yPos+10))&& (x>xPos && x<xPos+xSize)) {
      y=yPos-radius;
    } 
    //bottom side
    else if ((y<(yPos+ySize)+radius && (y>(yPos+ySize-10)))&& (x>xPos && x<xPos+xSize)) {
      y=(yPos+ySize)+radius;
      
      }
    }
  }
    

import ddf.minim.*;

Minim minim;

AudioPlayer bip;

float ballX;
float xspeed = 3;
int xdirection  = 1;
float y;
float yspeed = 3;
int ydirection = 1;

float paddleHeight = 80;
float paddleHeight2 = 80;
float paddleY;
float paddleX;

float paddle2Y;
float paddle2X;

boolean paddle1up;
boolean paddle1down;

boolean paddle2up;
boolean paddle2down;

int score1=0;
int score2=0;

void setup(){
rectMode(CENTER);
size(600,400);

paddleY = height/2;
paddleX = 560;

paddle2Y = height/2;
paddle2X = 40;

paddle1up=false;
paddle1down=false;
paddle2up=false;
paddle2down=false;

ballX = width/2;

y = height/2;


 minim=new Minim(this);
 bip=minim.loadFile("bip.wav");

}

void draw(){
  
  background(0);
  
  textAlign(CENTER);
  textSize(40);
  text(score1 + " : " + score2, width/2, 50);
   
       if(paddle1up==true){
      paddleY= paddleY-5;
      }else{if(paddle1down==true){
      paddleY= paddleY+5;
        }
      }
      
      if(paddle2up==true){
      paddle2Y= paddle2Y-5;
      }else{
      if(paddle2down==true){
      paddle2Y= paddle2Y+5;
       }
    }
  
  
  //paddle=rect();
  
  ballX = ballX + xspeed * xdirection;
  if(ballX > 545 && y<paddleY+paddleHeight/2 && y>paddleY-paddleHeight/2 && ballX >= paddleX-15 && ballX <= paddleX+15){
  
   xdirection = -xdirection;
   
    bip.play();
    bip.rewind();
   
     } 
     
     
     if(ballX < 55 && y<paddle2Y+paddleHeight2/2 && y>paddle2Y-paddleHeight2/2 && ballX >= paddle2X-15 && ballX <= paddle2X+15){
  
   xdirection = -xdirection;
   
   bip.play();
   bip.rewind();
   
     } 
     
     
     
     y = y + yspeed * ydirection;
     if (y > height - 10 || y < 10){
   ydirection = -ydirection; 
  }
  
  
  if(ballX>width+100){
    
    ballX = width/2;
    y = height/2;
    score1++;
    paddleHeight2 = paddleHeight2+10;
    paddleHeight = paddleHeight-10;
  }
  
  if(ballX<-100){
    
    ballX = width/2;
    y = height/2;
    score2++;
    paddleHeight2 = paddleHeight2-10;
    paddleHeight = paddleHeight+10;
  
  }
  
  if(paddleHeight==0){
  
    xspeed=0;
    yspeed=0;
    textAlign(CENTER, TOP);
  textSize(40);
  text("Player 1 Win!", width/2, height/2);
    
  }
  
  if(paddleHeight2==0){
  
    xspeed=0;
    yspeed=0;
    textAlign(CENTER, TOP);
  textSize(40);
  text("Player 2 Win!", width/2, height/2);
    
  }
  
  
  ellipse(ballX, y, 20, 20);
  
  
  
  rect(paddleX, paddleY, 10, paddleHeight);
  rect(paddle2X, paddle2Y, 10, paddleHeight2);
  
}

void keyPressed(){

  if(keyCode == UP){
  paddle1up=true;
  }else{if(keyCode == DOWN){
  paddle1down=true;
    }
  }
  
  if(key == 'W' || key == 'w'){
  paddle2up=true;
  }else{
  if(key== 'S' || key== 's'){
  paddle2down=true;
    }
  }
}

void keyReleased(){

   if(keyCode == UP){
  paddle1up=false;
  }else{if(keyCode == DOWN){
  paddle1down=false;
    }
  }
  
  if(key == 'W' || key == 'w'){
  paddle2up=false;
  }else{
  if(key== 'S' || key== 's'){
  paddle2down=false;
    }
  }
}

  

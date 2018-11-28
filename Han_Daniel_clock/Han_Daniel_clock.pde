float y;

void setup(){
  size(300, 400);
  rectMode(CENTER);
}

void draw(){
  background(255);
  //h,m,s sections
  line(width/3, 0, width/3, height);
  line(width * 2/3, 0, width * 2/3, height);
  
  //hours lines
  for(y=0; y<height;y =y+height*1/24){
    line(0 , y ,width/3,y);
  }
  //min and sec lines
  for(y=0; y<height;y =y+height*1/60){
    line(width/3 , y ,width,y);
  }
  //line(width/3,height/60, width, height/60);
  //line(width/3,height* 2/60, width, height* 2/60);
  //line(width/3,height* 3/60, width, height* 3/60);
  //line(width/3,height* 4/60, width, height* 4/60);
  //line(width/3,height* 5/60, width, height* 5/60);
  //line(width/3,height* 6/60, width, height* 6/60);
  //line(width/3,height* 7/60, width, height* 7/60);
  //line(width/3,height* 8/60, width, height* 8/60);
  //line(width/3,height* 9/60, width, height* 9/60);
  //line(width/3,height* 10/60, width, height* 10/60);
  //line(width/3,height* 11/60, width, height* 11/60);
 
 //hour
 
 fill(255, 0, 0);
 rect(width/6, 0, width/3, (height/24)*hour()*2);
  
 
//minute
int mS = height/60;
fill(0, 255, 0);
rect(width/2, 0, width/3, mS*minute()*2);

//second
int sS = height/60;
fill(0, 0, 255);
rect(width*5/6, 0, width/3, (height/60)*second()*2);
 
 
}

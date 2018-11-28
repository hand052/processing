int randomRectColor;
int firstArcColor;
int secondArcColor;
int arcDirection;


void setup() 
{
  size(500, 500);
  noStroke();
  
  
}


void draw()
{
  
  
  
}

void mousePressed(){
  
   for(int i = 0; i < 5; i++) {
     for(int j = 0; j < 5; j++) {
    
    
      //background rect
      //fill(random(255), random(255), random(255));
      randomRectColor = int(random(0, 3));
      //println(randomRectColor);
      if(randomRectColor == 0){
        fill(255);
      } else if(randomRectColor == 1){
       fill(0, 255, 204); 
      } else if(randomRectColor == 2){
       fill(0, 0, 255); 
      }
     rect(100*i, 100*j, 100, 100);
     
    //println(arcDirection);
    
     
     //arcs
     firstArcColor = int(random(0, 4));
     //println(firstArcColor);
     if(firstArcColor == 0){
       fill(0, 0, 255);
     }else if(firstArcColor == 1){
       fill(0,255, 204);
     }else if(firstArcColor == 2){
       fill(0, 0, 102);
     }else if(firstArcColor == 3){
       fill(255, 80, 80);
     }
     
     arcDirection = int(random(0,4));
    if(arcDirection == 0){
       arc(i*100+50, j*100+50, 100, 100, radians(180), radians(360)); 
    }else if(arcDirection ==1){
      arc(i*100+50, j*100+50, 100, 100, radians(90), radians(270)); 
     }else if(arcDirection ==2){
       arc(i*100+100, j*100+50, 100, 100, radians(90), radians(270)); 
     }else if(arcDirection ==3){
       arc(i*100+50, j*100+100, 100, 100, radians(180), radians(360)); 
     }
       
     secondArcColor = int(random(0, 4));
     //println(secondArcColor);
     if(secondArcColor == 0){
       fill(0, 0, 255);
     }else if(secondArcColor == 1){
       fill(0,255, 204);
     }else if(secondArcColor == 2){
       fill(0, 0, 102);
     }else if(secondArcColor == 3){
       fill(255, 80, 80);
     }
     
     if(arcDirection == 0){
       arc(i*100+50, j*100+50, 100, 100, radians(0), radians(180)); 
     }else if(arcDirection ==1){
      arc(i*100+50, j*100+50, 100, 100, radians(270), radians(450)); 
     }else if(arcDirection ==2){
       arc(i*100+0, j*100+50, 100, 100, radians(270), radians(450)); 
     }else if(arcDirection ==3){
       arc(i*100+50, j*100+0, 100, 100, radians(0), radians(180)); 
     }
   }
  }
}

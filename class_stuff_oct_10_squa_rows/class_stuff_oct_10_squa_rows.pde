void setup(){
  size(500, 500);
  background (0);
   for(int i = 0; i<15; i++){
      for(int j = 0; j<6; j++){
        fill(random(255), random(255), random(255));
        rect(i * 30, j *30, 20, 20);
    }
  }
}

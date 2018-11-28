void setup () {
 size (500, 500);
  for (int i = 0; i < 10; i++) {
    println ("hello" + int(i + 1));
    //rect(i + 20, 50, 10, 50);
  }
}

void draw () { 
background (255);
 for (int i = 0; i < 15; i++) {
    for(int j = 0; j < 10; j++) {
    rect(i*20 + 20, j * 20+ 20, 10, 10);
    }
 }
}

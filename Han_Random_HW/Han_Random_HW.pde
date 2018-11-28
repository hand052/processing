size (500, 500);
background (0);
for (int i = 0; i < 400; i++) {
  float r = random(100);
  stroke(i/r+r*i, i+r/i*i, r/i*r/i);
  fill (i/r+r*i, i+r/i*i, r/i*r/i);
  rect (i/r*r, r*i/i*r, 8, 8);
}

void ship1() {
  pushMatrix();
  translate(105, 80);
  stroke(255, 255, 0,150);
  noFill();
  
  beginShape();
  vertex(5, 5);
  vertex(190, 20);
  vertex(240, 90);
  vertex(140, 110);
  vertex(5, 5);
  vertex(155, 40);
  vertex(240, 90);
  vertex(155, 40);
  vertex(190, 20);
  vertex(155, 40);
  vertex(140, 110);
  //fin
  vertex(54, 42);
  vertex(28, 36);
  vertex(5, 5);
  //speedStripes
  vertex(151, 58);
  vertex(5, 5);
  vertex(144, 85);
  endShape();
  popMatrix();
}


void ship2() {
  pushMatrix();
  translate(110, 80);

  stroke(0, 255, 255,150);
  noFill();
  beginShape();
  vertex(5, 5);
  vertex(190, 65);
  vertex(220, 90);
  vertex(140, 110);
  vertex(5, 5);
  vertex(155, 70);
  vertex(155, 70);
  vertex(190, 65);
  vertex(155, 70);
  vertex(140, 110);
  //fin
  vertex(54, 42);
  vertex(28, 36);
  vertex(5, 5);
  endShape();
  popMatrix();
}

void ship3() {
  pushMatrix();
  translate(110, 80);
  stroke(255, 0, 0,150);
  noFill();

  beginShape();
  vertex(5, 5);
  vertex(160, 35);
  vertex(220, 90);
  vertex(140, 110);
  vertex(5, 5);
  vertex(160, 35);
  vertex(155, 70);
  vertex(54, 42);
  vertex(28, 36);
  vertex(5, 5);
  vertex(155, 70);
  vertex(140, 110);
  endShape();

  popMatrix();
}
void gfx(){
  pushMatrix();
  translate(90,150);
  stroke(127,150);
  noFill();
  beginShape();
  vertex(115,10);
  vertex(200,55);
  vertex(115,210);
  vertex(30,55);
  vertex(115,10);
  vertex(105,50);
  vertex(115,210);
  vertex(105,50);
  vertex(200,55);
  vertex(105,50);
  vertex(105,50);
  vertex(30,55);
  endShape();
  popMatrix();
}
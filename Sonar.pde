void sonar(float[] x){//FUNCTION TAKES IN FLOAT ARRAY CONTAINING WINDOW COORDINATES
  background(0);
  //Below code moves the origin to center of screen and rotates at speed i
  pushMatrix();
  translate(x[0], x[1]);
  rotate(radians(speed));
  //drawing for center point of scanner
  noStroke();
  fill(0,255,255,25);
  
  beginShape();
  vertex(-10,0);
  vertex(10, 0);//width used for y as thats the largest part of screen
  vertex(0, -15);
  endShape(CLOSE);
  //drawing scanning "beam"
  noStroke();
  fill(0,255,225,25);
  beginShape();
  vertex(0,0);
  vertex(-width/3, -width);//width used for y as thats the largest part of screen
  vertex(width/3, -width);
  endShape(CLOSE);
  //resets origin for other drawings
  popMatrix();//resets origin for other drawings
  if(speed == 359){
  speed=0;}
  else{speed+=1;}//increments rotation/scanning speed
}
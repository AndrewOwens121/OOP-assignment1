//Student Number : C14363641
void setup() {
  background(0);
  size(800, 600);
}

void draw() {
  Overlay();
  float[] windowCoordinates = Overlay();//Overlay Method passes back float array containing coordinates of window
  stroke(255,0,0);
  line(460,0,460,height);
  line(0,180,width,180);
  rect(460-180,180-120,350,230);//rect centerX-(windowwidth/2) , center Y -(windowHeight/2)
}
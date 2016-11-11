//Student Number : C14363641
void setup() {
  background(0);
  size(800, 600);
}
int speed=0;
void draw() {
  
  float[] windowCoordinates = Overlay();//Overlay Method passes back float array containing coordinates of window
  sonar(windowCoordinates);
  Overlay();
  stroke(255,0,0);
  //WINDOW CENTERPOINT LINES
  //line(windowCoordinates[0],0,windowCoordinates[0],height);
  //line(0,windowCoordinates[1],width,windowCoordinates[1]);
  println(windowCoordinates);
 
}
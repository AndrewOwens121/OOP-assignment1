//Student Number : C14363641
import controlP5.*;
//CLASS DECLARE
ControlP5 speedSlider;

void setup() {
  frameRate(60);
  background(0);
  size(800, 600);
  //FONT
  PFont font;
  font = loadFont("DefconZero3DItalic-48.vlw");
  textFont(font, 36);
  //CLASS INITIALIZE
  speedSlider = new ControlP5(this);
  speedSlider.addSlider("SonarSpeed", 0.5, 2.5, 1, 400, 525, 275, 30);
}
float linewidth=0;
float line=0;
float[] windowCoordinates;
float SonarSpeed=1.1;
float Speed=1;
//int speed=0;
void draw() {

  println(windowCoordinates);
  //println(s);
  // Overlay();
  windowCoordinates = Overlay();//Overlay Method passes back float array containing coordinates of window
  sonar(windowCoordinates);
  Overlay();

  stroke(255, 0, 0);
  //WINDOW CENTERPOINT LINES
  //line(windowCoordinates[0],0,windowCoordinates[0],height);
  //line(0,windowCoordinates[1],width,windowCoordinates[1]);
  //println(windowCoordinates);
}
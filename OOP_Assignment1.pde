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
  PFont font1;
  font1 = createFont("Georgia", 8);
  font = loadFont("DefconZero3DItalic-48.vlw");
  textFont(font, 36);
  //CLASS INITIALIZE
  speedSlider = new ControlP5(this);
  speedSlider.addSlider("SonarSpeed_MHz", 0.5, 2.5, 1, 400, 525, 275, 30)
  .setColorForeground(color(0, 255, 255,55))
  .setColorBackground(color(80, 125, 225,55));
}
//VARIABLES
int bCount=7;//number of Buttons
int spacing = height/bCount-(bCount/10);
float linewidth=0;
float line=0;
float[] windowCoordinates;
float SonarSpeed_MHz=1;
float Speed=1;
//windowCoordinates[9]=4;




void draw() {
  //println(windowCoordinates);
  //println(frameRate);
  // Overlay();
  windowCoordinates = Overlay();//Overlay Method passes back float array containing coordinates of window
  sonar(windowCoordinates);
  Overlay();

  buttons(windowCoordinates);

  stroke(255, 0, 0);
  //WINDOW CENTERPOINT LINES
  //line(windowCoordinates[0],0,windowCoordinates[0],height);
  //line(0,windowCoordinates[1],width,windowCoordinates[1]);
  //println(windowCoordinates);
}
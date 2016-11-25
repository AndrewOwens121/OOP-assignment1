//Student Number : C14363641
import controlP5.*;

//CLASS DECLARE
ControlP5 speedSlider;

//ARRAYLIST DECLARATION
ArrayList<Ship> ship_arraylist = new ArrayList<Ship>();


void setup() {

  frameRate(60);
  background(0);
  size(800, 600);

  //ARRAYLIST INITIALIZE
  ship_arraylist = new ArrayList<Ship>();

  //CLASS INITIALIZE
  speedSlider = new ControlP5(this);
  speedSlider.addSlider("SonarSpeed_MHz", 0.5, 2.5, 1, 400, 525, 275, 30)
    .setColorForeground(color(0, 255, 255, 55))
    .setColorBackground(color(80, 125, 225, 55));
  //LOAD DATA 
  loadData();
}//end Setup()

//VARIABLES
int GameOver=0;//switches to 1 if ships reach radar without being killed
int bCount=7;//number of Buttons
int spacing = height/bCount-(bCount/10);
float linewidth=0;
float line=0;
int shipCalled;
float SonarSpeed_MHz=1;
float Speed=1;
boolean[] toggled = new boolean[7];
float[] windowCoordinates;

void draw() {
  //println(frameRate);
  windowCoordinates = Overlay();//Overlay Method passes back float array containing coordinates of window 
  sonar(windowCoordinates);
  Overlay();
  Header();
  ShipData();
  stroke(255, 0, 0);
  
  println("X:", mouseX);
  println("Y:", mouseY);
}//end Draw()
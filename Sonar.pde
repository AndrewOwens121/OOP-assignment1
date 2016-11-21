void sonar(float[] x) {//FUNCTION TAKES IN FLOAT ARRAY CONTAINING WINDOW COORDINATES
  background(0);
  PFont font1;
  font1 = createFont("Georgia", 8);
  textFont(font1, 12);
 //GRID
     pushMatrix();                                                                                        
  translate(x[0]-x[2]/2, x[1]-x[3]/2+5); 
  stroke(100, 200, 200, 30);

  for (int i=0; i<550; i+=15) {
    //Horizontal lines
    line(0, i, 400, i);//horizontal grid lines
    line(i, 0, i, 600);//verical grid lines
  }
popMatrix();

  float x1;
  float y1;

  for (int i=0; i<ship_arraylist.size(); i++)//loops through entire list of ships
  { 
    x1=ship_arraylist.get(i).ScreenPos.x;
    y1=ship_arraylist.get(i).ScreenPos.y;
    String shipName=ship_arraylist.get(i).ShipName;
    stroke(255, 0, 0);
    if(ship_arraylist.get(i).Alive ==1 ){
    ellipse(x1, y1, 10, 10);
    stroke(255);
    //println(x1,y1);
    //text(shipName, x1+10,y1+5);
    }
  }
  //MOVE ORIGIN TO CENTER OF WINDOW AND ROTATE SONAR
  pushMatrix();
  translate(x[0], x[1]);
 
  rotate(radians(Speed));
  //SONAR DRAWING
  noStroke();
  fill(0, 255, 255, 100);

  beginShape();
  vertex(-10, 0);
  vertex(10, 0);
  vertex(0, -15);
  endShape(CLOSE);

  noStroke();
  fill(0, 255, 225, 50);
  beginShape();
  vertex(0, 0);
  vertex(-width/3, -width);
  vertex(width/3, -width);
  endShape(CLOSE);

  //RED LINE SCANNER
  stroke(255, 0, 0);
  line(linewidth*-1, line, linewidth, line);
  line+=-2;
  linewidth+=0.65;
  if (line <= -240)
  {
    line=0;
    linewidth=0;
  }
  //resets origin for other drawings
  popMatrix();


  if (SonarSpeed_MHz >= 359) {
    SonarSpeed_MHz=0;
  } else {
    Speed= Speed+SonarSpeed_MHz;
  }//increments rotation/scanning speed

}
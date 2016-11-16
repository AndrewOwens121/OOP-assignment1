void sonar(float[] x) {//FUNCTION TAKES IN FLOAT ARRAY CONTAINING WINDOW COORDINATES
  background(0);
  PFont font1;
  font1 = createFont("Georgia", 8);
  textFont(font1, 12);
  pushMatrix();
                                                                                             //GRID
  translate(x[0]-x[2]/2, x[1]-x[3]/2+5); 
  stroke(100, 200, 200, 30);

  for (int i=0; i<550; i+=15) {
    //Horizontal lines
    line(0, i, 400, i);
  }
  for (int i=0; i<550; i+=15) {
    //Vertical lines
    line(i, 0, i, 600);
  }
  
                                                                                            //SHIP LOCATIONS
  int tablecount =table.getRowCount();//get number of records in data file for loop
  //println(tablecount);

  int x1;
  int y;
  float mapX;
  float mapY;

  int lowestX=0;//variable for holding the lowest x value
  int lowestY=0;//varable for holding the lowest y value
  int highestX=0;//variable for holding the highest x value
  int highestY=0;//varable for holding the highest y value
  int temp1=highestX;
  int temp2=highestY;
  
//FOR LOOPS TO GET HIGHEST AND LOWEST X AND Y COORDINATES FROM CSV FOR MAPPING USE
  for (int i = 0; i < table.getRowCount();i++) {
 
    //Gets Highest X
    if (table.getInt(i, "xPos") > highestX) { 
      highestX=table.getInt(i,"xPos");
    }// end if
        //Gets Highest Y
    if (table.getInt(i, "yPos") > highestY) { 
      highestY=table.getInt(i,"yPos");
    }// end if
            //Gets Lowest X
    if (table.getInt(i, "xPos") < temp1) { 
      lowestX=table.getInt(i,"xPos");
      temp1=lowestX;
    }// end if
              //Gets Lowest Y
    if (table.getInt(i, "yPos") < temp2) { 
      lowestY=table.getInt(i,"yPos");
      temp2=lowestY;
    }// end if
  }
println("highestx =" , highestX);
println("highesty =" , highestY);
println("lowestx =" , lowestX);
println("lowesty =" , lowestY);



  for (int i=0; i<tablecount; i++)//loops through entire list of ships
  { 
    x1=table.getInt(i, "xPos");
    y=table.getInt(i, "yPos");
    String shipName=table.getString(i, "ShipName");
    mapX=map(x1, lowestX, highestX, 0, x[2]);
    mapY=map(y, lowestY, highestY, 0, x[3]);
    stroke(255, 0, 0);
    if( table.getInt(i, "Alive") ==1 ){
    ellipse(mapX, mapY, 10, 10);
    stroke(255);
    text(shipName, mapX+10,mapY+5);
    }
  }
  popMatrix();

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

  //}
}
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
    line(0, i, 400, i);//horizontal grid lines
    line(i, 0, i, 600);//verical grid lines
  }

 //ellipse(0,0,50,50);

  float x1;
  float y1;
  float mapX;
  float mapY;

  float lowestX=0;//variable for holding the lowest x value
  float lowestY=0;//varable for holding the lowest y value
  float highestX=0;//variable for holding the highest x value
  float highestY=0;//varable for holding the highest y value
  float temp1=highestX;
  float temp2=highestY;
  
//FOR LOOPS TO GET HIGHEST AND LOWEST X AND Y COORDINATES FROM CSV FOR MAPPING USE
  for (int i = 0; i < ship_arraylist.size();i++) {
 
    //Gets Highest X
    
    if (ship_arraylist.get(i).xPos > highestX) { 
      highestX= ship_arraylist.get(i).xPos;
    }// end if
        //Gets Highest Y
    if (ship_arraylist.get(i).yPos > highestY) { 
      highestY=ship_arraylist.get(i).yPos;
    }// end if
            //Gets Lowest X
    if (ship_arraylist.get(i).xPos < temp1) { 
      lowestX=ship_arraylist.get(i).xPos;
      temp1=lowestX;
    }// end if
              //Gets Lowest Y
    if (ship_arraylist.get(i).yPos < temp2) { 
      lowestY=ship_arraylist.get(i).yPos;
      temp2=lowestY;
    }// end if
  }

  for (int i=0; i<ship_arraylist.size(); i++)//loops through entire list of ships
  { 
    x1=ship_arraylist.get(i).xPos;
    y1=ship_arraylist.get(i).yPos;
    String shipName=ship_arraylist.get(i).ShipName;
    mapX=map(x1, lowestX, highestX, 0, x[2]);
    mapY=map(y1, lowestY, highestY, 0, x[3]);
    stroke(255, 0, 0);
    if(ship_arraylist.get(i).Alive ==1 ){
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
//test
 //ellipse(0,0,50,50);
 
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
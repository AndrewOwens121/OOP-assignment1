void sonar(float[] x) {
  {//FUNCTION TAKES IN FLOAT ARRAY CONTAINING WINDOW COORDINATES
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
      if (Speed>ship_arraylist.get(i).CompleteAngle-18.5 && Speed<ship_arraylist.get(i).CompleteAngle+18.5 &&ship_arraylist.get(i).Alive==1)
      {
        stroke(255, 0, 0);
        //CALCULATE DISTANCE BETWEEN SHIP AND RADAR
        int dist=int(dist(550, 280, ship_arraylist.get(i).ScreenPos.x, ship_arraylist.get(i).ScreenPos.y));
        text("Dist:" + dist+ "Meters", x1+10, y1+5);
        ellipse(x1, y1, 10, 10);
        stroke(255, 0, 0);
      } else {
        stroke(255, 0, 0, 60);
      }
      if (ship_arraylist.get(i).Alive ==1 ) {
        ellipse(x1, y1, 10, 10);
      }
      //Code for ships moving towards Sonar
      if (frameCount%60==0 && dist(ship_arraylist.get(i).ScreenPos.x, ship_arraylist.get(i).ScreenPos.y, 550, 280)>=20) {
        if (ship_arraylist.get(i).Quadrant==0) {
          ship_arraylist.get(i).ScreenPos.x-=ship_arraylist.get(i).Xinc;
          ship_arraylist.get(i).ScreenPos.y+=ship_arraylist.get(i).Yinc;
        }
        if (ship_arraylist.get(i).Quadrant==1) {
          ship_arraylist.get(i).ScreenPos.x-=ship_arraylist.get(i).Xinc;
          ship_arraylist.get(i).ScreenPos.y-=ship_arraylist.get(i).Yinc;
        }
        if (ship_arraylist.get(i).Quadrant==2) {
          ship_arraylist.get(i).ScreenPos.x+=ship_arraylist.get(i).Xinc;
          ship_arraylist.get(i).ScreenPos.y-=ship_arraylist.get(i).Yinc;
        }
        if (ship_arraylist.get(i).Quadrant==3) {
          ship_arraylist.get(i).ScreenPos.x+=ship_arraylist.get(i).Xinc;
          ship_arraylist.get(i).ScreenPos.y+=ship_arraylist.get(i).Yinc;
        }
      } else if (frameCount%60==0 && dist(ship_arraylist.get(i).ScreenPos.x, ship_arraylist.get(i).ScreenPos.y, 550, 280)<=20) {
        for (i=0; i<ship_arraylist.size(); i++) {
          ship_arraylist.get(i).ScreenPos.x=ship_arraylist.get(i).ScreenPosSET.x;
          ship_arraylist.get(i).ScreenPos.y=ship_arraylist.get(i).ScreenPosSET.y;
        }
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
    if (Speed>=359) {
      Speed=0;
    }

    if (SonarSpeed_MHz >= 359) {
      SonarSpeed_MHz=0;
    } else {
      Speed= Speed+SonarSpeed_MHz;
    }//increments rotation/scanning speed
  }
}
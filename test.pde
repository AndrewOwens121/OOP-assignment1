void test(float[] x1) {
  pushMatrix();
translate(x1[0]-x1[2]/2, x1[1]-x1[3]/2+5);
  int tablecount =table.getRowCount();//get number of records in data file for loop
  //println(tablecount);

  int x;
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
    x=table.getInt(i, "xPos");
    y=table.getInt(i, "yPos");
    String shipName=table.getString(i, "ShipName");
    mapX=map(x, lowestX, highestX, 0, x1[2]);
    mapY=map(y, lowestY, highestY, 0, x1[3]);
    stroke(255, 0, 0);
    if( table.getInt(i, "Alive") ==1 ){
    ellipse(mapX, mapY, 10, 10);
    //text(shipName, mapX,mapY);
    }
  }
  popMatrix();
}
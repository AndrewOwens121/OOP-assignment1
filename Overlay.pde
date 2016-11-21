float[] Overlay() {

  //VARIABLES TO CONTROL OVERLAY DIMENSIONS
  float lCol=(width*0.45);//variable for width of left Column
  float tRow=(height*0.15);//variable for height of top Row
  float rCol=(width*0.075);//variable for width of right Column
  float bRow=(height*0.2);//variable for height of bottom Row

  //VARABLES FOR CENTER/SIZE OF WINDOW
  float centerX=((width-(lCol+rCol))/2)+lCol;
  float centerY=((height-(tRow+bRow))/2)+tRow;
  float windowWidth=width-(lCol+rCol);
  float windowHeight=height-(tRow+bRow);
  
  //VARIABLE FOR SLIDER COORDINATES
  float sliderX = centerX-(windowWidth/2);

  //ARRAY TO HOLD CENTER/SIZE VARIABLES TO BE PASSED BACK
  float[] windowCo= new float[9]; 
  windowCo[0]=centerX;
  windowCo[1]=centerY;
  windowCo[2]=windowWidth;
  windowCo[3]=windowHeight;
  windowCo[4]=SonarSpeed_MHz;
  windowCo[5]=lCol;
  windowCo[6]=tRow;
  windowCo[7]=rCol;
  windowCo[8]=bRow;

  //DRAWS OVERLAY
  noStroke();
  fill(55);
  rect(0, 0, lCol, height);//left Column
  rect(lCol, 0, width-lCol, tRow);//top Row
  rect(width-rCol, tRow, rCol, height-(bRow+tRow));//right Column
  rect(lCol, height-bRow, width-(lCol), bRow);//bottom Row

  
  //WINDOW BORDER
  stroke(0);
  strokeWeight(5);
  noFill();
  rect(centerX-(windowWidth/2)-3, centerY-(windowHeight/2)-3, windowWidth+5, windowHeight+5, 20, 20, 20, 20);
  strokeWeight(1);

  //SCREWS
  noStroke();
  fill(85,85,85,85);
  ellipse(width-rCol/2, rCol/2, 35, 35);//top right
  ellipse(width-rCol/2, height-rCol/2, 35, 35);//bottom right
  ellipse(lCol*0.35, height-rCol/2, 35, 35);//bottom left
  ellipse(lCol*0.35, rCol/2, 35, 35);//top left

  fill(70,70,70);
  ellipse(width-rCol/2, rCol/2, 30, 30);//top right
  ellipse(width-rCol/2, height-rCol/2, 30, 30);//bottom right
  ellipse(lCol*0.35, height-rCol/2, 30, 30);//bottom left
  ellipse(lCol*0.35, rCol/2, 30, 30);//top left
 
  stroke(20,20,20,120);
  strokeWeight(3);
  line(width-rCol/2-8, rCol/2-8,width-rCol/2+8, rCol/2+8);//top right
  line(width-rCol/2-8, height-rCol/2-8,width-rCol/2+8, height-rCol/2+8);//bottom right
  line(lCol*0.35-8, height-rCol/2-8,lCol*0.35+8, height-rCol/2+8);//bottom left
  line(lCol*0.35-8, rCol/2-8,lCol*0.35+8, rCol/2+8);//top left
  
  return windowCo;
}
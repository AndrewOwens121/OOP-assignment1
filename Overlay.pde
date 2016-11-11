float[] Overlay() {
  //VARIABLES TO CONTROL OVERLAY DIMENSIONS
  float lCol=(width*0.35);//variable for width of left Column
  float tRow=(height*0.1);//variable for height of top Row
  float rCol=(width*0.2);//variable for width of right Column
  float bRow=(height*0.5);//variable for height of bottom Row
  
  //VARABLES FOR CENTER/SIZE OF WINDOW
  float centerX=((width-(lCol+rCol))/2)+lCol;
  float centerY=((height-(tRow+bRow))/2)+tRow;
  float windowWidth=width-(lCol+rCol);
  float windowHeight=height-(tRow+bRow);
  //println(centerX);  
  
  //ARRAY TO HOLD CENTER/SIZE VARIABLES TO BE PASSED BACK
  float[] windowCo= new float[4]; 
  windowCo[0]=centerX;
  windowCo[1]=centerY;
  windowCo[2]=windowWidth;
  windowCo[3]=windowHeight;
  
  noStroke();
  fill(55);

  //DRAWS OVERLAY
  rect(0, 0, lCol, height);//left Column
  rect(lCol, 0, width-lCol, tRow);//top Row
  rect(width-rCol, tRow, rCol, height-(bRow+tRow));//right Column
  rect(lCol, height-bRow, width-(lCol), bRow);//bottom Row

  //LEFT COLUMN BUTTONS
  int bCount=7;//number of Buttons
  int spacing = height/bCount-(bCount/10);
  int rr=5;//rectRadius - how curved the buttons edges are
  fill(75);
  noStroke();
  for (int i=0; i<bCount; i++) {
    rect(5, 5+i*spacing, spacing-5, spacing-5, rr, rr, rr, rr);
  }
  //WINDOW BORDER
  stroke(0);
  strokeWeight(5);
  noFill();
  rect(centerX-(windowWidth/2)-3,centerY-(windowHeight/2)-3,windowWidth+5,windowHeight+5,20,20,20,20);
  strokeWeight(1);
  
  
  
  return windowCo;
}
void buttons(float[] x) {

  //VARIABLES
  color BattleLEDOFF = color(125, 0, 0);
  color BattleLEDON = color(255, 0, 0);

  //HEADER "SONAR-DEFENCE-SYSTEM"
  fill(255);
  String Header = "SONAR_DEFENCE_SYSTEM";
  text(Header, x[5]-200, 50);

  //LED's
  //textFont(font1);
  //text("Battle Ready", width-x[7]/2, height/4);
  fill(BattleLEDON);
  ellipse(width-x[7]/2, height/4, 20, 20);//top right
  //CABIN PRESSURE
  fill(BattleLEDOFF);
  ellipse(width-x[7]/2, (height/4)*2, 20, 20);//top right
  
  //**NOTE , add flip switch under led's so when u click target on radar , all info comes up and sketch of ship type,
  //        then you must flip the Live switch before firing , target will die , small X animation will come over its location ,
  //        and alive toggle in csv file will die , 1=alive , 0= dead - 3 types of craft  ** fix missing screw , variable name change might have broke them -
  //add in scuff marks and tally marks around border for affect

  //LEFT COLUMN BUTTONS

  int spacing = height/bCount-(bCount/10);
  int rr=5;//rectRadius - how curved the buttons edges are
  fill(75);
  noStroke();
  for (int i=0; i<bCount; i++) {
    rect(5, 5+i*spacing, spacing-5, spacing-5, rr, rr, rr, rr);
  }
//int i;
//  for (i=0; i<bCount; i++) {
//    if (mouseX >= 0 && mouseY>=0 && mouseX <= spacing+spacing*i && mouseY <= spacing+spacing*i) {
//      rect(50, 50+spacing*i, 50, 50);
//      println(i);
//    }
//  }
}
void ShipData() {
  //CALL  SHIP SKETCHES BASED ON CSV VALUE
  for (int i=0; i<toggled.length; i++)
  {
    if (toggled[i] == true)
    {
      shipCalled =i;
    }
  }

  if (shipCalled != 0 && ship_arraylist.get(shipCalled).Alive ==1) {
    //calls ship sketch
    if (ship_arraylist.get(shipCalled).ShipType==1) {
      ship1();
    }
    if (ship_arraylist.get(shipCalled).ShipType==2) {
      ship2();
    }
    if (ship_arraylist.get(shipCalled).ShipType==3) {
      ship3();
    }  
    PFont font1;
    font1 = createFont("Franklin Gothic Medium Cond", 8);
    textFont(font1, 20);
    //SHIP INFO
    text(("SHIP ID:"+ ship_arraylist.get(shipCalled).ShipID), 115, 230);
    text(("SHIP NAME:"+ ship_arraylist.get(shipCalled).ShipName), 115, 260);
    text(("VESSEL SIZE:"+ ship_arraylist.get(shipCalled).VesselSize), 115, 290);
    text(("SHIP SPEED:"+ ship_arraylist.get(shipCalled).Speed) + "KNOTS", 115, 320);
    text(("CREW ONBOARD:"+ ship_arraylist.get(shipCalled).CrewNO), 115, 350);

    if (ship_arraylist.get(shipCalled).Health>75) {//GREEN
      fill(0, 255, 0);
      text(("HEALTH:"+ ship_arraylist.get(shipCalled).Health), 115, 380);
    }
    if (ship_arraylist.get(shipCalled).Health<=75) {//YELLOW
      fill(255, 255, 0);
      text(("HEALTH:"+ ship_arraylist.get(shipCalled).Health), 115, 380);
    }
    if (ship_arraylist.get(shipCalled).Health<50) {//RED
      fill(255, 0, 0);
      text(("HEALTH:"+ ship_arraylist.get(shipCalled).Health), 115, 380);
    }
  }
  //IF STATEMENT FOR BEGINNING TUTORIAL
  if (shipCalled==0) {
    PFont font1;
    fill(255, 255, 255, 100);
    font1 = createFont("Franklin Gothic Medium Cond", 8);
    textFont(font1, 24);
    text("WELCOME TO", 155, 120);
    text("SONAR DEFENCE SYSTEM", 105, 140);
    textFont(font1, 20);
    text("FIRST : target a ship by clicking its location on the sonar", 95, 160, 240, 60);
    text("SECOND : Attack the ship by clicking engage target button", 95, 220, 240, 60);
    text("THIRD : KILL all ships before they reach the radar", 95, 280, 240, 60);
  }
  //IF STATEMENT FOR BETWEEN TARGETTING SHIPS
  if (shipCalled!=0&&ship_arraylist.get(shipCalled).Alive==0) {
    PFont font1;
    fill(255, 255, 255, 100);
    font1 = createFont("Franklin Gothic Medium Cond", 8);
    textFont(font1, 20);
    text("Choose Next Target!", 145, 140);
    gfx();
  }
}
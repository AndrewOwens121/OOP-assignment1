void ShipData() {
  //call ship sketches in this function based on csv value
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
    font1 = createFont("Georgia", 8);
    textFont(font1, 20);
    //shipName
    text(("SHIP ID:"+ ship_arraylist.get(shipCalled).ShipID), 115, 230);
    text(("SHIP NAME:"+ ship_arraylist.get(shipCalled).ShipName), 115, 260);
    text(("VESSEL SIZE:"+ ship_arraylist.get(shipCalled).VesselSize), 115, 290);
    text(("SHIP SPEED:"+ ship_arraylist.get(shipCalled).Speed) + "KNOTS", 115, 320);
    text(("CREW ONBOARD:"+ ship_arraylist.get(shipCalled).CrewNO), 115, 350);
    text(("HEALTH:"+ ship_arraylist.get(shipCalled).Health), 115, 380);




    println(shipCalled);
  }
}
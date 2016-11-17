class Ship{
  
  //VARIABLES FOR SHIPDATA CSV FILE
  int ShipID;//removed ? from name as causing errors
  int Alive;//1=Alive 0=Dead
  int CrewNO;//Number of Crew onboard
  int ShipType;//3 types
  float yPos;
  float xPos;
  int VesselSize;//length
  float Speed;//speed of ship
  String ShipName;
  
    Ship(String line){
    
    String[] parts = line.split(",");
    ShipID = int(parts[0]);
    Alive = int(parts[1]);
    ShipType = int(parts[3]);
    xPos = float(parts[4]);
    yPos = float(parts[5]);
    ShipName = parts[8];
    
  }// end gdp

 }
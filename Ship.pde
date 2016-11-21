class Ship {

  //VARIABLES FOR SHIPDATA CSV FILE
  int ShipID;//removed ? from name as causing errors
  int Alive;//1=Alive 0=Dead
  int CrewNO;//Number of Crew onboard
  int ShipType;//3 types
  PVector Pos;
  PVector ScreenPos;
  int VesselSize;//length
  float Speed;//speed of ship
  String ShipName;

  float lowestX=0;//variable for holding the lowest x value
  float lowestY=0;//varable for holding the lowest y value
  float highestX=0;//variable for holding the highest x value
  float highestY=0;//varable for holding the highest y value



  Ship(String line) {

    String[] parts = line.split(",");
    ShipID = int(parts[0]);
    Alive = int(parts[1]);
    ShipType = int(parts[3]);
    Pos = new PVector(//PVector to replace x,y pos
      float(parts[4]), 
      float(parts[5]));
    ScreenPos = new PVector(//Maps Pos to Radar window
      map(Pos.x, -500, 500, 360, 740)
      , map(Pos.y, -500, 500, 90, 480));
    ShipName = parts[8];
  }// end gdp

  
}
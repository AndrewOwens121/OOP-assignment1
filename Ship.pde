class Ship {
  //VARIABLES FOR SHIPDATA CSV FILE
  int ShipID;//removed ? from name as causing errors
  int Alive;//1=Alive 0=Dead
  int CrewNO;//Number of Crew onboard
  int ShipType;//3 types
  PVector Pos;
  PVector ScreenPos;
  PVector ScreenPosSET;
  int VesselSize;//length
  float Speed;//speed of ship
  String ShipName;
  int Health;
  int Quadrant;
  float Distance;
  float CompleteAngle;
  float Xinc;
  float Yinc;
  int i;

  Ship(String line) {

    String[] parts = line.split(",");
    ShipID = int(parts[0]);
    Alive = int(parts[1]);
    CrewNO = int(parts[2]);
    ShipType = int(parts[3]);
    Pos = new PVector(//PVector to replace x,y pos
      float(parts[4]), 
      float(parts[5]));
    ScreenPos = new PVector(//Maps Pos to Radar window
      map(float(parts[4]), -500, 500, 360, 740)
      , map(float(parts[5]), -500, 500, 90, 480));
    ScreenPosSET = new PVector(//Maps Pos to Radar window
      map(float(parts[4]), -500, 500, 360, 740)
      , map(float(parts[5]), -500, 500, 90, 480));
    VesselSize= int(parts[6]);
    Speed = int(parts[7]);
    ShipName = parts[8];
    Health = int(parts[9]);
    //GETTING SHIP POSITION IN QUADRANTS FOR USE WITH RADAR
    if (Pos.x>=0&&Pos.y<=0) {
      Quadrant=0;
    }
    if (Pos.x>=0&&Pos.y>=0) {
      Quadrant=1;
    }
    if (Pos.x<=0&&Pos.y>=0) {
      Quadrant=2;
    }
    if (Pos.x<=0&&Pos.y<=0) {
      Quadrant=3;
    }
    //GETTING ANGLE IN DEGREES OF POINT FROM RADAR
    float hyp = sqrt(pow(abs(Pos.x), 2)+pow(abs(Pos.y), 2));
    float opp = abs(Pos.y);
    float QuadrantAngle = degrees(asin(opp/hyp));
    if (Quadrant==0) {
      CompleteAngle=90-QuadrantAngle;
    } else
    {
      CompleteAngle=QuadrantAngle+ Quadrant*90;
    }
    //GETTING SIZE OF X AND Y INCREMENTS TO MAKE SHIPS COME TOWARDS RADAR
    Xinc=abs(Pos.x)/pow(Speed, 5);
    Yinc=abs(Pos.y)/pow(Speed, 5);
  }
}
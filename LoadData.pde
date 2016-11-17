void loadData(){
  
  String[] lines = loadStrings("ShipData.csv"); // files must be in the data folder
  
  for(int i = 0; i<lines.length; i++){
     ship_arraylist.add(new Ship(lines[i]));
  }// end for loop
  
}// end loadData
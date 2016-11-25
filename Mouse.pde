
void mousePressed() 
{

  for (int i=0; i<ship_arraylist.size(); i++)
  {
    if ((mouseX>ship_arraylist.get(i).ScreenPos.x-8) && (mouseX<ship_arraylist.get(i).ScreenPos.x+8) && (mouseY>ship_arraylist.get(i).ScreenPos.y-8) && (mouseY<ship_arraylist.get(i).ScreenPos.y+8)) //set the correct node to toggled true
    {
      for (int j=0; j<toggled.length; j++) {
        toggled[j]=false;
      }
      toggled[i] = true;
    }

    //RESETBUTTON
    if (mouseX>5&&mouseX<85&&mouseY>515&&mouseY<595)
    {
      for (i=0; i<ship_arraylist.size(); i++)
      {
        ship_arraylist.get(i).Health=100;
        ship_arraylist.get(i).Alive=1;
        ship_arraylist.get(i).ScreenPos.x=ship_arraylist.get(i).ScreenPosSET.x;
        ship_arraylist.get(i).ScreenPos.y=ship_arraylist.get(i).ScreenPosSET.y;
         for (int j=0; j<toggled.length; j++) {
        toggled[j]=false;
      }
        shipCalled=0;
      }
    }
  }
  //ENGAGE TARGET
  if (dist(mouseX, mouseY, 220, 450)<85) //set the correct node to toggled true
  {
    ship_arraylist.get(shipCalled).Health-=25;
    if (ship_arraylist.get(shipCalled).Health<=0)
    {
      ship_arraylist.get(shipCalled).Alive=0;
    }
  }
  
  if (dist(mouseX, mouseY, 770, height/4)<20){
    LED[0]=!LED[0];  
  }
    if (dist(mouseX, mouseY, 770, height/2)<20){
    LED[1]=!LED[1];  
  }
}
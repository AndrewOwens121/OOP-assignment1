
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
      //ship_arraylist.get(i).Health+=-25;
    } 
    //ENGAGE TARGET BUTTON
    if (dist(mouseX, mouseY, 220, 450)<85) //set the correct node to toggled true
    {
      ship_arraylist.get(shipCalled).Health-=25;
      if (ship_arraylist.get(shipCalled).Health<=0)
      {
        ship_arraylist.get(shipCalled).Alive=0;
      }
    }
    //RESETBUTTON
    if (mouseX>5&&mouseX<85&&mouseY>515&&mouseY<595)
    {
      for(i=0;i<ship_arraylist.size();i++)
      {
        ship_arraylist.get(i).Health=100;
        ship_arraylist.get(i).Alive=1;
        shipCalled=0;
      }
    }
  }
}
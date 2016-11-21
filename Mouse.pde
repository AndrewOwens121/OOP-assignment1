
void mouseClicked() 
{

  for (int i=0; i<ship_arraylist.size(); i++)
  {
    if ((mouseX>ship_arraylist.get(i).ScreenPos.x-8) && (mouseX<ship_arraylist.get(i).ScreenPos.x+8) && (mouseY>ship_arraylist.get(i).ScreenPos.y-8) && (mouseY<ship_arraylist.get(i).ScreenPos.y+8)) //set the correct node to toggled true
    {
      for(int j=0;j<toggled.length;j++){
       toggled[j]=false; 
      }
      toggled[i] = true;
      //ship_arraylist.get(i).Alive=0;
    } 
    //else
    //{
    //  toggled[i] = false;
    //}
  }
}
  
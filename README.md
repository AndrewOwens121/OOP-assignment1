# OOP-assignment1
##Student Number : C14363641 

For my First OOP assignment I was given a task to create a UI for a Sci-fi movie device , 
which had lots of animation and interactivity and should include 
*Variables, loops, methods
* Arrays & array lists
* Objects, inheritance, polymorphism
* The unit circle and trigonometry
* pushMatrix, popMatrix, translate and rotate

###Variables, loops, methods
I used Variable , loops and Methods thoughout my code to minimise hard-coding , and to make my code as efficient , readable , and Reusable as possible

###Arrays & array lists
I used Arrays & arrayLists thoughout my code to store and pass back values , store toggles(boolean arrays) , and store instances of my class

###Objects, inheritance, polymorphism
I used Objects in my Assignment to have an easy template in which to store data taken in from a .csv file , the use of class's helped with making my program scalable from 1 Ship to 100,
Although I didnt get around to inheritance or Polymorphism as we havent touched these topics in class even though I do have a brief understanding of these Programming concepts , 
I didnt have a case where I could do a worth-while implementation of these concepts without just shoe-horning them in , So I decided not to include them in my assignment.

###The unit circle and trigonometry
I Used the Unit Circle and trigonometry in my code to help the sonar with ship detection , which ended up working perfectly.

###pushMatrix, popMatrix, translate and rotate
I used these methods as the backbone of my sonar method and without these built-in processing methods It would have taken me alot more code to get the Sonar method up and running.

##Feature
The feature I am most proud of in this assignment is the Sonar and using the guidelines of the assignment to implement all of its functionality,
as you can see below the only ships that light up on the Sonar , are those within the scope of the radar , I implemented this feature using co-ordinate geometry, trigonometry, and the Unit circle.
![alt tag](http://i.imgur.com/PVuXyPz.png)

1. First I began by drawing the sonar using vertex , then used pushMatrix, popMatrix, translate and rotate to move (translate) the radar to the window in the sketch , and rotate the shape using a variable which is
incremented once per frame (rotate speed can be increased by user using the controlP5 librarys slider). This basically gave me a radar spinning around which looks good but had little functionality
```
pushMatrix();
    translate(x[0], x[1]);
    rotate(radians(Speed));//speed is incremented per frame , degree of incrementation can be altered by user using ControlP5 slider
	//SONAR DRAWING HERE
popMatrix();
```

2. Secondly, I wrote code to draw the ships from the csv file (stored in ship_arraylist) in the sonar window , this allowed the user to know the position of the ships etc.

3. I then wanted to add functionality so that the ship's lit up when sonar beam went over them , I began by using trigonometry and the unit circle in the Ship class to work out with quadrant each ship was in , and what angle(0-360) 
each ship was in relation to the sonar , then taking the width of the sonar beam into account I compared the variable used for rotate and the Ship's degree's and when they matched up , to change the stroke of the ship on the sonar
to a lighter shade of red.Below I have added pictures of my rough work below,

![alt tag](http://i.imgur.com/Go9DPel.png)

4. Next I wanted to Display the distance between the ship on screen and the Sonar , I used trigonometry for this and although this is easily done using the built in dist() method , I had already done out the trigonometry while caluclating 
degree for each ship so just used the hypotenuse as the distance.

5.Next I wanted to have the ship position on screen approaching the sonar , I used the code
```
frameCount%60==0
```
shown to us in a previous lab  to trigger changes every 60 frames (every second if running at 60fps), I also used trigonometry to determin the ship position change so that the ships are coming straight for the radar etc.
I used the Quadrant system I set up to determine if pixels should be added or subracted to the ships x,y to achieve them going in the sonars direction.

##Screenshot's of My finished Assignment
![alt tag](http://i.imgur.com/v31Ig0R.png)
![alt tag](http://i.imgur.com/HfukiBk.png) 
![alt tag](http://i.imgur.com/PVuXyPz.png)
![alt tag](http://i.imgur.com/LN4jCpm.png)



##Youtube Demo

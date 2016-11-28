# OOP-assignment1
Student Number : C143636341 

For my First OOP assignment I was given a task to create a UI for a Sci-fi movie device , 
which had lots of animation and interactivity and should include 
+Variables, loops, methods
+Arrays & array lists
+Objects, inheritance, polymorphism
+The unit circle and trigonometry
+pushMatrix, popMatrix, translate and rotate

I Brainstormed a few idea's and came up with a "Sonar Defence" style UI which I thought had a lot of potential 
so I began drawing out rough sketches of what it would look like , then I began to work out how I would go about 
tackling the code involved to implement the features I desired.

What I ended up making was a UI which shows enemy ships on a radar.
Each enemy ship is taken in from a .csv file , the .csv file contains information about each ship , like its 
Position , Name , Crew On board , ship health etc this information is stored in Class called "Ship" ,
each instance of the class is stored in an arraylist called "ship_arraylist".

The next main part of my Assignment is the radar , I wanted to create a functional radar which could identify ships
when its beam was focused in its direction and tell the ships distance to the radar.
The way I ended up implementing this feature was using many of the requirements for the assignment such as 
	+pushMatrix, popMatrix, translate and rotate
	+The unit circle and trigonometry
I began with drawing the radar beam as pictured below , this is a static drawing with no moving parts. I then used
push/popMatrix,Translate and Rotate methods in processing to allow me to rotate just this image to give the effect of a real-life radar,

My next challenge was to give the user some control over the radar , I used the controlP5 library to implement a slider
which changes the rotate variable to give the user control of the speed of the radar.

Next was to make this radar functional instead of using it just for Aesthetics, I decided that I wanted it to be realistic ,
so when the radars beam hits a ship in the window , the ship with light up , I used the unit circle and trigonometry to do this and began 
setting it up in the Ship class , I used co-ordinate geometry and trigonometry to first calculate each ships angle 0-360 degrees from the radar,
I then split each ship into 4 quadrants 0-3 based on there angle Quadrant 0 = 0-90 degrees etc, I then compared the degree's of rotation of the radar to 
the ship positions and factored in the width of the beam etc to implement this functionality , This is the part of the assignment I am most proud of.

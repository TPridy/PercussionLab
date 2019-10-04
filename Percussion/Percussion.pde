//import Audio Library
import ddf.minim.*;

/* buttons is an array of button objects
*/
Button[] buttons = new Button[2];

/* this function sets up the visual window
*/
void setup() 
{
  size(400, 300);
  fill(255, 0, 0);
  noStroke();
  smooth();
  
  buttons[0] = new Button(50, 120, "drum.wav"   , "Drum"  );  
  buttons[1] = new Button(250, 120, "cymbal.wav" , "Cymbal");
  
}

/* this function draws the button and is called 60 times a second by default
*/
void draw() 
{
  background(255);
  for (int i = 0; i< buttons.length; ++i)
  {
    buttons[i].display();
  }
}

/* this function is called when a mouse is clicked
*/
void mousePressed()
{
  for (int i = 0; i< buttons.length; ++i)
  {
    if (buttons[i].isInside(mouseX,mouseY))
    {
      buttons[i].press();
    }
  }
}

/* this function exits the program
*/
void stop() 
{
   for (int i = 0; i< buttons.length; ++i)
  {
    buttons[i].quit();
  }
  super.stop();
}

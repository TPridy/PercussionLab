//import Audio Library
import ddf.minim.*;

//Array of Buttons
Button[] buttons = new Button[2];

void setup() 
{
  size(400, 300);
  fill(255, 0, 0);
  noStroke();
  smooth();
  buttons[0] = new Button(50, 120, "drum.wav"   , "Drum"  );  
  buttons[1] = new Button(250, 120, "cymbal.wav" , "Cymbal"); 
}

void draw() 
{
  background(255);
  for (int i = 0; i< buttons.length; ++i)
  {
    buttons[i].display();
  }
}

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

void stop() 
{
  for (int i = 0; i< buttons.length; ++i)
  {
    buttons[i].quit();
  }
  super.stop();
}

//import Audio Library
import ddf.minim.*;

//Buttons
Button cymbal;
Button drum;

void setup() 
{
  size(400, 300);
  fill(255, 0, 0);
  noStroke();
  smooth();
  drum   = new Button(50, 120, "drum.wav"   , "Drum"  );
  cymbal = new Button(250, 120, "cymbal.wav" , "Cymbal");
}

void draw() 
{
  background(255);
  drum.display();
  cymbal.display();
}

void mousePressed()
{
  if (drum.isInside(mouseX,mouseY))
  {
    drum.press();
  }
  else if (cymbal.isInside(mouseX,mouseY))
  {
    cymbal.press();
  }
}

void stop() 
{
  cymbal.quit();
  drum.quit();
  super.stop();
}

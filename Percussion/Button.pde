//Creates new audio library object that was imported through Sketch Libraries
Minim minim = new Minim(this);
 
/** Represents a visual button
 * @author Thomas Pridy, Autumn Nguyen, Garrett Cross, Omar Kermiche
 * @version 1.0
 * @since 1.0
*/
class Button
{
  /** Represents the CONSTANT width and height of the button
  */
  private static final char WIDTH  = 100;
  private static final char HEIGHT =  50;
  
  /** Represents the class attributes of the button
  */
  private int x;
  private int y;
  private char w;
  private char h;
  
  /** Represents the sound and label of the button
  */
  private AudioSample sound;
  private String label;
  
  /** Creates a button with 
   * @param x button location on the x axis
   * @param y button location on the y axis
   * @param filename the filename of the audio file
   * @param label the label of the button
  */
  public Button(int x, int y, String filename, String label)
  {
    //Button Attributes
    this.x =   x;
    this.y =   y;
    this.w = WIDTH;
    this.h = HEIGHT;
    this.label = label;
    //Audio Attributes
    this.sound = minim.loadSample(filename); 
  }
  
  //*************************************************************************************
  // Methods                                                                            *
  //*************************************************************************************
  
  /** Determines whether or not the cursor is within the button
   * @param mx mouse x coordinate
   * @param my mouse y coordinate
   * @return inside A boolean- true if the cursor is within the button
  */
  Boolean isInside(int mx, int my)
  {
    Boolean inside = false;//Variable to hold flag
    if ((mx >= this.x) && (mx <= this.x + this.w))
    {
      if ((my >= this.y) && (my <= this.y + this.h))
      {
        inside = true;
      }
    }
    return inside;
  }
  
  /** Displays the rectangles and button labels visually
  */
  void display()
  {
    //Rectangles
    fill(0, 0, 0);
    rect(this.x, this.y, this.w, this.h);
    
    //Button Labels
    fill(255,255,255);
    text(this.label, this.x + (this.w/4),this.y + (this.h/2) + 5);  
  }
  
  /** Plays the sound when this function is called
  */
  void press()
  {
    this.sound.trigger();
  }
  
  /** Closes the audio object that we open
  */
  void quit()
  {
    this.sound.close();
  }
  
  
}

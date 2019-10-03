Minim minim = new Minim(this);
 
class Button
{
  //CONSTANTS
  private static final char WIDTH  = 100;
  private static final char HEIGHT =  50;
  
  //Class Attributes
  private int x;
  private int y;
  private char w;
  private char h;
  
  //Audio Attributes
  private AudioSample sound;
  private String label;
  
  //Constructor
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
  
  //Method that determines
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
  
  void display()
  {
    //Rectangles
    fill(0, 0, 0);
    rect(this.x, this.y, this.w, this.h);
    
    //Button Labels
    fill(255,255,255);
    text(this.label, this.x + (this.w/4),this.y + (this.h/2) + 5);  
  }
  
  void press()
  {
    this.sound.trigger();
  }
  
  void quit()
  {
    this.sound.close();
  }
  
  
}

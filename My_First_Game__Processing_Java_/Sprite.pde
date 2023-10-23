public class Sprite{
  PImage img; 
  float center_x,center_y;  
   float change_x,change_y; 
  float w,h;

  public Sprite(String filename, float scale, float x, float y){ //basically the template for the code values for the image
    img=loadImage(filename); 
    h=img.height * scale; // comntrols height
    w =  img.width * scale; // controls width
    center_x = x; // which area on the x scale the image is on
    center_y = y; // which area on the y scale the image is on
    change_x = 0; // x velocity
    change_y = 0; // y velocity
  }
  
  public Sprite(String filename, float scale){
    this(filename,scale,0,0);
  }
  
  public void display() { // This dislpays the image method 
    image(img, center_x, center_y, 40,50); // image file , x pos , y pos , width, height
  }
  
    public void update() { // updates the position of image method
      center_x += change_x;
      center_y += change_y;
  }
}

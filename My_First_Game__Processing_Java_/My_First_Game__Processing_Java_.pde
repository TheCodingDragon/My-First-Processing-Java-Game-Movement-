final static float MOVE_SPEED = 5;
final static float SPRITE_SCALE = 50.0/128;
final static float SPRITE_SIZE = 50;

Sprite p;
PImage snow, crate, red_brick, brown_brick;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  p = new Sprite("data/player.png", 0.5, 100, 300);
  p.change_x = 0;
  p.change_y = 0;
  
  red_brick = loadImage();
  crate = loadImage();
  brown_brick = loadImage();
  snow = loadImage();
}

void draw() {
  background(147, 157, 255);
  p.display();
  p.update();
}

void createPlatforms(String filename){
String[] lines = loadStrings(filename);
for (int row = 0; row < lines.length; row++){
  String[] values = split(lines[row], ",");
  for(int col = 0; col < values.length; col++){
  if(values[col].equals("1")){
  }
  }
}

}
void keyPressed() {
  // Check if the right arrow key or 'd' key is pressed
  if (keyCode == RIGHT || key == 'd') {
    p.change_x = MOVE_SPEED; // Move right
  } else if (keyCode == LEFT || key == 'a') {
    // Check if the left arrow key or 'a' key is pressed
    p.change_x = -MOVE_SPEED; // Move left
  }
  
  // Check if the up arrow key or 'w' key is pressed
  if (keyCode == UP || key == 'w') {
    p.change_y = -MOVE_SPEED; // Move up
  }
  
  // Check if the down arrow key or 's' key is pressed
  if (keyCode == DOWN || key == 's') {
    p.change_y = MOVE_SPEED; // Move down
  }
}

void keyReleased() {
  // Check if the right arrow key, left arrow key, 'd' key, or 'a' key is released
  if (keyCode == RIGHT || key == 'd' || keyCode == LEFT || key == 'a') {
    p.change_x = 0; // Stop horizontal movement
  }
  
  // Check if the up arrow key, down arrow key, 'w' key, or 's' key is released
  if (keyCode == UP || key == 'w' || keyCode == DOWN || key == 's') {
    p.change_y = 0; // Stop vertical movement
  }
}

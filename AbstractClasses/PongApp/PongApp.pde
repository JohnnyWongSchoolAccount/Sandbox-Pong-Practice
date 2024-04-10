//Global Variables
PongPlayArea pongPlayArea;
//
void setup() {
//size(400, 700);//portrait
  size(700, 400);//landscape
  display();
  pongPlayArea = new PongPlayArea(width/2 - (width * 4)/5, height/10, (width * 4)/5, (height * 7)/10, 0);
}//end setup
//
void draw() {
  pongPlayArea.drawing();
}//end draw
//
void mousePressed() {}//end mousePressed
//
void keyPressed() {}//end keyPressed
//
//end pongApp

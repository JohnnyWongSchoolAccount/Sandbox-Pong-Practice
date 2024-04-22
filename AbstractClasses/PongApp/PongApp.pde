//Global Variables
//
void setup() {
//size(400, 700);//portrait
  size(700, 400);//landscape
  display();
  setupText();
  setupPort();
  setupPong();
}//end setup
//
void draw() {
  drawPort();
  drawPong();
}//end draw
//
void mousePressed() {
  mousePressedPong();
}//end mousePressed
//
void keyPressed() {
  keyPressedPort();
  keyPressedPong();
}//end keyPressed
//
void keyReleased() {
  keyReleasedPong();
}//end keyReleased
//
//end pongApp

//Global Variables
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  //size(400, 700);//portrait
  size(700, 400);//landscape
  display();
  setupText();
  setupPort();
  setupMode();
  setupPong();
}//end setup
//
void draw() {
  drawPong();
  drawMode();
  drawPort();
}//end draw
//
void mousePressed() {
  mousePressedPong();
  mousePressedPort();
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
//end pongApp

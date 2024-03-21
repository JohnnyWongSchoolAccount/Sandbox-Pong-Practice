//Libraries and Dependancies
//
void setup() {
  size( 700, 400 );//width and height of canvas //fullscreen(); = size(displayWidth, displayHeight);
  setupPong();
}//end setup
void draw() {
  setupText();//Text subProgram
  drawPong();//pongPractice subProgram
  drawPort();//Port subProgram
}//end draw
void mousePressed() {
  mousePressedPong();//pongPractice subProgram
  mousePressedPort();//Port subProgram
}//end mousepressed
void keyPressed() {
  keyPressedPong();//pongPractice subProgram
  keyPressedPort();//Port subProgram
}//end keyPressed
void keyReleased() {
  keyReleasedPong();//pongPractice subProgram
}//end keyReleased
//end ClassMetaphors

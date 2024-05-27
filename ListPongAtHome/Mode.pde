//Global Variables
boolean modeOn = false;
//
void setupMode() {
  Button twoPlayer = new Button(refMeasure, height/10, width/6, height/8, 0);
  Button onePlayer = new Button(refMeasure, twoPlayer.y+twoPlayer.h+(refMeasure/2), width/6, height/8, 0);
  twoPlayer.variablesUpdate(0, 0, 0, 0, twoPlayer.x, 0, 0, 0);
  onePlayer.variablesUpdate(0, 0, 0, 0, 0, onePlayer.x, 0, 0);
  //
  shapes.add(twoPlayer);//Element 3, twoPlayer
  shapes.add(onePlayer);//Element 4, onePlayer
}//end setupPong
void drawMode() {
  if (modeOn) drawModeOn();
}//end drawPong
void mousePressedMode() {
}//end mousePressedPong
void keyPressedMode() {
}//end keyPressedPong
//
void drawModeOn() {
  background(background);
}//end drawPong
void mousePressedModeOn() {}//end mousePressedPong
void keyPressedModeOn() {}//end keyPressedPong
void modeSwitch() {
  portOn = false;
  modeOn = false;
  pongOn = true;
}//end modeSwitch
//end Mode subProgram

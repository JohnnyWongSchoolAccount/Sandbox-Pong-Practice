//Global Variables
boolean modeOn = false;
boolean pongAiDropMenu = false;
boolean mai = false, eai = false;//hard ai, medium ai, easy ai
//
void setupMode() {
  Button twoPlayer = new Button(refMeasure, height/10, width/6, height/8, 0);
  Button onePlayer = new Button(refMeasure, twoPlayer.y+twoPlayer.h+(refMeasure/2), width/6, height/8, 0);
  Button hai = new Button(refMeasure, onePlayer.y+onePlayer.h+(refMeasure/2), width/6, height/14, 0);
  Button mai = new Button(refMeasure, hai.y+hai.h+(refMeasure/2), width/6, height/14, 0);
  Button eai = new Button(refMeasure, mai.y+mai.h+(refMeasure/2), width/6, height/14, 0);
  twoPlayer.variablesUpdate(0, 0, 0, 0, twoPlayer.x, 0, 0, 0, 0);
  onePlayer.variablesUpdate(0, 0, 0, 0, 0, onePlayer.x, 0, 0, 0);
  hai.variablesUpdate(0, 0, 0, 0, 0, 0, hai.x, 0, 0);
  mai.variablesUpdate(0, 0, 0, 0, 0, 0, 0, mai.x, 0);
  eai.variablesUpdate(0, 0, 0, 0, 0, 0, 0, 0, eai.x);
  //
  shapes.add(twoPlayer);//Element 3, twoPlayer
  shapes.add(onePlayer);//Element 4, onePlayer
  shapes.add(hai);//Element 5, hard ai
  shapes.add(mai);//Element 6, medium ai
  shapes.add(eai);//Element 7, easy ai
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

//Global Variables
boolean pongOn = false;
boolean pongGameOn = false;
boolean winConLeft = false;
boolean winConRight = false;
int scoreRight = 0;
int scoreLeft = 0;
//
void setupPong() {
  PongPlayArea pongPlayArea = new PongPlayArea (width/2-((width*2)/5), height/10, (width*4)/5, (height*7)/10, secondaryColor);
  pongPlayArea.variablesUpdate( (height/25), 0, 0, 0, 0, 0, 0, 0);
  Ball firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2), pongPlayArea.y+(pongPlayArea.h/2), 0, 0, 0);
  Ball secondBall = new Ball(width*1.1, height*1.1, 0, 0, 0, firstBall.xVelocity, firstBall.yVelocity);
  Paddle firstPaddle = new Paddle(0, 0, 0, 0, 0);
  Paddle secondPaddle = new Paddle(0, 0, 0, 0, 0);
  firstPaddle.variablesUpdate( pongPlayArea.w/2, pongPlayArea.leftNetX_Top, width/10, firstBall.w, pongPlayArea.y, pongPlayArea.h, 0, 0);
  secondPaddle.variablesUpdate( pongPlayArea.w/2, pongPlayArea.rightNetX_Top, ((width*9)/10), firstBall.w, pongPlayArea.y, pongPlayArea.h, 0, 0);
  Button pauseGame = new Button(refMeasure, height/10, height/8, height/14, 0); 
  pauseGame.variablesUpdate(0, 0, pauseGame.x, 0, 0, 0, 0, 0);
  ScoreKeep leftScoreKeep = new ScoreKeep(0, height/10+height/14+(refMeasure/2), 0, 0, 0);
  ScoreKeep rightScoreKeep = new ScoreKeep(0, leftScoreKeep.y+leftScoreKeep.h+(refMeasure/2), 0, 0, 0);
  leftScoreKeep.variablesUpdate(leftScoreKeep.y, rightScoreKeep.y, 0, 0, 0, 0, 0, 0);
  rightScoreKeep.variablesUpdate(leftScoreKeep.y, rightScoreKeep.y, 0, 0, 0, 0, 0, 0);
  firstBall.collisionPlayArea(pongPlayArea.x, pongPlayArea.y, pongPlayArea.w, pongPlayArea.h);
  firstBall.disappear = false;
  secondBall.disappear = true;
  //
  shapes.add(pongPlayArea); //Element 2, pongPlayArea
  shapes.add(firstBall); //Element 3, firstBall
  shapes.add(secondBall); //Element 4, secondBall
  shapes.add(firstPaddle); //Element 5, firstPaddle
  shapes.add(secondPaddle); //Element 6, secondPaddle
  shapes.add(leftScoreKeep); //Element 7, leftScoreKeep
  shapes.add(rightScoreKeep); //Element 8, rightScoreKeep
  shapes.add(pauseGame); //Element 9, pauseGame
}//end setupPong
void drawPong() {
  if (pongOn) drawPongOn();
}//end drawPong
void mousePressedPong() {
  if (pongOn) mousePressedPongOn();
}//end mousePressedPong
void keyPressedPong() {
  if (pongOn) keyPressedPongOn();
}//end keyPressedPong
void keyReleasedPong() {
  for ( Shape s : shapes ) {
    s.keyReleased();
  }
}//end keyReleasedPong
//
void drawPongOn() {
  background(background);
  shapes.get(3).variablesUpdate(shapes.get(5).x, shapes.get(5).y, shapes.get(5).w, shapes.get(5).h, shapes.get(6).x, shapes.get(6).y, shapes.get(6).w, shapes.get(6).h);
}//end drawPong
void mousePressedPongOn() {}//end mousePressedPong
void keyPressedPongOn() {
  for ( Shape s : shapes ) {
    s.keyPressed();
  }
  if (key == '3') pongOnOffSwitch();//switches pong on and off
}//end keyPressedPong
void pongOnOffSwitch() {
  if (pongGameOn) { pongGameOn = false; } else { pongGameOn = true; }//switches pong on and off
}//end pongOnOffSwitch
//end Pong subProgram

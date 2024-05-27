//Global Variables
boolean pongOn = false;
boolean pongGameOn = false;
boolean winConLeft = false;
boolean winConRight = false;
boolean onePlayer = false;
int scoreRight = 0;
int scoreLeft = 0;
//
void setupPong() {
  PongPlayArea pongPlayArea = new PongPlayArea (width/2-((width*2)/5), height/10, (width*4)/5, (height*7)/10, secondaryColor);
  pongPlayArea.variablesUpdate( (height/25), 0, 0, 0, 0, 0, 0, 0);
  Ball firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2), pongPlayArea.y+(pongPlayArea.h/2), 0, 0, 0);
  Ball secondBall = new Ball(firstBall.x, firstBall.y, firstBall.w, 0, 0, firstBall.xVelocity, firstBall.yVelocity);
  Paddle firstPaddle = new Paddle(0, 0, 0, 0, 0);
  Paddle secondPaddle = new Paddle(0, 0, 0, 0, 0);
  firstPaddle.variablesUpdate( pongPlayArea.w/2, pongPlayArea.leftNetX_Top, width/10, firstBall.w, pongPlayArea.y, pongPlayArea.h, 0, 0);
  secondPaddle.variablesUpdate( pongPlayArea.w/2, pongPlayArea.rightNetX_Top, ((width*9)/10), firstBall.w, pongPlayArea.y, pongPlayArea.h, 0, 0);
  ScoreKeep leftScoreKeep = new ScoreKeep(0, height/10+height/14+(refMeasure/2), 0, 0, 0);
  ScoreKeep rightScoreKeep = new ScoreKeep(0, leftScoreKeep.y+leftScoreKeep.h+(refMeasure/2), 0, 0, 0);
  leftScoreKeep.variablesUpdate(leftScoreKeep.y, rightScoreKeep.y, 0, 0, 0, 0, 0, 0);
  rightScoreKeep.variablesUpdate(leftScoreKeep.y, rightScoreKeep.y, 0, 0, 0, 0, 0, 0);
  Button pauseGame = new Button(refMeasure, height/10, height/8, height/14, 0); 
  Button resetScore = new Button(refMeasure, rightScoreKeep.y+rightScoreKeep.h+(refMeasure/2), height/8, height/14, 0);
  pauseGame.variablesUpdate(0, 0, pauseGame.x, 0, 0, 0, 0, 0);
  resetScore.variablesUpdate(0, 0, 0, resetScore.y, 0, 0, 0, 0);
  firstBall.collisionPlayArea(pongPlayArea.x, pongPlayArea.y, pongPlayArea.w, pongPlayArea.h);
  secondBall.collisionPlayArea(pongPlayArea.x, pongPlayArea.y, pongPlayArea.w, pongPlayArea.h);
  firstBall.disappear = false;
  secondBall.disappear = true;
  //
  shapes.add(pongPlayArea); //Element 5, pongPlayArea
  shapes.add(firstBall); //Element 6, firstBall
  shapes.add(secondBall); //Element 7, secondBall
  shapes.add(firstPaddle); //Element 8, firstPaddle
  shapes.add(secondPaddle); //Element 9, secondPaddle
  shapes.add(leftScoreKeep); //Element 10, leftScoreKeep
  shapes.add(rightScoreKeep); //Element 11, rightScoreKeep
  shapes.add(pauseGame); //Element 12, pauseGame
  shapes.add(resetScore); //Element 13, resetScore
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
  shapes.get(6).variablesUpdate(shapes.get(8).x, shapes.get(8).y, shapes.get(8).w, shapes.get(8).h, shapes.get(9).x, shapes.get(9).y, shapes.get(9).w, shapes.get(9).h);
  shapes.get(7).variablesUpdate(shapes.get(8).x, shapes.get(8).y, shapes.get(8).w, shapes.get(8).h, shapes.get(9).x, shapes.get(9).y, shapes.get(9).w, shapes.get(9).h);
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

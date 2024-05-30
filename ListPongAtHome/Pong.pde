//Global Variables
boolean pongOn = false;
boolean pongGameOn = false;
boolean winConLeft = false;
boolean winConRight = false;
boolean onePlayer = false;
int pauseStartTime;
int delayTime = 3000;
boolean isDelayed = false;
int scoreRight = 0;
int scoreLeft = 0;
//
void setupPong() {
  PongPlayArea pongPlayArea = new PongPlayArea ((width/2)-(width*2/5), height/10, width*4/5, height*7/10, secondaryColor);
  pongPlayArea.variablesUpdate(height/25, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  Ball firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2), pongPlayArea.y+(pongPlayArea.h/2), 0, 0, 0);
  Ball secondBall = new Ball(firstBall.x, firstBall.y, firstBall.w, 0, 0, firstBall.xVelocity, firstBall.yVelocity);
  Paddle firstPaddle = new Paddle(0, 0, 0, 0, 0);
  Paddle secondPaddle = new Paddle(0, 0, 0, 0, 0);
  firstPaddle.variablesUpdate( pongPlayArea.x+(pongPlayArea.w/2), width/10, firstBall.w, pongPlayArea.y, pongPlayArea.h, 0, 0, 0, 0, 0);
  secondPaddle.variablesUpdate( pongPlayArea.x+pongPlayArea.w/2, width*9/10, firstBall.w, pongPlayArea.y, pongPlayArea.h, 0, 0, 0, 0, 0);
  ScoreKeep leftScoreKeep = new ScoreKeep(0, height/10+height/14+(refMeasure/2), 0, 0, 0);
  ScoreKeep rightScoreKeep = new ScoreKeep(0, leftScoreKeep.y+leftScoreKeep.h+(refMeasure/2), 0, 0, 0);
  leftScoreKeep.variablesUpdate(leftScoreKeep.y, rightScoreKeep.y, 0, 0, 0, 0, 0, 0, 0, 0);
  rightScoreKeep.variablesUpdate(leftScoreKeep.y, rightScoreKeep.y, 0, 0, 0, 0, 0, 0, 0, 0);
  Button pauseGame = new Button(refMeasure, height/10, height/8, height/14, 0); 
  Button resetScore = new Button(refMeasure, rightScoreKeep.y+rightScoreKeep.h+(refMeasure/2), height/8, height/14, 0);
  RectText countDown = new RectText(pongPlayArea.x+(pongPlayArea.w/2)-height/4, pongPlayArea.y+(pongPlayArea.h/2)-height/4, height/2, height/2, 0);
  RectText pausedGameText = new RectText(pongPlayArea.x+(pongPlayArea.w/2)-height/4, pongPlayArea.y+(pongPlayArea.h/2)-height/12, height/2, height/6, background);
  countDown.variablesUpdate(0, countDown.x, 0, 0, 0, 0, 0, 0, 0, 0);
  pausedGameText.variablesUpdate(0, 0, pausedGameText.x, 0, 0, 0, 0, 0, 0, 0);
  pauseGame.variablesUpdate(0, 0, pauseGame.x, 0, 0, 0, 0, 0, 0, 0);
  resetScore.variablesUpdate(0, 0, 0, resetScore.y, 0, 0, 0, 0, 0, 0);
  firstBall.collisionPlayArea(pongPlayArea.x, pongPlayArea.y, pongPlayArea.w, pongPlayArea.h);
  secondBall.collisionPlayArea(pongPlayArea.x, pongPlayArea.y, pongPlayArea.w, pongPlayArea.h);
  firstBall.disappear = false;
  secondBall.disappear = true;
  //
  shapes.add(pongPlayArea); //Element 9, pongPlayArea
  shapes.add(firstBall); //Element 10, firstBall
  shapes.add(secondBall); //Element 11, secondBall
  shapes.add(firstPaddle); //Element 12, firstPaddle
  shapes.add(secondPaddle); //Element 13, secondPaddle
  shapes.add(leftScoreKeep); //Element 14, leftScoreKeep
  shapes.add(rightScoreKeep); //Element 15, rightScoreKeep
  shapes.add(pauseGame); //Element 16, pauseGame
  shapes.add(resetScore); //Element 17, resetScore
  shapes.add(countDown); //Element 18, countDown
  shapes.add(pausedGameText); //Element 19, pausedGameText
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
  shapes.get(10).variablesUpdate(shapes.get(12).x, shapes.get(12).y, shapes.get(12).w, shapes.get(12).h, shapes.get(13).x, shapes.get(13).y, shapes.get(13).w, shapes.get(13).h, 0, 0);
  shapes.get(11).variablesUpdate(shapes.get(12).x, shapes.get(12).y, shapes.get(12).w, shapes.get(12).h, shapes.get(13).x, shapes.get(13).y, shapes.get(13).w, shapes.get(13).h, 0, 0);
}//end drawPong
void mousePressedPongOn() {}//end mousePressedPong
void keyPressedPongOn() {
  for ( Shape s : shapes ) {
    s.keyPressed();
  }
  if (key == ' ') pongOnOffSwitch();//switches pong on and off
}//end keyPressedPong
void pongOnOffSwitch() {
  if (pongGameOn) { pongGameOn = false; } else { pongGameOn = true; }//switches pong on and off
}//end pongOnOffSwitch
//end Pong subProgram

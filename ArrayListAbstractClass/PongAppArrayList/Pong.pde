//Global Variables
boolean pongOn = false;
boolean pongGameOn = false;
Firework[] firework = new Firework[10];
//Paddle firstPaddle, secondPaddle;
ScoreKeep leftScoreKeep, rightScoreKeep;
Button quit, pauseGame;
//
void setupPong() {
  PongPlayArea pongPlayArea = new PongPlayArea(width/2-((width*2)/5), height/10, (width*4)/5, (height*7)/10, secondaryColor);
  Ball firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2)+(height/50), pongPlayArea.y+(pongPlayArea.h/2)+(height/50), 0, 0, 0);
  Ball secondBall = new Ball(width*1.1, height*1.1, 0, 0, 0, firstBall.xVelocity, firstBall.yVelocity);
  for (int i=0; i < firework.length; i++) firework[i] = new Firework(width*1.1, height*1.1, 0, 0, 0);
  Paddle firstPaddle = new Paddle(0, 0, 0, 0, 0);
  Paddle secondPaddle = new Paddle(0, 0, 0, 0, 0);
  firstPaddle.valuesProduce(width/10, firstBall.w, pongPlayArea.y, pongPlayArea.h);
  secondPaddle.valuesProduce(((width*9)/10), firstBall.w, pongPlayArea.y, pongPlayArea.h);
  pauseGame = new Button(refMeasure, height/10, height/8, height/14, 0); 
  leftScoreKeep = new ScoreKeep(0, height/10+height/14+(refMeasure/2), 0, 0, 0);
  rightScoreKeep = new ScoreKeep(0, leftScoreKeep.y+leftScoreKeep.h+(refMeasure/2), 0, 0, 0);
  firstBall.collisionPlayArea(pongPlayArea.x, pongPlayArea.y, pongPlayArea.w, pongPlayArea.h);
  firstBall.disappear = false;
  secondBall.disappear = true;
  //
  shapes.add(pongPlayArea); //Element 0, pongPlayArea
  shapes.add(firstBall); //Element 1, firstBall
  shapes.add(secondBall); //Element 2, secondBall
  //shapes.add(firework);
  shapes.add(firstPaddle); //Element 3, firstPaddle
  shapes.add(secondPaddle); //Element 4, secondPaddle
  shapes.add(pauseGame); //Element 5, pauseGame
  shapes.add(leftScoreKeep); //Element 6, leftScoreKeep
  shapes.add(rightScoreKeep); //Element 7, rightScoreKeep
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
  shapes.get(3).paddleKeyReleasedWSAD();//stops left paddle movement
  secondPaddle.paddleKeyReleasedARROWKEYS();//stops right paddle movement
}//end keyReleasedPong
//
void drawPongOn() {
  background(background);
  for ( Shape s : shapes ) {
    shapes.get(1).variablesUpdate(shapes.get(3).x, shapes.get(3).y, shapes.get(3).w, shapes.get(3).h, shapes.get(4).x, shapes.get(4).y, shapes.get(4).w, shapes.get(4).h);
    s.drawing();
    //shapes.get(1).drawing();
  }
    //if (pongGameOn) firstBall.winCondition();
    //if (pongGameOn) cheatBall.winCondition();
  /*pongPlayArea.drawing();
  for (int i=0; i < firework.length; i++) firework[i].explosions(firstBall.x, firstBall.y, firstBall.w);
  for (int i=0; i < firework.length; i++) firework[i].drawing();
  if (!firstBall.disappear) firstBall.drawing();
  if (!secondBall.disappear) secondBall.drawing();
  firstPaddle.drawing();
  secondPaddle.drawing();
  pauseGame.drawing(hoverOver, secondaryColor);
  pauseGame.rectSwitchingText("Pause", "Play", pongGameOn);*/
  /*firstBall.collisionUpdate(firstPaddle.x, firstPaddle.y, firstPaddle.w, firstPaddle.h, secondPaddle.x, secondPaddle.y, secondPaddle.w, secondPaddle.h);
  secondBall.collisionUpdate(firstPaddle.x, firstPaddle.y, firstPaddle.w, firstPaddle.h, secondPaddle.x, secondPaddle.y, secondPaddle.w, secondPaddle.h);
  //leftScoreKeep.drawing();
  //rightScoreKeep.drawing();
  leftScoreKeep.scoreKeepUpdate(firstBall.scoreLeft, firstBall.scoreRight, firstBall.scoreLeftText, firstBall.scoreRightText);
  rightScoreKeep.scoreKeepUpdate(firstBall.scoreLeft, firstBall.scoreRight, firstBall.scoreLeftText, firstBall.scoreRightText);*/
}//end drawPong
void mousePressedPongOn() {
  /*if ( mouseX>=pongPlayArea.x && mouseX<=pongPlayArea.x+pongPlayArea.w && mouseY>=pongPlayArea.y && mouseY<=pongPlayArea.y+pongPlayArea.h ) {
    secondBall.disappear = false;
    secondBall = new Ball(mouseX, mouseY, firstBall.w, firstBall.w, firstBall.c, firstBall.xVelocity, firstBall.yVelocity);//initiates after mousePressed
    //for (int i=0; i < firework.length; i++) firework[i] = new Ball(int(mouseX), int(mouseY), 0.5);//populating firework
  }*/
  pauseGame.mousePressedPauseGameFunction();
}//end mousePressedPong
void keyPressedPongOn() {
  firstPaddle.paddleKeyPressedWASD();
  secondPaddle.paddleKeyPressedARROWKEYS();
  if (key == '3') pongOnOffSwitch();//switches pong on and off
}//end keyPressedPong
void pongOnOffSwitch() {
  if (pongGameOn) { pongGameOn = false; } else { pongGameOn = true; }//switches pong on and off
}//end pongOnOffSwitch
//end Pong subProgram

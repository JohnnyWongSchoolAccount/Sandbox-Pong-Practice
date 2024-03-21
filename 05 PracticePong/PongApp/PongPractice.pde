//Global Variables and Objects
boolean pongOn = false;//turn pong screen on and off
boolean pongGameOn = false;//turn pong game on and off
Ball firstBall; //Both halfs of Constructor
Ball cheatBall;//appears when clicked
Ball[] firework = new Ball[10];//generates multiple balls that fall with gravity
Paddle pongPlayArea, firstPaddle, secondPaddle;
//
void setupPong() {
  population();
  pongPause = new Buttons(refMeasure, height/10, height/8, height/14);
  firstBall = new Ball();//creates first ball
  cheatBall = new Ball(width*-1, height*-1, firstBall.ballDiameter, firstBall.ballColor, firstBall.xVelocity, firstBall.yVelocity);//creates click ball
  for (int i=0; i < firework.length; i++) firework[i] = new Ball(width*-1, height*-1, (1/2));//populating firework
  pongPlayArea = new Paddle();//creates the playArea rect
  firstPaddle = new Paddle( (width/10), firstBall.ballDiameter );//creates left paddle
  secondPaddle = new Paddle( ((width*9)/10), firstBall.ballDiameter );//creates right paddle
  firstBall.disappear = false;//prepares the ball to appear
}//end setupPong
void keyReleasedPong() {
  firstPaddle.paddleKeyReleasedWSAD();//stops left paddle movement
  secondPaddle.paddleKeyReleasedARROWKEYS();//stops right paddle movement
}//end keyReleasedPong
//
void drawPong() { if (pongOn) drawPongOn(); }//end drawPong
void mousePressedPong() { if (pongOn) mousePressedPongOn(); }//end mousePressedPong
void keyPressedPong() { if (pongOn) keyPressedPongOn(); }//end keyPressedPong
//
void drawPongOn() {
  background(background);
  prerequisites();
  pongPlayArea.drawPlayArea();//draws playArea rect
  firstPaddle.drawPaddle();//draws left paddle
  secondPaddle.drawPaddle();//draws right paddle
  if (pongGameOn) firstPaddle.paddleMove();//moves left paddle
  if (pongGameOn) secondPaddle.paddleMove();//moves right paddle
  for (int i=0; i < firework.length; i++) firework[i].ballDraw(); //drawing multiple balls
  if (firstBall.disappear) {/*empty if*/} else firstBall.ballDraw();
  if (cheatBall.disappear) {/*empty if*/} else cheatBall.ballDraw();
  explosions();//firwork effect
  //paddle collisions with ball resulting in bounce()
  firstBall.collisionsUpdate(firstPaddle.playAreaY, firstPaddle.playAreaHeight, firstPaddle.playAreaWidth, firstPaddle.playAreaX, firstPaddle.paddleX, firstPaddle.paddleY, firstPaddle.paddleWidth, firstPaddle.paddleHeight, firstPaddle.paddleWidth, secondPaddle.paddleWidth, firstPaddle.paddleHeight, secondPaddle.paddleHeight);
  UIpong();
}//end drawPongOn
void mousePressedPongOn() {
  //prevents cheatball appearence out of play area
  if ( mouseX>=pongPlayArea.playAreaX && mouseX<=pongPlayArea.playAreaX+pongPlayArea.playAreaWidth && mouseY>=pongPlayArea.playAreaY && mouseY<=pongPlayArea.playAreaY+pongPlayArea.playAreaHeight ) {
    cheatBall = new Ball(mouseX, mouseY, firstBall.ballDiameter, firstBall.ballColor, firstBall.xVelocity, firstBall.yVelocity);//initiates after mousePressed
    //for (int i=0; i < firework.length; i++) firework[i] = new Ball(int(mouseX), int(mouseY), 0.5);//populating firework
  }
  if ( mouseX>=pongPause.buttonX && mouseX<=pongPause.buttonX+pongPause.buttonWidth && mouseY>=pongPause.buttonY && mouseY<=pongPause.buttonY+pongPause.buttonHeight )
  { pongOnOffSwitch(); }
}//draw mousePressedPongOn
void keyPressedPongOn() {
  if (key == '1') firstBall.disappear = true;//debugging tool
  if (key == '2') cheatBall.disappear = true;//debugging tool
  if (key == '3') pongOnOffSwitch();//switches pong on and off
  firstPaddle.paddleKeyPressedWASD();//connects left paddle movement to WASD
  secondPaddle.paddleKeyPressedARROWKEYS();//connects right paddle movement to Arrow keys
}//end keyPressedPongOn
void UIpong() {
  if ( mouseX>=pongPause.buttonX && mouseX<=pongPause.buttonX+pongPause.buttonWidth && mouseY>=pongPause.buttonY && mouseY<=pongPause.buttonY+pongPause.buttonHeight )
  {fill(hoverOver);} else {fill(buttonColor);}
  pongPause.drawButtons();
  UIpongText("PAUSE", "PLAY");
}//end UIpongButtons
void UIpongText(String pongPauseTextPause, String pongPauseTextPlay) {
  if (pongGameOn) { 
    drawText( height, ink, CENTER, CENTER, Font, textSpace+pongPauseTextPause+textSpace, pongPause.buttonX, pongPause.buttonY, pongPause.buttonWidth, pongPause.buttonHeight);
  } else {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+pongPauseTextPlay+textSpace, pongPause.buttonX, pongPause.buttonY, pongPause.buttonWidth, pongPause.buttonHeight);
  }
}//end UIpongText
void pongOnOffSwitch() {
  if (pongGameOn) { pongGameOn = false; } else { pongGameOn = true; }//switches pong on and off
}//end pongOnOffSwitch
void explosions() { //firework effect when goal region hit
  if (mousePressed) cheatBall.disappear = false;
  /*if (firstBall.ballX <= (firstBall.ballDiameter/2) || firstBall.ballX >= (width)-(firstBall.ballDiameter/2)) {
    for (int i=0; i < firework.length; i++) 
    firework[i] = new Ball(firstBall.ballX, firstBall.ballY, 0.5); //drawing multiple balls
  }
  if (!cheatBall.disappear) {
    if (cheatBall.ballX <= (cheatBall.ballDiameter/2) || cheatBall.ballX >= (width)-(cheatBall.ballDiameter/2)) {
      for (int i=0; i < firework.length; i++) 
      firework[i] = new Ball(cheatBall.ballX, cheatBall.ballY, 0.5); //drawing multiple balls
    }
  }*/
}//end explosions
//end pongPractice subProgram

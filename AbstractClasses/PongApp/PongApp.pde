//Global Variables
boolean pongGameOn = true;
color strokeColor = #FFFBE3;
color background = #9EA9F0;
color secondaryColor = #CCC1FF;
float refMeasure;
PongPlayArea pongPlayArea;
Firework[] firework = new Firework[10];
Ball firstBall;
Paddle firstPaddle, secondPaddle;
ScoreKeep leftScoreKeep, rightScoreKeep;
Button quit;
//
void setup() {
//size(400, 700);//portrait
  size(700, 400);//landscape
  display();
  refMeasure = width/50;
  pongPlayArea = new PongPlayArea(width/2-((width*2)/5), height/10, (width*4)/5, (height*7)/10, secondaryColor);
  firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2)-(height/50), pongPlayArea.y+(pongPlayArea.h/2)-(height/50), 0, 0, 0);
  for (int i=0; i < firework.length; i++) firework[i] = new Firework(width*1.1, height*1.1, 0, 0, 0, 0.5);
  firstPaddle = new Paddle(0, 0, 0, 0, 0, width/10);
  secondPaddle = new Paddle(0, 0, 0, 0, 0, ((width*9)/10));
  quit = new Button(width-width/10, 0, width/10, height/14, 0); 
  leftScoreKeep = new ScoreKeep(0, height/10+height/14+(refMeasure/2), 0, 0, 0);
  rightScoreKeep = new ScoreKeep(0, leftScoreKeep.y+leftScoreKeep.h+(refMeasure/2), 0, 0, 0);
  firstBall.collisionPlayArea(pongPlayArea.y, pongPlayArea.h+pongPlayArea.y);
}//end setup
//
void draw() {
  background(background);
  setupText();
  pongPlayArea.drawing();
  for (int i=0; i < firework.length; i++) firework[i].explosions();
  for (int i=0; i < firework.length; i++) firework[i].drawing();
  firstBall.drawing();
  firstPaddle.drawing();
  secondPaddle.drawing();
  firstBall.collisionUpdate(firstPaddle.x, firstPaddle.y, firstPaddle.w, firstPaddle.h, secondPaddle.x, secondPaddle.y, secondPaddle.w, secondPaddle.h);
  color quitOn = #ff1919;
  color quitOff = #00b530;
  quit.drawing(quitOn, quitOff);
  leftScoreKeep.drawing();
  rightScoreKeep.drawing();
  leftScoreKeep.scoreKeepUpdate(firstBall.scoreLeft, firstBall.scoreRight, firstBall.scoreLeftText, firstBall.scoreRightText);
  rightScoreKeep.scoreKeepUpdate(firstBall.scoreLeft, firstBall.scoreRight, firstBall.scoreLeftText, firstBall.scoreRightText);
}//end draw
//
void mousePressed() {
  quit.mousePressedExitFunction(quit.y);
}//end mousePressed
//
void keyReleased() {
  firstPaddle.paddleKeyReleasedWSAD();//stops left paddle movement
  secondPaddle.paddleKeyReleasedARROWKEYS();//stops right paddle movement}//end keyReleased
}
//
void keyPressed() {
  firstPaddle.paddleKeyPressedWASD();
  secondPaddle.paddleKeyPressedARROWKEYS();
  if (key == '3') pongOnOffSwitch();//switches pong on and off
}//end keyPressed
void pongOnOffSwitch() {
  if (pongGameOn) { pongGameOn = false; } else { pongGameOn = true; }//switches pong on and off
}//end pongOnOffSwitch
//
//end pongApp

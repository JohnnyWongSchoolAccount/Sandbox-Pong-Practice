//Global Variables and objects
Ball firstBall; //Both halfs of Constructor
Ball secondBall;
Ball thirdBall;
Ball forthBall;
Ball fifthBall;
Ball sixthBall;
Ball[] firework = new Ball[25];
color backgroundColor;
color pongTableColor = 255;
//
void setup() {
  size( 700, 400 );//width and height of canvas //fullscreen(); = size(displayWidth, displayHeight);
  /*ScreenSizeChecker(); //for landscape, portrait or square veiw 
  Automatically adjusts for screen rotaction or change*/
  firstBall = new Ball();
  secondBall = new Ball();
  thirdBall = new Ball();
  forthBall = new Ball();
  fifthBall = new Ball();
  sixthBall = new Ball();
  for (int i=0; i < firework.length; i++) {
    firework[i] = new Ball((1/2));//populating firework
  }
  backgroundColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
}//end setup
//
void draw() {
  background(backgroundColor);
  firstBall.ballDraw();
  secondBall.ballDraw();
  thirdBall.ballDraw();
  forthBall.ballDraw();
  fifthBall.ballDraw();
  sixthBall.ballDraw();
  for (int i=0; i < firework.length; i++) {
    firework[i].ballDraw();//drawing 25 balls
  }
}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {
  for (int i=0; i < firework.length; i++) {
    firework[i] = new Ball((1/2));//populating firework
  }
}//end mousepressed
//
void ballCollisions() {
  /*
  if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
  if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
  if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) (xVelocity) *= -1;
  if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) (yVelocity) *= -1;
  */
}//end ballCollisions
//end Arithmetics

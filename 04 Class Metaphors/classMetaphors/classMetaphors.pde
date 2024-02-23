//Global Variables and objects
Ball firstBall; //Both halfs of Constructor
Ball[] firework = new Ball[10];
Ball cheatBall;
color backgroundColor;
color pongTableColor = 255;
//
void setup() {
  size( 700, 400 );//width and height of canvas //fullscreen(); = size(displayWidth, displayHeight);
  /*ScreenSizeChecker(); //for landscape, portrait or square veiw 
  Automatically adjusts for screen rotaction or change*/
  firstBall = new Ball();
  cheatBall = new Ball(width*-1, height*-1, firstBall.ballDiameter, firstBall.ballColor, firstBall.xVelocity, firstBall.yVelocity);
  for (int i=0; i < firework.length; i++) {//creating balls
    firework[i] = new Ball(width*-1, height*-1, (1/2));//populating firework
  }
  backgroundColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
}//end setup
//
void draw() {
  background(backgroundColor);
  if (firstBall.disappear == true) {/*empty if*/} else firstBall.ballDraw(); explosion1();
  if (cheatBall.disappear == true) {/*empty if*/} else cheatBall.ballDraw(); explosion2();
  //for (int i=0; i < firework.length; i++) firework[i].ballDraw();//drawing multiple balls
}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {
  for (int i=0; i < firework.length; i++) firework[i] = new Ball(int(mouseX), int(mouseY), 0.5);//populating firework
  cheatBall = new Ball(mouseX, mouseY, firstBall.ballDiameter, firstBall.ballColor, firstBall.xVelocity, firstBall.yVelocity);
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
//end ClassMetaphors

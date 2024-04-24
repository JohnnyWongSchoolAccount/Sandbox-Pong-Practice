class Firework extends Circle {
  //Global Variables
  float  gravity = 0.0;
  float xVelocity, yVelocity;
 // float ballX, ballY, ballW;
  //
  Firework (float x, float y, float w, float h, color c, float g) {
    super(x, y, w, h, c);
    this.xVelocity = random(-5, 5);
    this.yVelocity = random(-5, 5);
    gravity = g;
    this.x = x;
    this.y = y;
    this.c = randomColor(); //RGB color
    this.w = random(firstBall.w/1.1);
  //Add gravity to how the Fireworks.move()
  }//Fireworks
  //
  //Methods
  void drawing() {
    fill(c);
    ellipse(x, y, w, w);
    fill(colorReset);
    moving();
  }//end draw
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  //
  void bounce() {
    if (x <= ((w/2)+(width/10)) || x >= ((width*9)/10)-(w/2)) (xVelocity) *= -1;
    if (y <= ((pongPlayArea.y)+(w/2)) || y >= (height*8/10)-(w/2)) (yVelocity) *= -1;
  }//end bounce
  void moving() {
    yVelocity += gravity;
    x += (xVelocity);
    y += (yVelocity);
    //for (int i=0; i < firework.length; i++) firework[i].ballDiameter -= (ballDiameter/4);
    bounce();
  }//end moving
  //
  void explosions(float x, float y, float w) { //firework effect when goal region hit
  float ballX, ballY, ballW;
  ballX = x;
  ballY = y;
  ballW = w;
  if (ballX <= ((ballW/2)+(width/10)) || ballX >= ((width*9)/10)-(ballW/2)) {
    for (int i=0; i < firework.length; i++) 
    firework[i] = new Firework(ballX, ballY, 0, 0, 0, 0.5); //drawing multiple balls
  }
  /*if (!cheatBall.disappear) {
    if (cheatBall.ballX <= ((cheatBall.ballDiameter/2)+(width/10)) || cheatBall.ballX >= ((width*9)/10)-(cheatBall.ballDiameter/2)) {
      for (int i=0; i < firework.length; i++) 
      firework[i] = new Ball(cheatBall.ballX, cheatBall.ballY, 0.5); //drawing multiple balls
    }
  }*/
  }//end explosions
}//end Firework

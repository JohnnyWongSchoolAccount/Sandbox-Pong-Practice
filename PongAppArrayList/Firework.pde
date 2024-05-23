class Firework extends Circle {
  //Global Variables
  float  gravity = 0.0;
  int sparks = 20;
  float[] fx = new float[sparks];
  float[] fy = new float[sparks];
  float[] fw = new float[sparks]; 
  color[] fc = new color[sparks];
  float[] xVelocity = new float[sparks];
  float[] yVelocity = new float[sparks];
  //
  Firework (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  //Add gravity to how the Fireworks.move()
  }//Fireworks
  //Methods
  void drawing() {
    for ( int i=0; i<fx.length; i++ ) {
      println(fx[i], fy[i], fw[i], fw[i]);
      fill(fc[i]);
      ellipse(fx[i], fy[i], fw[i], fw[i]);
      fill(colorReset);
      moving();
    }
  }//end draw
  //
  void mousePressed() {}//end mousePressed
  //
  void keyPressed() {}//end keyPressed
  //
  void keyReleased()  {}//end keyReleased
  //
  void variablesUpdate(float ballW, float g, float xParameter, float yParameter, float v4, float v5, float v6, float v7) {
    firstBallW = ballW;
    for ( int i=0; i<fx.length; i++ ) {
      this.xVelocity[i] = random(-5, 5);
      this.yVelocity[i] = random(-5, 5);
      gravity = g;
      this.fx[i] = xParameter;
      this.fy[i] = yParameter;
      this.fc[i] = randomColor(); //RGB color
      this.fw[i] = random(ballW/1.1);
    }
  }//end variablesUpdate
  float firstBallW;
  /*void valuesProduce(float x, float y, float firstBallWidth, float g) {
    firstBallW = firstBallWidth;
    this.xVelocity = random(-5, 5);
    this.yVelocity = random(-5, 5);
    gravity = g;
    this.x = x;
    this.y = y;
    this.c = randomColor(); //RGB color
    this.w = random(firstBallW/1.1);
  }*///end valuesProduce
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  //
  /*void bounce() {
    if (x <= ((w/2)+(width/10)) || x >= ((width*9)/10)-(w/2)) (xVelocity) *= -1;
    if (y <= ((pongPlayArea.y)+(w/2)) || y >= (height*8/10)-(w/2)) (yVelocity) *= -1;
  }//end bounce*/
  void moving() {
    for ( int i=0; i<fx.length; i++ ) {
      yVelocity[i] += gravity;
      fx[i] += (xVelocity[i]);
      fy[i] += (yVelocity[i]);
      //for (int i=0; i < firework.length; i++) firework[i].ballDiameter -= (ballDiameter/4);
      //bounce();
    }
  }//end moving
  //
  void explosions(float xParameter, float yParameter, float wParameter) { //firework effect when goal region hit
  if (xParameter <= ((wParameter)+(width/10)) || xParameter >= ((width*9)/10)-(wParameter)) {
    //firework[i] = new Firework(xParameter, yParameter, 0, 0, 0); //drawing multiple balls
    variablesUpdate(0, 0.5, xParameter, yParameter, wParameter, 0, 0, 0);
  }
  /*if (!cheatBall.disappear) {
    if (cheatBall.ballX <= ((cheatBall.ballDiameter/2)+(width/10)) || cheatBall.ballX >= ((width*9)/10)-(cheatBall.ballDiameter/2)) {
      for (int i=0; i < firework.length; i++) 
      firework[i] = new Ball(cheatBall.ballX, cheatBall.ballY, 0.5); //drawing multiple balls
    }
  }*/
  }//end explosions
}//end Firework
//end Firework subProgram

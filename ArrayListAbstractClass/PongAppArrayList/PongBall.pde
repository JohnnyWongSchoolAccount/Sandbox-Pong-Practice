class Ball extends Circle {
  //Global Variables
  float xVelocity, yVelocity;
  Firework firework;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    int referentMeasures = (width<height) ? (width):(height); //ternary Operator = chooses the smaller value
    //object variables //this is "new Ball()"
    this.w = referentMeasures/25;
    this.xVelocity = xDirection()*3;
    this.yVelocity = yDirection()*3;
    this.c = randomColor();
  }//end Ball
  Ball(float x, float y, float w, float h, color c, float xV, float yV) {
    super(x, y, w, h, c);
    this.x = x;
    this.y = y;
    this.w = w;
    this.c = randomColor();
    this.xVelocity = xV/2;//garentees the second ball will not unfairly move towards the paddle at the same time as the first ball
    this.yVelocity = yV/2;//garentees the second ball will not unfairly move towards the paddle at the same time as the first ball
  }//end cheatBall
  //Methods
  void drawing() {
    if (pongOn) draw();
  }//end draw
  void draw() {
    fill(c);
    if (!disappear) {
      ellipse(x, y, w, w);
      winCondition(); 
      if (pongGameOn && !isDelayed) moving();
    }
    explosions();
    if (!pongGameOn) firework.drawing();
    DelayedOn();
    fill(colorReset);
  }//end draw
  //
  void DelayedOn() {
    if (isDelayed && millis() - pauseStartTime >= restartDelay) {
      isDelayed = false;
    }
  }//end DelayedOn
  void mousePressed() {
    if ( mouseX>=playAreaX+(w/2.1) && mouseX<=playAreaX+playAreaW-(w/2.1) && mouseY>=playAreaY+(w/2) && mouseY<=playAreaY+playAreaH-(w/2) && pongGameOn) {
      shapes.get(11).disappear = false;
      shapes.get(11).x = mouseX;
      shapes.get(11).y = mouseY;
    }
  }//end mousePressed
  //
  void keyPressed() {
    if (key == '2') shapes.get(11).disappear = true;
    if (key == '1') shapes.get(10).disappear = true;
    if (key == 'p' || key == 'P') { // Press 'p' or 'P' to toggle pause
      isDelayed = !isDelayed;
      if (isDelayed) {
        pauseStartTime = millis(); // Record the time when pause started
      }
    }
  }//end keyPressed
  //
  void keyReleased()  {}//end keyReleased
  //
  void reset() {
    toCenter();
    shapes.get(11).disappear = true;
  }//end reset
  //
  float xDirection() {
    float xDirectionLocal = int(random(-2, 2));
    while (xDirectionLocal == 0) {
      xDirectionLocal = int(random(-2, 2));
    }
    return xDirectionLocal;
  }//end xDirection
  float yDirection() {
    float yDirectionLocal = int(random(-2, 2));
    while (yDirectionLocal == 0) {
      yDirectionLocal = int(random(-2, 2));
    }
    return yDirectionLocal;
  }//end yDirection
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end Night Mode Color Selector
  void bounce() {
    //if (x <= ((w/2)+(width/10)) || firstBall.x >= ((width*9)/10)-(w/2)) c = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    if (this.x <= (playAreaX+this.w/2) || this.x >= playAreaX+playAreaW-this.w/2) (xVelocity) *= -1;
    if (this.y <= ((playAreaY)+(this.w/2)) || this.y >= (playAreaY+playAreaH)-(this.w/2)) (yVelocity) *= -1;
  }//end bounce
  void moving() {
    x += (xVelocity);
    y += (yVelocity);
    bounce();
    collisionsPaddle();
  }//end animatingMovement
  float playAreaX, playAreaY, playAreaW, playAreaH;
  void collisionPlayArea(float x, float y, float w, float h) {
    playAreaX = x;
    playAreaY = y;
    playAreaW = w;
    playAreaH = h;
  }//end collisonsUpdate
  float paddleX, paddleY, paddleW, paddleH;
  float paddleX1, paddleY1, paddleW1, paddleH1;
  void variablesUpdate(float x, float y, float w, float h, float x1, float y1, float w1, float h1, float v8, float v9) {
    paddleX = x;
    paddleY = y;
    paddleW = w;
    paddleH = h;
    paddleX1 = x1;
    paddleY1 = y1;
    paddleW1 = w1;
    paddleH1 = h1;
  }//end variablesUpdate
  void winCondition() {
    if (this.x <= (playAreaX+w/2) || this.x >= (playAreaX+playAreaW-w/2)) {
      if (this.x <= (playAreaX+w/2)) {
        winConLeft = true;
        toCenter();
        delayedCode();
        //if (!onePlayer && !screenSaver) pongGameOn = false;
      } else {
        winConRight = true;
        toCenter();
        delayedCode();
        //if (!onePlayer && !screenSaver) pongGameOn = false;
      }
    }
  }//end winCondition
  void delayedCode() {
    isDelayed = !isDelayed;
    if (isDelayed) {
      pauseStartTime = millis(); // Record the time when pause started
    }
  }
  boolean executed = false;
  void explosions() {
    if (!executed) {
      firework = new Firework(x, y, w, w, c);
      executed = true;
    }
    if (winConRight || winConLeft) {
      if (!disappear) {
        firework = new Firework(x, y, w, w, c);
        firework.variablesUpdate(w, 0.5, x, y, playAreaX, playAreaY, playAreaW, playAreaH, 0, 0);
      }
    }
  }//end explosions
  void toCenter() {
    if (shapes.get(11).disappear) {
      this.x = playAreaX+(playAreaW/2);
      this.y = playAreaY+(playAreaH/2);
    } else {
      shapes.get(10).x = playAreaX+(playAreaW/2);
      shapes.get(10).y = playAreaY+(playAreaH/2)-(w);
      shapes.get(11).x = playAreaX+(playAreaW/2);
      shapes.get(11).y = playAreaY+(playAreaH/2)+(w);
    }
  }//end toCenter
  void collisionsPaddle() {
    if (x+w >= paddleX && x <= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
      //if (pongGameOn) firstPaddle.paddleColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
      x = paddleX + paddleW;
      xVelocity *= -1;
    }
    if (x >= paddleX1-(paddleW1/4) && x <= (paddleX1+(w/2)) && y >= paddleY1 && y <= paddleY1+paddleH1) {
      //if (pongGameOn) secondPaddle.paddleColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
      x = paddleX1-paddleW1/2;
      xVelocity *= -1;
    }
  }//end collisionsPaddle
}//end Ball
//end PongBall subProgram

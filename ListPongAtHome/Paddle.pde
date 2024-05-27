class Paddle extends Rectangle {
  //Global Variables
  float ballW;
  float goalX, goalY, goalWidth, goalHeight;
  float paddleTravel;
  Boolean paddleUp = false, paddleDown = false;//keyPressed
  float playAreaY;//smallest Y value for paddle movement height/10
  float playAreaHeight;
  float pongPlayAreaMiddle;
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Paddle
  //Methods
  void drawing() {
    if (pongOn) draw();
  }//end draw
  //
  void draw() {
    fill(c);
    if ( x < pongPlayAreaMiddle ) {
      rect( x, y, w, h);
    } else {
      rect( x, y, w, h);
    }
    if (pongGameOn) paddleMove();
  } //End draw
  //
  void mousePressed() {}//end mousePressed
  //
  void keyPressed() {
    if (!onePlayer) {
      twoPlayerKeyPressed();
    } else {
      onePlayerKeyPressed();
    }
  }//end keyPressed
  void twoPlayerKeyPressed() {
    if (x < pongPlayAreaMiddle) {
      if (key == 'w' || key == 'W') {
        this.paddleDown = false;
        this.paddleUp = true;
      }
      if ( key == 's' || key == 'S') {
        this.paddleUp = false;
        this.paddleDown = true;
      }
    } else {
      if (key == CODED && keyCode == UP) {
        this.paddleDown = false;
        this.paddleUp = true;
      }
      if (key == CODED && keyCode == DOWN) {
        this.paddleUp = false;
        this.paddleDown = true;
      }
    }
  }//end twoPlayerKeyPressed
  void onePlayerKeyPressed() {
    if (x < pongPlayAreaMiddle) {
      if (key == 'w' || key == 'W') {
        this.paddleDown = false;
        this.paddleUp = true;
      }
      if ( key == 's' || key == 'S') {
        this.paddleUp = false;
        this.paddleDown = true;
      }
    } else {
    }
  }//end onePlayerKeyPressed
  //
  void keyReleased()  {
    if (x < pongPlayAreaMiddle) {
      if (key == 'w' || key == 'W') {
        this.paddleDown = false;
        this.paddleUp = false;
      }
      if ( key == 's' || key == 'S') {
        this.paddleUp = false;
        this.paddleDown = false;
      }
    } else  {
      if (key == CODED && keyCode == UP) {
        this.paddleDown = false;
        this.paddleUp = false;
      }
      if (key == CODED && keyCode == DOWN) {
        this.paddleUp = false;
        this.paddleDown = false;
      }
    }
  }//end keyReleased
  //
  void reset() {
    pongGameOn = false;
    this.y = (playAreaY) + (playAreaHeight/2) - (h/2);
  }//end reset
  //
  void paddleMove() {
    if (paddleUp) paddleUp();
    if (paddleDown) paddleDown();
    if (onePlayer) rightPaddleAI();
  }//end paddleMove
  void paddleUp() {
    y -= (paddleTravel);//moving up
    if (y < playAreaY) y = playAreaY;//error catch: will not go off screen
  }//end paddleUp
  void paddleDown() {
    y += (paddleTravel);//moving down
    if (y > playAreaY+playAreaHeight-h) y = playAreaY+playAreaHeight-h;//error catch: will not go off screen
  }//end paddleDown
  void rightPaddleAI() {
    ballUpdate(shapes.get(6).x, shapes.get(6).y);
    /*if (y <= (ballY+(h/2))) {//medium Ai
      shapes.get(9).y += paddleTravel;
    }
    if (y >= (ballY-(h/2))) {
      shapes.get(9).y -= paddleTravel;
    }*/
    if (this.y < playAreaY || this.y > playAreaY+playAreaHeight-h) {
      if (this.y < playAreaY) { //error catch
        shapes.get(9).y = playAreaY;
      } else {
        shapes.get(9).y = playAreaY+playAreaHeight-h;
      }
    } else {
      shapes.get(9).y = ballY-(h/2);
    }
  }//end rightPaddleAI
  float ballX, ballY;
  void ballUpdate(float v0, float v1) {
    ballX = v0;
    ballY = v1;
  }//end ballUpdate
  void variablesUpdate( float pongPlayAreaMiddleParameter, float xNetValue, float sp, float ballw, float playAreaYParameter, float playAreaH, float v7, float v8) {
    ballW = ballw;
    playAreaY = playAreaYParameter;//smallest Y value for paddle movement height/10
    playAreaHeight = playAreaH;
    pongPlayAreaMiddle = pongPlayAreaMiddleParameter;
    goalWidth = (ballW*3);
    float startPositionDifferent = ( 0.25 );//has to be decimal
    this.h = (playAreaHeight * startPositionDifferent);
    this.y = (playAreaY) + (playAreaHeight/2) - (h/2);
    this.w = (ballW/2); //Ball Radius
    if ( sp < pongPlayAreaMiddleParameter ) { //NOTE: var==NULL, IF == false
      goalX = sp;
      plt = y;
      plb = y+h;
      el += xNetValue+w;
    } else {
      goalX = sp - (goalWidth*2) - w;
      prt = y;
      prb = y+h;
      x -= w;
      er += xNetValue-w;
    }
    this.x = (goalX) + (goalWidth);
    this.paddleTravel = (playAreaHeight/50);//paddle speed
    this.c = randomColor();
  }//end variablesUpdate
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
} //End Paddle
//end Paddle SubProgram

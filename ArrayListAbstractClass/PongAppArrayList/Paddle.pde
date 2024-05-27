class Paddle extends Rectangle {
  //Global Variables
  float ballW;
  float goalX, goalY, goalWidth, goalHeight;
  float paddleTravel;
  Boolean paddleUp = false, paddleDown = false;//keyPressed
  float playAreaY;//smallest Y value for paddle movement height/10
  float playAreaH;
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
    this.y = (playAreaY) + (playAreaH/2) - (h/2);
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
    if (y > playAreaY+playAreaH-h) y = playAreaY+playAreaH-h;//error catch: will not go off screen
  }//end paddleDown
  void rightPaddleAI() {
    ballUpdate(shapes.get(9).x, shapes.get(9).y);
    if ( ballX > pongPlayAreaMiddle ) {
      if (mai || eai) {
        mediumEasyai();
      } else {//impossible ai
        hai();
      }
    }
    errorCatchAi();
  }//end rightPaddleAI
  void hai() {
    if (shapes.get(12).y+(h/2) <= (ballY) || shapes.get(12).y+(h/2) >= (ballY)) {
      if (shapes.get(12).y+(h/2) <= (ballY)) {//medium Ai
        shapes.get(12).y += paddleTravel;
      } else {
        shapes.get(12).y -= paddleTravel;
      }
    }
  }//end hai
  void mediumEasyai() {
    float demarcation = 0;//degree to which the paddle will miss
    if (mai) {//medium ai
      demarcation = random(playAreaH);//degree to which the paddle will miss
    } else {//easy ai
      demarcation = random(playAreaH*2);//degree to which the paddle will miss
    }
    if (shapes.get(12).y+(h/2)+demarcation <= (ballY) || shapes.get(12).y+(h/2)-demarcation >= (ballY)) {
      if (shapes.get(12).y+(h/2)+demarcation <= (ballY)) {//medium Ai
        shapes.get(12).y += paddleTravel;
      } else {
        shapes.get(12).y -= paddleTravel;
      }
    }
  }//end mediumEasyai
  void errorCatchAi() {
    if (shapes.get(12).y < playAreaY || shapes.get(12).y > playAreaY+playAreaH-shapes.get(12).h) {//error catch
      if (shapes.get(12).y < playAreaY) {
        shapes.get(12).y = playAreaY;
      } else {
        shapes.get(12).y = playAreaY+playAreaH-shapes.get(12).h;
      }
    }
  }//end errorCatchAi
  float ballX, ballY;
  void ballUpdate(float v0, float v1) {
    ballX = v0;
    ballY = v1;
  }//end ballUpdate
  void variablesUpdate( float pongPlayAreaMiddleParameter, float xNetValue, float sp, float ballw, float playAreaYParameter, float playAreaHeight, float v6, float v7, float v8) {
    ballW = ballw;
    playAreaY = playAreaYParameter;//smallest Y value for paddle movement height/10
    playAreaH = playAreaHeight;
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

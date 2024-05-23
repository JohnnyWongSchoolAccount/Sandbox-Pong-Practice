class Paddle extends Rectangle {
  //Global Variables
  float ballW;
  float goalX, goalY, goalWidth, goalHeight;
  float paddleTravel;
  Boolean paddleUp = false, paddleDown = false;//keyPressed in draw
  float playAreaY;//smallest Y value for paddle movement height/10
  float playAreaHeight;
  float pongPlayAreaMiddle;
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Paddle
  //
  //Methods
  void drawing() {
    fill(c);
    if ( x < pongPlayAreaMiddle ) {
      rect( x, y, w, h); //Note: drawing paddle must change
    } else {
      rect( x, y, w, h); //Note: drawing paddle must change
    }
    if (pongOn) paddleMove();
  } //End draw
  //
  void mousePressed() {}//end mousePressed
  //
  void keyPressed() {
    if (x < pongPlayAreaMiddle) {
      if (key == 'w' || key == 'W') {
        this.paddleDown = false;
        this.paddleUp = true;
      }
      if ( key == 's' || key == 'S') {
        this.paddleUp = false;
        this.paddleDown = true;
      }
    } else  {
      if (key == CODED && keyCode == UP) {
        this.paddleDown = false;
        this.paddleUp = true;
      }
      if (key == CODED && keyCode == DOWN) {
        this.paddleUp = false;
        this.paddleDown = true;
      }
    }
  }//end keyPressed
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
  void paddleMove() {
    if (paddleUp) paddleUp();
    if (paddleDown) paddleDown();
  }//end paddleMove
  void paddleUp() {
    y -= (paddleTravel);//moving up
    if (y < playAreaY) y = playAreaY;//error catch: will not go off screen
  }//end paddleUp
  void paddleDown() {
    y += (paddleTravel);//moving down
    if (y > playAreaY+playAreaHeight-h) y = playAreaY+playAreaHeight-h;//error catch: will not go off screen
  }//end paddleDown
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
  //Getters and Setters
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
    //if ( sp == width ) goalX = sp - goalWidth;
    this.x = (goalX) + (goalWidth);
    this.paddleTravel = (playAreaHeight/50);//paddle speed
    this.c = randomColor();
  } //End Paddle X Update
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
} //End Paddle
//end Paddle SubProgram

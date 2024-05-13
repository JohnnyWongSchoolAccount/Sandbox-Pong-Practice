class Paddle extends Rectangle {
  //Global Variables
  float goalX, goalY, goalWidth, goalHeight;
  float paddleTravel;
  boolean paddleUp = false, paddleDown = false;//keyPressed in draw
  float playAreaY;//smallest Y value for paddle movement height/10
  float playAreaHeight;
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Paddle
  //
  //Methods
  void variablesUpdate(float v0, float v1, float v2, float v3, float v4, float v5, float v6, float v7) {}
  float ballW;
  void valuesProduce(float sp, float ballWidth, float playAreaYParameter, float playAreaH) {
    ballW = ballWidth;
    playAreaY = playAreaYParameter;//smallest Y value for paddle movement height/10
    playAreaHeight = playAreaH;
    goalWidth = (ballW*3);
    this.w = (ballW/2); //Ball Radius
    if ( sp == width/10 ) goalX = sp; //Adding to the knotX
    if ( sp == (((width*9)/10)) ) goalX = sp - (goalWidth*2) - w; //Subtracting the knotX
    this.x = (goalX) + (goalWidth); //netX has two values, fix ERROR
    if ( sp == width ) goalX = sp - goalWidth;
    float startPositionDifferent = ( 0.25 );//has to be decimal
    this.h = (playAreaHeight * startPositionDifferent);
    this.y = (playAreaY) + (playAreaHeight/2) - (h/2);
    this.paddleTravel = (playAreaHeight/50);//paddle speed
    this.c = randomColor();
  }
  //
  void drawing() {
    fill(c);
    rect(x, y, w, h);
    fill(colorReset);
    if (pongGameOn) paddleMove();
  }//end drawing
  
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
  void paddleKeyPressedWASD() {
    if (key == 'w' || key == 'W') firstPaddle.paddleUp = true;
    if (key == 's' || key == 'S') firstPaddle.paddleDown = true; 
  }//end paddleKeyPressedWASD
  void paddleKeyPressedARROWKEYS() {
    if (key == CODED & keyCode == UP) secondPaddle.paddleUp = true;
    if (key == CODED & keyCode == DOWN) secondPaddle.paddleDown = true;
  }//end paddleKeyPressedARROWKEYS
  void paddleKeyReleasedWSAD() {
    if (key == 'w' || key == 'W') firstPaddle.paddleUp = false;
    if (key == 's' || key == 'S') firstPaddle.paddleDown = false; 
  }//end paddleKeyReleasedWSAD
  void paddleKeyReleasedARROWKEYS() {
    if (key == CODED & keyCode == UP) secondPaddle.paddleUp = false;
    if (key == CODED & keyCode == DOWN) secondPaddle.paddleDown = false;
  }//end paddleKeyReleasedARROWKEYS
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  //
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
}//end Paddle
//end Paddle SubProgram

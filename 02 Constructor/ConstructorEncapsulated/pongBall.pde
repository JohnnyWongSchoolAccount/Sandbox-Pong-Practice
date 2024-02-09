class Ball {
  //Global Variables
  float ballX, ballY, ballDiameter;
  color ballColor;
  //Constructor
  Ball () {
    //This is "Ball myBall"
    int startX = (width/2);//middle of canvas
    int startY = (height/2);//middle of canvas
    int referentMeasures = (width<height) ? (width):(height) ; //ternary Operator
    //object variables //this is "new Ball()"
    ballDiameter = referentMeasures/20;
    ballX = startX-((ballDiameter)/2);
    ballY = startY-((ballDiameter)/2);
    ballColor = color(245, 189, 2); //RGB color
  }//end Ball hard coded constructor
  void ballDraw() {
    //Same as draw but only for the ball
    fill(myBall.ballColor);
    ellipse( ballX, ballY, ballDiameter, ballDiameter );
  }//end draw for ball constructor
}//end Ball
//end pongBall

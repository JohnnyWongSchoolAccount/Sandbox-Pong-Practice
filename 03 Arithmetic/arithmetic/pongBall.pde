/*Known Errors
night mode = Random ball color*/
class Ball {
  //Global Variables
  float ballX, ballY, ballDiameter;
  float xVelocity, yVelocity;
  float xVelocity2, yVelocity2;
  int xDirection, yDirection;
  color ballColor;
  //Constructor
  Ball() {
    //code for all balls
    int startX = (width/2);//middle of canvas
    int startY = (height/2);//middle of canvas
    int referentMeasures = (width<height) ? (width):(height) ; //ternary Operator
    //object variables //this is "new Ball()"
    ballDiameter = referentMeasures/20;
    ballX = startX-((ballDiameter)/2);
    ballY = startY-((ballDiameter)/2);
    ballColor = color(245, 189, 2); //RGB color
    xVelocity = width/(width);//speed of ball
    yVelocity = height/(height);//speed of ball
    xDirection = -1;
    yDirection = -1;
    xVelocity2 = width/(width/2);//speed of ball
    yVelocity2 = height/(height);//speed of ball
  }//end Ball hard coded constructor
  void animatingMovement() {
    bounce();
    ballX += (xVelocity);
    ballY += (yVelocity);
  }//end animatingMovement
  void animatingMovement2() {
    bounce();
    ballX += (xVelocity2);
    ballY += (yVelocity2);
  }//end animatingMovement
  void bounce() {
    if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) (xVelocity) *= xDirection;
    if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) (yVelocity) *= yDirection;
    if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) (xVelocity2) *= xDirection;
    if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) (yVelocity2) *= yDirection;
  }//end bounce
  void ballDraw() {
    fill(ballColor);
    ellipse( ballX, ballY, ballDiameter, ballDiameter );
  }//end draw for ball constructor
}//end Ball
//end pongBall

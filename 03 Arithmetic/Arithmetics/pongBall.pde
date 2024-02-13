/*Known Errors
night mode = Random ball color*/
class Ball {
  //Global Variables
  float ballX, ballY, ballDiameter;
  float xVelocity, yVelocity;
  float xVelocity2, yVelocity2;
  float xDirection, yDirection;
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
    xVelocity = yDirection();
    yVelocity = xDirection();
    xDirection = width/(width);//speed of ball
    yDirection = height/(height);//speed of ball
    xVelocity2 = width/(width/2);//speed of ball
    yVelocity2 = height/(height);//speed of ball
  }//end Ball hard coded constructor
  float xDirection() {
    float xDirectionLocal = int(random(-2, 2));
    while (xDirectionLocal == 0) {
      xDirectionLocal = int(random(-2, 2));
    }
    return xDirectionLocal;
  }
  float yDirection() {
    float yDirectionLocal = int(random(-2, 2));
    while (yDirectionLocal == 0) {
      yDirectionLocal = int(random(-2, 2));
    }
    return yDirectionLocal;
  } 
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
    if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) (xVelocity) *= -1;
    if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) (yVelocity) *= -1;
    if (ballX < (ballDiameter/2) || ballX > (width)-(ballDiameter/2)) (xVelocity2) *= -1;
    if (ballY < (ballDiameter/2) || ballY > (height)-(ballDiameter/2)) (yVelocity2) *= -1;
  }//end bounce
  void ballDraw() {
    fill(ballColor);
    ellipse( ballX, ballY, ballDiameter, ballDiameter );
  }//end draw for ball constructor
}//end Ball
//end pongBall

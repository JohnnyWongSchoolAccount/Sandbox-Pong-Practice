/*Known Errors
night mode = Random ball color*/
class Ball {
  //Global Variables
  float ballX, ballY, ballDiameter;
  float xVelocity, yVelocity;
  float xDelta, yDelta;
  float gravity = 0.0;
  color ballColor;
  //Ball Constructor
  Ball() {
    //code for all balls
    int startX = (width/2);//middle of canvas
    int startY = (height/2);//middle of canvas
    int referentMeasures = (width<height) ? (width):(height) ; //ternary Operator
    //object variables //this is "new Ball()"
    this.ballDiameter = referentMeasures/20;
    this.ballX = startX-((ballDiameter)/2);
    this.ballY = startY-((ballDiameter)/2);
    this.ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255))); //RGB color
    this.xVelocity = yDirection();
    this.yVelocity = xDirection();
    this.xDelta = width/(width);//speed of ball
    this.yDelta = height/(height);//speed of ball
  }//end Ball hard coded constructor
  //cheatBall Constructor
  Ball(float ballXLocal, float ballYLocal, float ballDiameterParameter, color ballColorParameter) {
    this.ballX = ballXLocal;
    this.ballY = ballYLocal;
    this.ballDiameter = ballDiameterParameter;
    this.ballColor = ballColorParameter;
  }//end cheatBall
  //Firework Constructor
  Ball(float ballXLocal, float ballYLocal, float gravityLocal) {
    //triggers when ball enters goal region
    this.ballX = ballXLocal;
    this.ballY = ballYLocal;
    this.ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255))); //RGB color
    this.ballDiameter = random(width/25);
    this.xVelocity = random(-5, 5);
    this.yVelocity = random(-5, 5);
    gravity = gravityLocal;
  }//end Firework Constructor
  float xDirection() {
    float xDirectionLocal = int(random(-6, 6));
    while (xDirectionLocal == 0) {
      xDirectionLocal = int(random(-6, 6));
    }
    return xDirectionLocal;
  }//end xDirection
  float yDirection() {
    float yDirectionLocal = int(random(-6, 6));
    while (yDirectionLocal == 0) {
      yDirectionLocal = int(random(-6, 6));
    }
    return yDirectionLocal;
  }//end yDirection
  void bounce() {
    if (firstBall.ballX <= (ballDiameter/2) || firstBall.ballX >= (width)-(ballDiameter/2)) ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    if (ballY <= (ballDiameter/2) || ballY >= (height)-(ballDiameter/2)) ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    if (ballX <= (ballDiameter/2) || ballX >= (width)-(ballDiameter/2)) (xVelocity) *= -1;
    if (ballY <= (ballDiameter/2) || ballY >= (height)-(ballDiameter/2)) (yVelocity) *= -1;
    if (firstBall.ballX <= (ballDiameter) || firstBall.ballX >= (width)-(ballDiameter)) {
      for (int i=0; i < firework.length; i++) {
        firework[i] = new Ball(int(ballX), int(ballY), int(0));//populating firework
      }
    }
  }//end bounce
  void ballDraw() {
    stroke(ballColor);
    fill(ballColor);
    ellipse( ballX, ballY, ballDiameter, ballDiameter );
    fill(0);
    animatingMovement();//manipulating the variables
  }//end draw for ball constructor
  void animatingMovement() {
    yVelocity += gravity;//ball() uneffected thus no gravity = constructor has no gravity variable
    ballX += (xVelocity);
    ballY += (yVelocity);
    //for (int i=0; i < firework.length; i++) firework[i].ballDiameter -= (ballDiameter/4);
    bounce();
  }//end animatingMovement
}//end Ball
//end pongBall

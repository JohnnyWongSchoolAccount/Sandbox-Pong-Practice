//Global Variables
//
void setup() {
  size( 700, 400 );//width and height of canvas //fullscreen(); = size(displayWidth, displayHeight);
  //background(color(int(random(0, 255)), int(random(0,255)), int(random(0,255))));
  /*ScreenSizeChecker(); //for landscape, portrait or square veiw 
  Automatically adjusts for screen rotaction or change*/
  Ball myBall = new Ball(); //myball = instance of Ball
  //Constructor
  int startX = (width/2);
  int startY = (height/2);
  int referentMeasures = (width<height) ? (width):(height) ; //ternary Operator
  myBall.ballX = startX;
  myBall.ballY = startY;
  myBall.ballDiameter = referentMeasures/20;
  myBall.ballColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255))); //RGB color
  //end Constructor
  fill(myBall.ballColor);
  ellipse( myBall.ballX, myBall.ballY, myBall.ballDiameter, myBall.ballDiameter );
  Ball yourBall = new Ball(); //ball
  println("zinger");
  //exit();
}//end setup
//
void draw() {}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {}//end mousepressed
//end DRIVER

//Global Variables and objects
Ball firstBall; //Both halfs of Constructor
Ball secondBall;
color backgroundColor;
color pongTableColor = 255;
//
void setup() {
  size( 700, 400 );//width and height of canvas //fullscreen(); = size(displayWidth, displayHeight);
  /*ScreenSizeChecker(); //for landscape, portrait or square veiw 
  Automatically adjusts for screen rotaction or change*/
  firstBall = new Ball();
  secondBall = new Ball();
  backgroundColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
}//end setup
//
void draw() {
  background(backgroundColor);
  firstBall.ballDraw();
  firstBall.animatingMovement();
  secondBall.ballDraw();
  secondBall.animatingMovement2();
}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {}//end mousepressed
//end ConstructorEncapsulated

//Global Variables and objects
Ball firstBall; //Both halfs of Constructor
//
void setup() {
  size( 700, 400 );//width and height of canvas //fullscreen(); = size(displayWidth, displayHeight);
  background(color(int(random(0, 255)), int(random(0,255)), int(random(0,255))));
  /*ScreenSizeChecker(); //for landscape, portrait or square veiw 
  Automatically adjusts for screen rotaction or change*/
  firstBall = new Ball();
}//end setup
//
void draw() {
  firstBall.ballDraw();
}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {}//end mousepressed
//end ConstructorEncapsulated

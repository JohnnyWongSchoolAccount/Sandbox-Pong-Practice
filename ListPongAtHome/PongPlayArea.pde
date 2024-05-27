class PongPlayArea extends Rectangle {
  //Global Variables
  float leftNetX_Top, leftNetY_Top, leftNetX_Bottom, leftNetY_Bottom;
  float rightNetX_Top, rightNetY_Top, rightNetX_Bottom, rightNetY_Bottom;
  float middlePongTableX, middlePongTableY_Top, middlePongTableY_Bottom;
  //
  PongPlayArea (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    c = backgroundColor();
  }//end PongPlayArea
  //
  //Methods
  void drawing() {
    if (pongOn) draw();
  }//end draw
  void draw() {
    fill(c);
    rect(x, y, w, h); //Pong Table
    stroke(255);
    line(middlePongTableX, middlePongTableY_Top, middlePongTableX, middlePongTableY_Bottom);
    noStroke();
  }//end drawing
  //
  void mousePressed() {}//end mousePressed
  //
  void keyPressed() {}//end keyPressed
  //
  void keyReleased()  {}//end keyReleased
  //
  void reset() {}//end reset
  //
  color backgroundColor() { //See Night Mode
    color Color=#050500;
    return Color;
  }//end backgroundColor
  //Getters and Setters
  void variablesUpdate( float netWidth, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8 ) {
    leftNetX_Top = x+netWidth;
    leftNetY_Top = y;
    leftNetX_Bottom = leftNetX_Top;
    leftNetY_Bottom = leftNetY_Top+h;
    rightNetX_Top = w-netWidth;
    rightNetY_Top = leftNetY_Top;
    rightNetX_Bottom = rightNetX_Top;
    rightNetY_Bottom = leftNetY_Bottom;
    middlePongTableX = (x+(w/2)); //Used in Paddle Constructor to create left or right Paddle
    middlePongTableY_Top = leftNetY_Top;
    middlePongTableY_Bottom = leftNetY_Bottom;
  } //Ball Diameter Update
}//end pongPlayArea
//end pongPlayArea subProgram

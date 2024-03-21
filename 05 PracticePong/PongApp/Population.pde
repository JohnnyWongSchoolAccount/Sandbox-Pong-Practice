//Global Variables
Buttons pongPause, pong;
float refMeasure;
//color
color hoverOver = #8D9EFF;
color buttonColor = #CCC1FF;
color strokeColor = #FFFBE3;
color background = #9EA9F0;
//
void population() {
  refMeasure = width/50;
}//end population
class Buttons {
  //Global Variables
  float buttonX, buttonY, buttonWidth, buttonHeight;
  Buttons( float x, float y, float widthVariables, float heightVariables ) {
    this.buttonX = x;
    this.buttonY = y;
    this.buttonWidth = widthVariables;
    this.buttonHeight = heightVariables;
  }//end ButtonsConstructor
  Buttons( float x ) {//populating the menu buttons
    this.buttonWidth = width/6;
    this.buttonHeight = height/8;
    this.buttonX = x;
    this.buttonY = (height-(buttonHeight + refMeasure));
  }//end MenuButtons Constuctor
  void drawButtons() {
    strokeDesign();
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
  }
}//end buttons class
void strokeDesign() {
  stroke(strokeColor);
  strokeWeight((refMeasure*2)/7);
  strokeJoin(ROUND);
}//end strokeDesign
//end Population

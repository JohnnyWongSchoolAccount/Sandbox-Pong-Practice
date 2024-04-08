abstract class Shape {
  //Global Variables
  float x, y;//Position variables
  float wShape, hShape;//size and shape variables
  color cShape;//color of the shape
  color resetColor;//
  //Constructor
  Shape( float x, float y, float wParameter, float hParameter, color cParameter) {
    this.x = x;
    this.y = y;
    this.wShape = wParameter;
    this.hShape = hParameter;
    this.cShape = cParameter;
    resetColor = nightMode();
  }//end constructor
  //Methods
  void drawShape() {
  }//end drawShape
  color nightMode() {
    color nightModeColor = 0;
    return nightModeColor;
  }//end nightModeColor
}//end Shape class
//end shape subProgram

abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Circle
  //
  //Methods
  void drawing() {
    fill(c);
    ellipse(x, y, w, h);
    fill(colorReset);
  }//end draw
  //
  abstract color backgroundColor();//end Night Mode Color Selector
  //
}// end Circle

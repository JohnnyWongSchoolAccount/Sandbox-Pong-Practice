abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Circle
  //
  //Methods
  void drawing() {
    fill(c);
    ellipse(x, y, w, h);
    fill(colorReset);
  } //End draw
  //
  abstract color backgroundColor(); //End Night Mode Color Selector
  //
} // End Circle

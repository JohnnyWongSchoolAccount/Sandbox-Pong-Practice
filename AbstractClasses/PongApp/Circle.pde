abstract class Circle extends Shape {
  //Global Variables
  //Constructors
  Circle( float xGlobalParameter, float yGlobalParameter, float wGlobalParameter, float hGlobalParameter, color cGlobalParameter) {
    super(xGlobalParameter, yGlobalParameter, wGlobalParameter, hGlobalParameter, cGlobalParameter);
  }//end Circle(float float float float color)
  //Methods
  void drawCircle() {
    fill(cShape);
    ellipse(x, y, wShape, hShape);
    fill(resetColor);
  }//end drawCircle
}//end circle

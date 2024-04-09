abstract class Paddle extends Rectangle {
  //Global Variables
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Paddle
  //
  //Methods
  abstract void drawing();
  //
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
} //End Paddle

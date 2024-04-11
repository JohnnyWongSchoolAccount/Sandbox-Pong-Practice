class Paddle extends Rectangle {
  //Global Variables
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Paddle
  //
  //Methods
  void drawing() {}//end draw
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  //
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
}//end Paddle

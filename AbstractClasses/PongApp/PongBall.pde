abstract class Ball extends Circle {
  //Global Variables
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Ball
  //Methods
  void drawing() {
  }//end Draw
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end Night Mode Color Selector
  void moving() {
    //Students to finish
    //Bounce off top and bottom, paddles will be later
  }//end Move Ball
  /* Features
   - Ball in net triggers FIREWORKS
   */
}//end Ball

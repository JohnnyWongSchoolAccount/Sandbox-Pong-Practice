abstract class PongPlayArea extends Rectangle {
  //Global Variables
  //
  PongPlayArea (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End PongTable
  //
  //Methods
  abstract void drawing();
  //
  /* Features:
   - Give Ball top and bottom lines to bounce off of
   - Give Ball net dimensions & when it scores
   - Give Paddle edge of net, what it defends
   */
} //End PongPlayArea

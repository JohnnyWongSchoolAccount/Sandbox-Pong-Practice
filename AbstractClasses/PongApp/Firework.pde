abstract class Firework extends Circle {
  //Global Variables
  //
  Firework (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    //Add gravity to how the Fireworks.move()
  } //Fireworks
  //
  //Methods
  void drawing() {
  } //End draw
  //
  color backgroundColor() {
    color nm = 0;
    return nm;
  } //End Night Mode Color Selector
  //
  void differentMove() { //Note: could be different name
    //CAUTION: not the same as Ball.move()
    //Students to finish
  } //End move
} //End Firework

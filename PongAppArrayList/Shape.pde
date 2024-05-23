abstract class Shape {
  //Global Variables
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  float el; //left bounce edge, x-pixel
  float er; //right bounce edge, x-pixel
  float plt; // left top paddle y-pixel
  float plb; // left bottom paddle y-pixel
  float prt; // right top paddle y-pixel
  float prb; // right bottom paddle y-pixel
  Boolean s; //Ball Stops Moving, set in Ball Class Only
  color c, colorReset;//Shape Color
  //
  Shape(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    colorReset = backgroundColor(); //Populated Once is all constructors and updated constructors
  }//end Shape
  //
  //Methods
  abstract void drawing();
  //
  abstract void mousePressed();
  //
  abstract void keyPressed();
  //
  abstract void keyReleased();
  //
  abstract color backgroundColor();
  //
  abstract void variablesUpdate( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8);
  //
}//end Shape
//end Shape subProgram

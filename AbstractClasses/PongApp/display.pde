//Global Variables
int appWidth, appHeight;
Boolean displayCheck = false;
//
void display() {
  appWidth = width;
  appHeight = height;
  displayCheck = ( appWidth >= appHeight ) ? false : true;
}//end display
void displayLandscape() {//display error cheack
  println(" ( •, ^ •,) stop cutie");
}//end displaylandscape
//end display subProgram

class Button extends Rectangle {
  //Global Variables
  //
  Button (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Button
  //Methods
  void drawing() {
    noStroke();
    rect(x, y, w, h);
    fill(colorReset);
  }//end Drawing
  void drawing(color hoverOver, color buttonColor) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h )
    {fill(hoverOver);} else {fill(buttonColor);}
    drawing();
  }//end drawing
  void mousePressedExitFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    exit();
  }//end mousePressedExitFunction
  void mousePressedMenuToPongFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    portSwitch();
  }//end mousePressedMenuToPongFunction
  void mousePressedPauseGameFunction() {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= y && mouseY<=y+h )
    pongOnOffSwitch();
  }//end mousePressedPauseGameFunction
  void rectText (String firstText) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, y, w, h);
  }//end rectText
  void rectSwitchingText(String firstText, String secondText, boolean boole) {
    if (boole) {
      drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, y, w, h);
    } else {
      drawText( height, ink, CENTER, CENTER, Font, textSpace+secondText+textSpace, x, y, w, h);
    }
  }//end rectSwitchingText
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
}//end Button
//end Button subProgram

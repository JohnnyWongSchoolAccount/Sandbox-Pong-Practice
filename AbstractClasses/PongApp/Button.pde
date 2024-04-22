class Button extends Rectangle {
  //Global Variables
  //
  Button (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Button
  //Methods
  void drawing() {}//end Drawing
  //
  void drawing(float yParameter) {
    rect(x, yParameter, w, h);
    rectText("quit", yParameter);
    rectSwitchingText("Menu", "Pong", true, yParameter);
    fill(colorReset);
  }//end Drawing
  void drawing(color hoverOver, color buttonColor, float yParameter, float secondyParameter) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>=yParameter && mouseY<=y+h )
    {fill(hoverOver);} else {fill(buttonColor);}
    drawing( yParameter);
    if ( mouseX>=x && mouseX<=x+w && mouseY>=secondyParameter && mouseY<=y+h )
    {fill(hoverOver);} else {fill(buttonColor);}
    drawing(secondyParameter);
  }//end button
  void mousePressedExitFunction(float yParameter) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= yParameter && mouseY<=yParameter+h )
    exit();
  }//end button
  void rectText (String firstText, float yParameter) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, yParameter, w, h);
  }//end rectText
  void rectSwitchingText(String firstText, String secondText, boolean boole, float yParameter) {
    if (boole) {
      drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, yParameter, w, h);
    } else {
      drawText( height, ink, CENTER, CENTER, Font, textSpace+secondText+textSpace, x, yParameter, w, h);
    }
  }//end rectSwitchingText
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//backgroundColor
}//end Button

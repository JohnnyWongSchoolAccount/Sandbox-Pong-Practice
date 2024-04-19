class Button extends Rectangle {
  //Global Variables
  //
  Button (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Button
  //Methods
  void drawing() {}//end Drawing
  //
  void drawing(String firstText) {
    rect(x, y, w, h);
    rectText(firstText, quit.y);
    fill(colorReset);
  }//end Drawing
  void drawing(color hoverOver, color buttonColor) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h )
    {fill(hoverOver);} else {fill(buttonColor);}
    drawing("quit");
  }//end button
  void mousePressedExitFunction(float yParameter) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>= yParameter && mouseY<=yParameter+h )
    exit();
  }//end button
  void rectText (String firstText, float yParameter) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, yParameter, w, h);
  }//end rectText
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//backgroundColor
}//end Button

class Button extends Rectangle {
  //Global Variables
  //
  Button (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Button
  //Methods
  void drawing() {
    noStroke();
    if (x == quitX) {
      color quitOn = #ff1919;
      color quitOff = #00b530;
      drawing(quitOn, quitOff);
      rectText("Quit");
    }
    if (x == menuToPongX) {
      drawing(hoverOver, secondaryColor);
      rectSwitchingText("Pong", "Menu", portOn);
    }
    if (x == pauseX) {
      drawing(hoverOver, secondaryColor);
      rectSwitchingText("PAUSE", "PLAY", pongGameOn);
    }
    fill(colorReset);
  }//end Drawing
  //
  void mousePressed() {
    if (x == quitX) mousePressedExitFunction();
    if (x == menuToPongX) mousePressedMenuToPongFunction();
    if (x == pauseX) mousePressedPauseGameFunction();
  }//end mousePressed
  //
  void keyPressed() {}//end keyPressed
  //
  void keyReleased()  {}//end keyReleased
  //
  float quitX, menuToPongX, pauseX;
  void variablesUpdate(float v0, float v1, float v2, float v3, float v4, float v5, float v6, float v7) {
    quitX = v0;
    menuToPongX = v1;
    pauseX = v2;
  }//end variablesUpdate
  //
  void drawing(color hoverOver, color buttonColor) {
    if ( mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h )
    {fill(hoverOver);} else {fill(buttonColor);}
    rect(x, y, w, h);
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

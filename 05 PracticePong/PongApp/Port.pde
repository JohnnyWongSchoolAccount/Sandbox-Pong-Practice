//Global Variables
boolean portOn = true;//turns menu screen on and off
//
void drawPort() { 
  if (portOn) drawPortOn();
  pong = new MenuButtons(refMeasure);
  prerequisites();
}//end drawPort
void keyPressedPort() {
  if (key == '0') pong();
  if (key == '9') port();
}//end keyPressedPort
void mousePressedPort() {
  if ( mouseX>=pong.buttonX && mouseX<=pong.buttonX+pong.buttonWidth && mouseY>=pong.buttonY && mouseY<=pong.buttonY+pong.buttonHeight )
  pong();
}//end mousePressedPort
//
void drawPortOn() {
  background(background);
}//end drawPortOn
void prerequisites() {
  population();//Population subProgram
  UIuniversal();
}//end prerequisites
void UIuniversal() { //pongButtonX, pongButtonY, pongButtonWidth, pongButtonHeight
  if ( mouseX>=pong.buttonX && mouseX<=pong.buttonX+pong.buttonWidth && mouseY>=pong.buttonY && mouseY<=pong.buttonY+pong.buttonHeight )
  {fill(hoverOver);} else {fill(buttonColor);}
  pong.drawMenuButtons();
  UIpageText("Menu", "Pong");
}//end UImousePressed
void UIpageText(String portText, String pongText) {
  if (pongOn) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+portText+textSpace, pong.buttonX, pong.buttonY, pong.buttonWidth, pong.buttonHeight);
  } else {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+pongText+textSpace, pong.buttonX, pong.buttonY, pong.buttonWidth, pong.buttonHeight);
  }
}//end UIpageText
void pong() {
  if (pongOn) {
    pongOn = false;
    portOn = true;
  } else {
    pongOn = true;
    portOn = false;
  }
}//end pong
void port() {
  if (portOn) {
    portOn = false;
    pongOn = true;
  } else {
    pongOn = false;
    portOn = true;
  }
}//end port
//end Port subProgram

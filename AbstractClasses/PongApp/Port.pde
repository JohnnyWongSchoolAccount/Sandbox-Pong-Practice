//Global Variables
boolean portOn = true;
float refMeasure;
color strokeColor = #FFFBE3;
color background = #9EA9F0;
color secondaryColor = #CCC1FF;
Button menuToPong;
//
void setupPort() {
  refMeasure = width/50;
  menuToPong = new Button(refMeasure, (height-(height/8 + refMeasure)), width/6, height/8, 0);
}//end setupPong
void drawPort() {
  if (portOn) drawPortOn();
}//end drawPong
void mousePressedPort() {
}//end mousePressedPong
void keyPressedPort() {
  if (key == '4') portSwitch();//switches pong on and off
}//end keyPressedPong
//
void drawPortOn() {
  background(background);
  menuToPong.drawing(strokeColor, secondaryColor, quit.y, menuToPong.y);
  //menuToPong.drawing("Menu");
}//end drawPong
void mousePressedPortOn() {
}//end mousePressedPong
void keyPressedPortOn() {
}//end keyPressedPong
void portSwitch() {
  if (portOn) { 
    portOn = false; 
    pongOn = true;
  } else { 
    portOn = true;
    pongOn = false;
  }
}//end pongOnOffSwitch
//end Pong subProgram

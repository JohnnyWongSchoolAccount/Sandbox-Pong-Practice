//Global Variables
boolean portOn = true;
float refMeasure;
color strokeColor = #FFFBE3;
color background = #9EA9F0;
color secondaryColor = #CCC1FF;
color hoverOver = #8D9EFF;
//
void setupPort() {
  refMeasure = width/50;
  Button quit = new Button(width-width/10, 0, width/10, height/14, 0); 
  Button menuToPong = new Button(refMeasure, (height-(height/8 + refMeasure)), width/6, height/8, 0);
  quit.variablesUpdate(quit.x, 0, 0, 0, 0, 0, 0, 0);
  menuToPong.variablesUpdate(0, menuToPong.x, 0, 0, 0, 0, 0, 0);
  //
  shapes.add(quit); //Element 0, quit
  shapes.add(menuToPong); //Element 1, menuToPong
}//end setupPong
void drawPort() {
  if (portOn) drawPortOn();
}//end drawPong
void mousePressedPort() {
  for ( Shape s : shapes ) {
    s.mousePressed();
  }
}//end mousePressedPong
void keyPressedPort() {
  if (key == '4') portSwitch();//switches pong on and off
}//end keyPressedPong
//
void drawPortOn() {
  background(background);
}//end drawPong
void mousePressedPortOn() {}//end mousePressedPong
void keyPressedPortOn() {}//end keyPressedPong
void portSwitch() {
  if (portOn) { 
    portOn = false; 
    pongOn = true;
  } else { 
    portOn = true;
    pongOn = false;
  }
}//end pongOnOffSwitch
//end Port subProgram

//Global Variables
color strokeColor = #FFFBE3;
color background = #9EA9F0;
color secondaryColor = #CCC1FF;
PongPlayArea pongPlayArea;
Firework[] firework = new Firework[10];
Ball firstBall;
//
void setup() {
//size(400, 700);//portrait
  size(700, 400);//landscape
  display();
  pongPlayArea = new PongPlayArea(width/2-((width*2)/5), height/10, (width*4)/5, (height*7)/10, secondaryColor);
  firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2)-(height/50), pongPlayArea.y+(pongPlayArea.h/2)-(height/50), 0, 0, 0);
  for (int i=0; i < firework.length; i++) firework[i] = new Firework(width*1.1, height*1.1, 0, 0, 0, 0.5);
}//end setup
//
void draw() {
  background(background);
  pongPlayArea.drawing();
  for (int i=0; i < firework.length; i++) firework[i].drawing();
  firstBall.drawing();
  explosions();
  //firework.moving();
}//end draw
//
void mousePressed() {}//end mousePressed
//
void keyPressed() {}//end keyPressed
//
void explosions() { //firework effect when goal region hit
  if (firstBall.x <= ((firstBall.w/2)+(width/10)) || firstBall.x >= ((width*9)/10)-(firstBall.w/2)) {
    for (int i=0; i < firework.length; i++) 
    firework[i] = new Firework(firstBall.x, firstBall.y, float(height/25), float(height/25), 0, 0.5); //drawing multiple balls
  }
  /*if (!cheatBall.disappear) {
    if (cheatBall.ballX <= ((cheatBall.ballDiameter/2)+(width/10)) || cheatBall.ballX >= ((width*9)/10)-(cheatBall.ballDiameter/2)) {
      for (int i=0; i < firework.length; i++) 
      firework[i] = new Ball(cheatBall.ballX, cheatBall.ballY, 0.5); //drawing multiple balls
    }
  }*/
}//end explosions
//end pongApp
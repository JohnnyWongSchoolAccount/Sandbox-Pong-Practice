void explosion1() {
  if (firstBall.ballX <= (firstBall.ballDiameter/2) || firstBall.ballX >= (width)-(firstBall.ballDiameter/2)) {
    for (int i=0; i < firework.length; i++) { 
      firework[i] = new Ball(firstBall.ballX, firstBall.ballY, 0.5);
    }
    for (int i=0; i < firework.length; i++) firework[i].ballDraw();//drawing multiple balls
  }
}//end explosion1
void explosion2() {
  if (cheatBall.ballX <= (cheatBall.ballDiameter/2) || cheatBall.ballX >= (width)-(cheatBall.ballDiameter/2)) {
    for (int i=0; i < firework.length; i++) { 
      firework[i] = new Ball(cheatBall.ballX, cheatBall.ballY, 0.5);
    }
    for (int i=0; i < firework.length; i++) firework[i].ballDraw();//drawing multiple balls
  }
}//end explosion2
//end methodNetExplosion

/* known ERRORs
 - To be implemented
*/
 class Paddle {
  //Global Variables
  float playAreaWidth, playAreaHeight, playAreaX, playAreaY;
  float knotX, knotY, knotWidth, knotHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight;
  color paddleColor;
  //
  Paddle(float startPositionParameter, float ballDiameterParameter) {
    knotWidth = ballDiameterParameter*3;
    paddleWidth = ballDiameterParameter*(1/2);
    playAreaY = height*(1/10);
    playAreaHeight = height*(4/5);
    if (startPositionParameter == 0) { 
      knotX = startPositionParameter;
    }
    if (startPositionParameter == width) { 
      knotX = startPositionParameter-(knotWidth*2)-paddleWidth;
    }
    this.paddleX = knotX + knotWidth;
    if (startPositionParameter == width) knotX = startPositionParameter-knotWidth;
    paddleHeight = playAreaHeight*(1/4);
    this.paddleY = playAreaY + (playAreaHeight*(1/2)) - (paddleHeight*(1/2));
    paddleColor = color(#FFFFFF);
  }//end paddle
  void Paddles() {
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  }
  void drawPaddle() {
    fill(paddleColor);
    Paddles();
    fill(0);
  }
}//end Paddle
//end pongPaddle

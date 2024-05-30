class RectText extends Rectangle {
  //Global Variables
  int startTime;//for countdown code
  //
  RectText(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  //Methods
  void drawing() {
    draw();
  }//end drawing
  void draw() {
    fill(c);
    if (portOn) portDesign();
    if (pongOn) pongDesign();
    fill(colorReset);
  }//end draw
  void portDesign() {
    if (x == titleX) {
      rect(x, y, w, h);
      rectText("( •, ^ •,) stop looking, this project sucks");//_(:‚‹ l)=
    }
  }//end portDesign
  void pongDesign() {
    if (x == pauseTextX && !pongGameOn) {
      rect(x, y, w, h);
      rectText("Game Paused");
    }
    if (x == countDownX && isDelayed) {
      int time = 4000;//4 seconds -> so the count down starts at 3
      int timePassed = millis() - startTime;
      int countTime = time - timePassed;//time that is displayed
      if (countTime < 1) {//resets the counter
        startTime = millis();
        countTime = time;
      }
      int seconds = countTime/1000 % 60;//convets time value to seconds to be presented
      rectText(str(seconds));//_(:‚‹ l)=
    }
  }//end portDesign
  void keyPressed() {}//end keyPressed
  void keyReleased() {}//end keyReleased
  void mousePressed() {}//end mousePressed
  void reset() {}//end reset
  float titleX, countDownX, pauseTextX;
  void variablesUpdate(float v0, float v1, float v2, float v3, float v4, float v5, float v6, float v7, float v8, float v9) {
  titleX = v0;
  countDownX = v1;
  pauseTextX = v2;
  }//end variablesUpdate
  void rectText(String firstText) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, y, w, h);
  }//end rectText
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end Night Mode Color Selector
}//end RectText

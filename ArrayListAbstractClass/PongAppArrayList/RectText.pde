class ScoreKeep extends Rectangle {
  //Global Variables
  //refMeasure, pongPause.rectY+pongPause.rectHeight+(refMeasure/2), height/8, height/8
  ScoreKeep (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.x = refMeasure;
    this.w = height/8;
    this.h = height/8;
    this.c = secondaryColor;
  }//end Scoreboard
  //
  //Methods
  void variablesUpdate(float v0, float v1, float v2, float v3, float v4, float v5, float v6, float v7) {}
  void drawing() {
    fill(c);
    rect(x, y, w, h);
    rectText(scoreLeftText, leftScoreKeep.y);
    rectText(scoreRightText, rightScoreKeep.y);
  }//end drawing
  int scoreLeft, scoreRight;
  String scoreLeftText, scoreRightText;
  void scoreKeepUpdate(int sL, int sR, String sLT, String sRT) {
    scoreLeft = sL;
    scoreRight = sR;
    scoreLeftText = sRT;
    scoreRightText = sLT;
  }//end scoreKeepUpdate
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  void rectText(String firstText, float yParameter) {
    drawText( height, ink, CENTER, CENTER, Font, textSpace+firstText+textSpace, x, yParameter, w, h);
  }//end rectText
  //
  /* Features:
   - Any Easter Eggs
   */
}//end Scoreboard
//end rectText subProgram

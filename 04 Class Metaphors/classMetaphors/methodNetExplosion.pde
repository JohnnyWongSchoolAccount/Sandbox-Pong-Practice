void netExplosion( float xParameter, float yParameter) {
  for (int i=0; i < firework.length; i++) { 
    firework[i] = new Ball(xParameter, yParameter, 0);
  }
}//end netExplosion
//end methodNetExplosion

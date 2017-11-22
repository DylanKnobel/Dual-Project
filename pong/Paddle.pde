class Paddle {
  //data
  float x, y, paddleWidth, paddleHeight, dyL, dyR;
  boolean moveUp, moveDown;
  //constructors
  Paddle(float _x, float _y, float _paddleHeight, float _paddleWidth, float _dyR) {
    x = _x;
    y = _y;
    paddleHeight = _paddleHeight;
    paddleWidth = _paddleWidth;
    dyR = _dyR;
    moveUp = false;
    moveDown = false;
  }
  Paddle(float _x, float _y, float _paddleHeight, float _paddleWidth, int _dyL) {
    x = _x;
    y = _y;
    paddleHeight = _paddleHeight;
    paddleWidth = _paddleWidth;
    dyL = Float _dyL;
    moveUp = false;
    moveDown = false;
  }

  //behaviours
  void display() {
    fill(255);
    rect(x, y, paddleHeight, paddleWidth);
  }

  void moveLeft() {
    if (keyPressed) {
      if (key == 'w') {
        y -= (dyL);
      }
      if (key == 's') {
        y += (dyL);
      }
      if (key == 'a') {
        y -= (dyL);
      }
      if (key == 'd') {
        y += (dyL);
      }
    }
  }
  void moveRight() {
    if (keyPressed) {
      if (keyCode == UP) {
        y -= (dyR);
      }
      if (keyCode == DOWN) {
        y += (dyR);
      }
      if (keyCode == LEFT) {
        y += (dyR);
      }
      if (keyCode == RIGHT) {
        y -= (dyR);
      }
    }
  }
}
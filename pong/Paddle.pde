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
    dyL = _dyL;
    moveUp = false;
    moveDown = false;
  }

  //behaviours
  void display() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, paddleHeight, paddleWidth);
  }

  void moveLeft() {
    if (keyPressed) {
      if (key == 'w') {
        if (y == 0) {
          y -= 0;
        } else {
          y -= (dyL);
        }
      }
      if (key == 's') {
        if (y == height-paddleWidth) {
          y+=0;
        } else {
          y += (dyL);
        }
      }
      if (key == 'a') {
        if (y == 0) {
          y -= 0;
        } else {
          y -= (dyL);
        }
      }
      if (key == 'd') {
        if (y == height-paddleWidth) {
          y+=0;
        } else {
          y += (dyL);
        }
      }
    }
  }
  void moveRight() {
    if (keyPressed) {
      if (keyCode == UP) {
       if (y == 0) {
          y -= 0;
        } else {
          y -= (dyR);
        }
      }
      if (keyCode == DOWN) {
        if (y == height-paddleWidth) {
          y+=0;
        } else {
          y += (dyR);
        }
      }
      if (keyCode == LEFT) {
        if (y == height-paddleWidth) {
          y+=0;
        } else {
          y += (dyR);
        }
      }
      if (keyCode == RIGHT) {
        if (y == 0) {
          y -= 0;
        } else {
          y -= (dyR);
        }
      }
    }
  }
}
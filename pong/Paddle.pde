class Paddle {
  //data
  float x, y, paddleWidth, paddleHeight;
  boolean moveUp, moveDown;
  //constructors
  Paddle(float _x, float _y, float _paddleHeight, float _paddleWidth) {
    x = _x;
    y = _y;
    paddleHeight = _paddleHeight;
    paddleWidth = _paddleWidth;
    moveUp = false;
    moveDown = false;
  }

  //behaviours
  void display() {
    fill(255);
    rect(x, y, paddleHeight, paddleWidth);
  }

  void move() {
    if (moveUp == true) {
      if (y == 0) {
        y += 0;
      } else {
        y-=5;
      }
    } else if (moveDown == true) {
      if (y == width) {
        y += 0;
      } else {
        y+=5;
      }
    } 
    keyPressed();
    keyReleased();
    //if (moveDown) {
    //  x += 5;
    //  state = 1;
    //} else if (x == 0) {
    //  x = x + 0;
    //}
    //if (movingLeft) {
    //  x -= 5;
    //  state = 2;
    //} else {
    //  image(standingR, x, y);
    //  if (x <= 0) {
    //    x = 0;
    //  }
    //  if (x >= 915) {
    //    x = 915;
    //  }
    //}
  }

void keyPressed() {
  //this function will be called automatically every time a key on the keyboard is pressed
  if (key == 'w') {
    moveUp = true;
  } else if (key == 'a') {
    moveUp = true;
  } else if (key == 'd') {
    moveDown = true;
  } else if (key == 's') {
    moveDown = true;
  }
  if (keyCode == LEFT) {
    moveDown = true;
  }
  if (keyCode == RIGHT) {
    moveUp = true;
  }
}
void keyReleased() {
  if (key == 'w') {
    moveUp = false;
  } else if (key == 'a') {
    moveUp = false;
  } else if (key == 'd') {
    moveDown = false ;
  } else if (key == 's') {
    moveDown = false ;
  }
}


}
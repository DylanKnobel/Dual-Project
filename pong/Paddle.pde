class Paddle {
  //data
  float x, y, paddleWidth, paddleHeight, dyL, dyR;
  boolean moveUp, moveDown,moveUp2, moveDown2;
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
    rect(x, y, paddleHeight, paddleWidth);
  }

  void move() {
    if (moveUp){
      y-= dyL;}
    if (moveDown){
      y += dyL;}
    if (moveUp2){
     y -= dyR; 
    }
    if (moveDown2){
     y +=dyR; 
    }
  }
  void handleKeyPressed() {
    if (key == 'w'){
      moveUp = true;
    }
    if(key == 's' ){
      moveDown =true;
    }
    if(key == 'a' ){
      moveUp = true;
    }
    if(key == 'd' ){
      moveDown =true;
    }
    if(keyCode == UP ){
      moveUp2 = true;
    }
    if(keyCode == DOWN ){
      moveDown2 =true;
    }
    if(keyCode == LEFT ){
      moveDown2 =true;
    }
    if(keyCode == RIGHT ){
      moveUp2 = true;
    }
  }
  void handleKeyReleased(){
    if (key == 'w'){
      moveUp = false;
    }
    if(key == 's' ){
      moveDown =false;
    }
    if(key == 'a' ){
      moveUp = false;
    }
    if(key == 'd' ){
      moveDown =false;
    }
    if(keyCode == UP ){
      moveUp2 = false;
    }
    if(keyCode == DOWN ){
      moveDown2 =false;
    }
    if(keyCode == LEFT ){
      moveDown2 =false;
    }
    if(keyCode == RIGHT ){
      moveUp2 = false;
    }
    
  }
}
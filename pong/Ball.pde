class Ball {
  //data
  float x, y, dx, dy, radius;
  int hitL, hitR;
  Timer startTimer;



  //constructor(s)
  Ball(float _x, float _y, float _dx, float _dy, float _radius) {
    x = _x;
    y = _y;
    dx = _dx;
    dy = _dy;
    radius = _radius;

    startTimer = new Timer(3000);
    hitL = 0;
    hitR = 0;

  }

  //behaviour(s)
  void display() {
    fill(255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, radius*2, radius*2);
    fill(255);
    text(hitL, 50,60);
    text(hitR, width-100,60);
  }

  void move() {
    startTimer.begin();
    x += dx;
    y += dy;

    bounceIfRequired();
  }

  void bounceIfRequired() {
    if (x - radius < 0)  {
      x = width/2;
      y = height/2;
      dx *= -1;
      hitR = hitR+1;
    }
    if (x+radius > width){
      x = width/2;
      y = height/2;
      dx *= -1;
      hitL = hitL+1;
    }
    if ( (y+radius > height) || (y - radius < 0) ) {
      dy *= -1;
    }
  }





  void checkIfCollidingWith(Paddle firstPaddle) {
    float distanceBetweenObjects = dist(x, y, firstPaddle.x, firstPaddle.y);
    float block = radius + (firstPaddle.paddleHeight);

    if (distanceBetweenObjects <= block) { //collision!
      if ( (y+radius >= firstPaddle.paddleHeight) || (y - radius < 0) ) {
        dx *= -1;
        //hit = hit+1;
      }
    }
  }
}
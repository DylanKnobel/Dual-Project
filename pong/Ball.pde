class Ball {
  //data
  float x, y, dx, dy, radius;
  int hit;



  //constructor(s)
  Ball(float _x, float _y, float _dx, float _dy, float _radius) {
    x = _x;
    y = _y;
    dx = _dx;
    dy = _dy;
    radius = _radius;

    hit = 0;
  }

  //behaviour(s)
  void display() {
    fill(255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    
    x += dx;
    y += dy;

    bounceIfRequired();
  }

  void bounceIfRequired() {
    if ( (x+radius > width) || (x - radius < 0) ) {
      dx *= -1;
      hit = hit+1;
      println();
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
        hit = hit+1;
      }
    }
  }
}
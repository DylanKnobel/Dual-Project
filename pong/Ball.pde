class Ball {
  //data
  float x, y, dx, dy, radius;
  int hitL, hitR;



  //constructor(s)
  Ball(float _x, float _y, float _dx, float _dy, float _radius) {
    x = _x;
    y = _y;
    dx = _dx;
    dy = _dy;
    radius = _radius;

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
    text(hitL, 50, 60);
    text(hitR, width-100, 60);
  }

  void move() {
    x += dx;
    y += dy;

    bounceIfRequired();
  }

  void bounceIfRequired() {
    int s = int(random(1,3));
    if (x - radius < 0) {
      x = width/2;
      y = height/2;
      dx *= -1;
      hitR = hitR+1;
      if (s == 1) {
    b1 = new Ball(width/2, height/2, random(5,15), random(2,6), 20);
  } else {
    b1 = new Ball(width/2, height/2, random(-5,-15), random(-2,-6), 20);
  }
    }
    if (x+radius > width) {
      x = width/2;
      y = height/2;
      dx *= -1;
      hitL = hitL+1;
      
      if (s == 1) {
    b1 = new Ball(width/2, height/2, random(5,15), random(2,6), 20);
  } else {
    b1 = new Ball(width/2, height/2, random(-5,-15), random(-2,-6), 20);
  }
    }
    if ( (y+radius > height) || (y - radius < 0) ) {
      dy *= -1;
    }
  }





  void checkIfCollidingWith(Paddle firstPaddle) {
    float distanceBetweenObjects = dist(x, y, firstPaddle.x, firstPaddle.y);
    float block = radius + (firstPaddle.paddleHeight);

    if (distanceBetweenObjects <= block) { //collision with paddle!
      if ( (y+radius >= firstPaddle.paddleHeight) || (y - radius < 0) ) {
        if ((dx <= 25 && dy <= 25) || (dx >= -25 && dy >=- 25)) {
          dx *= 1.05;
          dy *= 1.05;
          println(dx,  dy);
        } else if(dx >= 25 && dy >= 25 || dx <= -25 && dy <= -25){
          dx*=1;
          dy*=1;
        }
        dx *= -1;

        //hit = hit+1;
      }
    }
  }
}
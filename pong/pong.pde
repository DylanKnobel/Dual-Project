Ball b1;

void setup() {
  //size(800, 800);
  fullScreen();
  b1 = new Ball(width/2, height/2, 10, 3, 20);
 //b2 = new Ball(100, 100, 2, 3, 50);
}

void draw() {
  background(0);
  
  b1.move();
  //b2.move();
  
  //b1.checkIfCollidingWith(b2);
  
  b1.display();
  //b2.display();
}


void startPlaying() {
  
}
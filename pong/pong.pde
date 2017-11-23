Ball b1;
Paddle p1;
Paddle p2;

void setup() {
  //size(800, 800);
  fullScreen();
  b1 = new Ball(width/2, height/2, 10, 3, 20);
  p1 = new Paddle(75, height/2, 25, 90,5);
  p2 = new Paddle(width-75, height/2, 25, 90,5.0);
 //b2 = new Ball(100, 100, 2, 3, 50);
}

void draw() {
  background(0);
  
  b1.move();
  //b2.move();
  //p1.moveLeft();
  //p2.moveRight();
  
  //b1.checkIfCollidingWith(p1);
  
  b1.display();
  //b2.display();
  p1.display();
  p2.display();
}
void keyPressed(){
 p1.handleKeyPressed(); 
}

void keyReleased(){
  p1.handleKeyReleased();
}

void startPlaying() {
  
}
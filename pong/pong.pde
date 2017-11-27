Ball b1;
Paddle p1;
Paddle p2;
ToggleButton button1;
int state;


void setup() {
  //size(800, 800);
  fullScreen();
  int s = int(random(1, 3));
  if (s == 1) {
    b1 = new Ball(width/2, height/2, 10, 2, 20);
  } else {
    b1 = new Ball(width/2, height/2, -10, -2, 20);
  }
  p1 = new Paddle(75, height/2, 25, 90, 5);
  p2 = new Paddle(width-75, height/2, 25, 90, 5.0);
  //b2 = new Ball(100, 100, 2, 3, 50);
  button1 = new ToggleButton(100, 100, 50, 50);
  state = 0;

}


void draw() {
  background(0);
  button1.display();

  b1.move();
  //b2.move();
  p1.move();
  p2.move();

  b1.checkIfCollidingWith(p1);
  b1.checkIfCollidingWith(p2);

  b1.display();
  //b2.display();
  p1.display();
  p2.display();
}
void keyPressed() {
  p1.handleKeyPressed();
  p2.handleKeyPressed();
}

void keyReleased() {
  p1.handleKeyReleased();
  p2.handleKeyReleased();
}

void mouseClicked() {
  button1.checkIfClicked();
}
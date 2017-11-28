Ball b1;
Paddle p1;
Paddle p2;
ToggleButton button1;
Timer start;
int state, moveState;
boolean isSelected;


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
  start = new Timer(3000);
  button1 = new ToggleButton(width/2-150, height/2-75, 300, 150);
  state = 0;
}


void draw() {
  if (state == 0) {
    background(255);
    button1.display();
  }
  if (state == 1) {
    background(0);

    b1.checkIfCollidingWith(p1);
    b1.checkIfCollidingWith(p2);

    b1.display();
    
    p1.display();
    p2.display();
    start.begin();
    state = 2;

  }
  if(state == 2){
     background(0);
    b1.move();
    
    p1.move();
    p2.move();

    b1.checkIfCollidingWith(p1);
    b1.checkIfCollidingWith(p2);

    b1.display();
   
    p1.display();
    p2.display();
    
  }
  if(isSelected == true){
    state = 1;
    
  }
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
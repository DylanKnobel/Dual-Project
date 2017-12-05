Ball b1;
Paddle p1;
Paddle p2;
ToggleButton button1;
Timer start;
int state, moveState, leftScore, rightScore;
boolean isSelected;



void setup() {
  fullScreen();
  int s = int(random(1, 3));
  if (s == 1) {
    b1 = new Ball(width/2, height/2, random(5, 15), random(2, 6), 20);
  } else {
    b1 = new Ball(width/2, height/2, random(-5, -15), random(-2, -6), 20);
  }
  p1 = new Paddle(75, height/2, 25, 90, 10);
  p2 = new Paddle(width-75, height/2, 25, 90, 10.0);
  start = new Timer(3000);
  button1 = new ToggleButton(width/2-150, height/2-75, 300, 150);
  state = 0;
}


void draw() {
  if (state == 0) {
    background(255);
    fill(0, 102, 153);
    textSize(32);
    button1.display();
    fill(0);
    text("Press button to start", width/2-150, height/2-100);
  }
  if (state == 1) {
    background(0);

    b1.checkIfCollidingWith(p1);
    b1.checkIfCollidingWith(p2);

    b1.display();

    p1.display();
    p2.display();
    if (millis() > 3000) {
      state = 2;
    }
    if (millis() > 1000) {
      textSize(72);
      text("1", width/2, height/2);
    } else if (millis() > 2000) {
      text("2", width/2, height/2);
    } else if (millis() > 3000) {
      text("3", width/2, height/2);
    }
  }


  if (state == 2) {
    background(0);
    text(leftScore, 50, 60);
    text(rightScore, width-100, 60);
    start.begin();
    b1.move();

    p1.move();
    p2.move();

    b1.checkIfCollidingWith(p1);
    b1.checkIfCollidingWith(p2);

    b1.display();

    p1.display();
    p2.display();
  }
  if (isSelected == true && state == 0) {
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
//Dylan Knobel & Caelan Apesland - Pong
//thank you to Cale for helping us with movement code for paddle
//December 5, 2017
//left side controls- use W/A to move up and S/D to move down
//right side controls- use UP/Right arrow keys to move up and Down/Left to move down
//Bugs in the code- collision problems with paddles and ball 
//Bugs in the code- speed control problem so when it speeds up after each sucsesful hit wont stop speeding up when bounces off of paddle
//hopes to add some sort of music

//global varaibles
Ball b1;
Paddle p1;
Paddle p2;
ToggleButton button1;
int state, moveState, leftScore, rightScore;
boolean isSelected;



void setup() {
  //sets up screen and all of the objects also chooses direction of ball
  fullScreen();
  int s = int(random(1, 3));
  if (s == 1) {
    b1 = new Ball(width/2, height/2, random(5, 15), random(2, 6), 20);
  } else {
    b1 = new Ball(width/2, height/2, random(-5, -15), random(-2, -6), 20);
  }
  p1 = new Paddle(75, height/2, 25, 90, 10);
  p2 = new Paddle(width-75, height/2, 25, 90, 10.0);
  button1 = new ToggleButton(width/2-150, height/2-75, 300, 150);
  state = 0;
}


void draw() {
  //set colour of background and preps the game for start
  if (state == 0) {
    background(255);
    fill(0, 102, 153);
    textSize(32);
    button1.display();
    fill(0);
    text("Press button to start", width/2-150, height/2-100);
  }
  //final prep screen before starting with 3 second delay
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
  }

//makes the game start
  if (state == 2) {
    background(0);
    text(leftScore, 50, 60);
    text(rightScore, width-100, 60);
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
//allows both paddles to be used at same time
void keyPressed() {
  p1.handleKeyPressed();
  p2.handleKeyPressed();
}
//allows both paddles to be used at same time

void keyReleased() {
  p1.handleKeyReleased();
  p2.handleKeyReleased();
}
//checks for when the button is clicked
void mouseClicked() {
  button1.checkIfClicked();
}
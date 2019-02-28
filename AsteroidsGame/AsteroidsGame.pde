/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship player1;
Asteroid[] asteroids;
float asterX;
float asterY;
float asterDir;
float asterSpeed;
float asterRad;
float asterSpin;
Star[] starField;
float starX;
float starY;
float starSize;
Bullet[] bullet;


/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */



public void setup() {
  size(640, 400);

  //initialize your asteroid array and fill it
  asteroids = new Asteroid[20];
  for ( int i = 0; i < asteroids.length; i++ ) {
    asterX = (float)(width * Math.random());
    asterY = (float)(height * Math.random());
    asterSpeed = (float)(2 * Math.random());
    asterDir = (float)(360 * Math.random());
    asterRad = (float)(Math.cos(500.0)*2);
    asterSpin = (float)(5 * Math.random());
    asteroids[i] = new Asteroid(asterX, asterY, asterSpeed, asterDir, asterSpin, 100);
  }
  //initialize ship
  player1 = new Spaceship(width/2, height/2);
  //initialize starfield
  starField = new Star[200];
  for ( int i = 0; i < starField.length; i++ ) {
    starX = random(0, width);
    starY = random(0, height);
    starSize = random(1, 5);
    starField[i] = new Star(starX, starY, starSize);
  }
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
public void draw() {
  //your code here
  background(0);
  //Draw Starfield first 
  for ( int i = 0; i < starField.length; i++ ) {
    starField[i].show();
  }
  //TODO: Part I
  player1.update();
  player1.show();  


  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II
  for ( int i = 0; i < asteroids.length; i++ ) {
    asteroids[i].update();
    asteroids[i].show();
  }

  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
}

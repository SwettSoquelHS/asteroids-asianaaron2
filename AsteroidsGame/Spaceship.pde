/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */
class Spaceship extends Mover {

  boolean LEFTTURN;
  boolean RIGHTTURN;
  boolean MOVEFORWARD;

  Spaceship(float x, float y) {
    super(x, y);
  }
  void show() {
    smooth();
    pushMatrix();
    translate(x, y);
    rotate(radians(direction+90));
    fill(124, 252, 0);
    triangle(0, -20, 10, 5, -10, 5);

    popMatrix();
  }

  void update() {
    if ( ROTATE_LEFT )
      direction -= 2;
    if ( ROTATE_RIGHT )
      direction += 2;
    if ( MOVE_FORWARD ) {
      if ( speed < 3 ) {
        speed += 0.5;
      }
    } else {
      if ( speed > 0 )
        speed -= 0.1;
      if ( speed < 0 )
        speed = 0;
    }
    super.update();
  }
}

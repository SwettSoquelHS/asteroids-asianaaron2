/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShape(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid extends Mover {   
  //your code here
  Asteroid ( float x, float y ) {
    super(x, y);
  }
  Asteroid ( float x, float y, float speed, float direction, float radius, float spin ) {
    super ( x, y, speed, direction, radius, spin );
  }

  void show() {
    spin += 0.5;
    smooth();
    pushMatrix();
    translate(x, y);
    ellipse(0, 0, radius, radius);
    rotate(radians(spin));
    beginShape();
    vertex(0, 0);
    vertex(20, 0);
    vertex(25, -10);
    vertex(32, -20);
    vertex(22, -30);
    vertex(-10, -18);
    vertex(-10, -8);
    vertex(0, 0);
    endShape();

    popMatrix();
  }
}

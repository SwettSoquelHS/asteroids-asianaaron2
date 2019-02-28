//note that this class does NOT *NEED* to extend Mover but can if you like
class Star {
  //your code here
  float xPos;
  float yPos;
  float size;

  public Star ( float x, float y, float newSize) {
    xPos = x;
    yPos = y;
    size = newSize;
  }

  void show() {
    smooth();
    pushMatrix();
    translate( xPos, yPos );
    fill(255);
    ellipse(0,0,size,size);

    popMatrix();
  }
}

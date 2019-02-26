  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
class Spaceship extends Mover {

  Spaceship(float x, float y){
    super(x,y);
  }
  
  Spaceship(float x, float y, float speed, float direction){
    super(x,y,speed,direction);
  }
  
  void show(){
    fill(255);
    
    triangle(300, 250, 290, 275, 310, 275);
  }

  //your code here
}

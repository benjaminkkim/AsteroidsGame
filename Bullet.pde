class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate(6);
  }
  public void show(){
    noStroke();
    fill(0,255,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
}

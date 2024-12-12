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
    ellipse((float)myCenterX,(float)myCenterY,7,7);
  }
 public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}

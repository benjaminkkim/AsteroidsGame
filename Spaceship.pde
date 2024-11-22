public class Spaceship extends Floater{   
  public Spaceship(){
    corners = 4;
    myColor = color(255,255,255);
    xCorners = new int[4];
    xCorners[0] = -8 * 2;
    xCorners[1] = 16 * 2;
    xCorners[2] = -8 * 2;
    xCorners[3] = -2 * 2;
    yCorners = new int[4];
    yCorners[0] = -8 * 2;
    yCorners[1] = 0;
    yCorners[2] = 8 * 2;
    yCorners[3] = 0;
    myCenterX = 300;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public void shoot(){
  }
}

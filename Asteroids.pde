public class Asteroid extends Floater{
  private double Radius;
  public Asteroid(){
    Radius = (Math.random()*50)+20;
    corners = 6;
    xCorners = new int[6];
    yCorners = new int[6];
    xCorners[0] = (int)(Math.cos((2*PI)/6)*Radius);
    yCorners[0] = (int)(Math.sin((2*PI)/6)*Radius);
    xCorners[1] = (int)(Math.cos((4*PI)/6)*Radius);
    yCorners[1] = (int)(Math.sin((4*PI)/6)*Radius);
    xCorners[2] = (int)(Math.cos((6*PI)/6)*Radius);
    yCorners[2] = (int)(Math.sin((6*PI)/6)*Radius);
    xCorners[3] = (int)(Math.cos((8*PI)/6)*Radius);
    yCorners[3] = (int)(Math.sin((8*PI)/6)*Radius);
    xCorners[4] = (int)(Math.cos((10*PI)/6)*Radius);
    yCorners[4] = (int)(Math.sin((10*PI)/6)*Radius);
    xCorners[5] = (int)(Math.cos((12*PI)/6)*Radius);
    yCorners[5] = (int)(Math.sin((12*PI)/6)*Radius);
    myCenterX = (int)(Math.random()*1280);
    myCenterY = (int)(Math.random()*1024);
    myColor = color(100,100,100);
    myXspeed = Math.random()*5-2;
    myYspeed = Math.random()*5-2;
    myPointDirection = Math.random()*360;
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

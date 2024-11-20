public class Star{ //note that this class does NOT extend Floater
  private int myX, myY, myColor;
  public Star(){
    myX = (int)(Math.random()*1280);
    myY = (int)(Math.random()*1024);
    myColor = color(255);
  }
  public void show(){
    fill(myColor);
    ellipse(myX,myY,1,1);
  }
}
public class Asteroid{
  private int myX, myY, myColor;
  public Asteroid(){
    myX = (int)(Math.random()*1280);
    myY = (int)(Math.random()*1024);
    myColor = color(100);
  }
  public void show(){
    noStroke();
    fill(myColor);
    circle(myX,myY,50);
  }
}

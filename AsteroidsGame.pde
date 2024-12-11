Star[] dots = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship yuh = new Spaceship();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
public void setup(){
  size(1000,1000);
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
    asteroids.add(new Asteroid());
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    asteroids.get(i).turn(2.5);
    float shipDestroy = dist((float)yuh.getCenterX(),(float)yuh.getCenterY(),(float)asteroids.get(i).getCenterX(),(float)asteroids.get(i).getCenterY());
    if(shipDestroy < 55){
      asteroids.remove(i);
      i--;
    }
  }
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
    for(int j = 0; j < asteroids.size(); j++){
      if(i > 0 && dist((float)asteroids.get(j).getCenterX(),(float)asteroids.get(j).getCenterY(),(float)bullets.get(i).getCenterX(),(float)bullets.get(i).getCenterY()) <= 50){
        asteroids.remove(j);
        j--;
        bullets.remove(i);
        i--;
      }
    }
  }
  if(accel){
    yuh.accelerate(0.3);
  }
  if(deaccel){
    yuh.accelerate(-0.3);
  }
  if(rightTurn){
    yuh.turn(5);
  }
  if(leftTurn){
    yuh.turn(-5);
  }
  yuh.show();
  yuh.move();
}
boolean accel = false;
boolean deaccel = false;
boolean rightTurn = false;
boolean leftTurn = false;
public void keyPressed(){
  if(key == 'w'){
    accel = true;
  }
  if(key == 'd'){
    rightTurn = true;
  }
  if(key == 'a'){
    leftTurn = true;
  }
  if(key == 's'){
    deaccel = true;
  }
  if(key == 'r'){
    yuh.hyperspace();
  }
  if(key == ' '){
    asteroids.add(new Asteroid());
  }
}
public void keyReleased(){
  if(key == 'w'){
    accel = false;
  }
  if(key == 'd'){
    rightTurn = false;
  }
  if(key == 'a'){
    leftTurn = false;
  }
  if(key == 's'){
    deaccel = false;
  }
}
public void mousePressed(){
  bullets.add(new Bullet(yuh));
}

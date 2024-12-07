Star[] dots = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship yuh = new Spaceship();
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

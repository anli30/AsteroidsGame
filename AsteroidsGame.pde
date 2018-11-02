Spaceship ship;
Star[] manyS;
public void setup() 
{
  size(500,500);
  ship = new Spaceship();
  manyS = new Star[500];
  for(int i = 0; i < manyS.length; i++){
    manyS[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < manyS.length; i++){
    manyS[i].createStar();
  }
  ship.show();
  ship.move();
}

public void keyPressed(){
  //turn counterclockwise
  if(key == 'a'){
    ship.turn(-10);
  //hyperspace
  }else if(key == 'w'){
    ship.setX((int)(Math.random()*490)+1);
    ship.setY((int)(Math.random()*490)+1);
    ship.setPointDirection((int)(Math.random()*360)+1);
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  //turn clockwise
  }else if(key == 'd'){
    ship.turn(10); 
  //acceleration
  }else if(key == 's'){
    ship.accelerate(2);
  }
}

Spaceship ship;
public void setup() 
{
  size(500,500);
  ship = new Spaceship();
}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
}

public void keyPressed(){
  //turn counterclockwise
  if(key == 'a'){
    ship.turn(-10);
  //hyperspace
  }else if(key == 'w'){
    ship.setX((int)(Math.random()*499)+1);
    ship.setY((int)(Math.random()*499)+1);
    ship.setPointDirection((int)(Math.random()*359)+1);
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  //turn clockwise
  }else if(key == 'd'){
    ship.turn(10); 
  //acceleration
  }else if(key == 's'){
    ship.setDirectionY(1);
  }
}

Spaceship ship;
Star[] manyS;
ArrayList <Bullet> shoot;
ArrayList <Asteroid> rock;
public void setup() 
{
  size(500,500);
  ship = new Spaceship();
  
  manyS = new Star[500];
  for(int i = 0; i < manyS.length; i++){
    manyS[i] = new Star();
  }
  rock = new ArrayList <Asteroid>();
  for(int i = 0; i < 20; i++){
    rock.add(new Asteroid());
  }
  shoot = new ArrayList<Bullet>();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < manyS.length; i++){
    manyS[i].createStar();
  }
  //create asteroids
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
    for(int j = 0; j < shoot.size();j++){
      //collision of bulleeet and asteroid
      float d = dist(shoot.get(j).getX(),shoot.get(j).getY(), rock.get(i).getX(), rock.get(i).getY());
      if(d < 25){
        rock.remove(i);
        shoot.remove(j);
        break;
      }
    }
  }
  for(int i = 0; i < shoot.size(); i++){
    shoot.get(i).show();
    shoot.get(i).move();
  }
    //collision of ship and asteroids
    /*float d = dist(ship.getX(),ship.getY(),rock.get(i).getX(),rock.get(i).getY());
    if(d < 15){
      rock.remove(i);
    }*/
  
  //create ship
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
  }else if(key == 'e'){
    shoot.add(new Bullet(ship));
  }
}

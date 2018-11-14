class Asteroid extends Floater {
  private int rotateS;
  public Asteroid(){
    corners = 6;  
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = 9;
    xCorners[1] = -21;
    yCorners[1] = 3;
    xCorners[2] = -9;
    yCorners[2] = -6;
    xCorners[3] = 6;
    yCorners[3] = -12;
    xCorners[4] = 15;
    yCorners[4] = 0;
    xCorners[5] = 6;
    yCorners[5] = 9;
    myColor = color(185,176,176);
    myCenterX = (int)(Math.random()*500)+ 1;
    myCenterY = (int)(Math.random()*500)+ 1;
    myDirectionX = (int)(Math.random()*2)-1;
    myDirectionY = (int)(Math.random()*2)- 1;
    if(myDirectionX == 0 && myDirectionY == 0){
      setDirectionX((int)(Math.random()*1)+ 1);
      setDirectionY((int)(Math.random()*1)+1);
    }
    myPointDirection = (int)(Math.random()*360)+1;

    rotateS = (int)(Math.random()* 4) -2;
  }
  public void setX(int x) {myCenterX = x;} 
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}  
  public void setDirectionY(double y) {myDirectionY = y;}   
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;} 
  public double getPointDirection() {return myPointDirection;}
  public void move(){
    turn(rotateS);
    super.move();
  }
}

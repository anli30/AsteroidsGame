class Asteroid extends Floater {
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
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0; 
    myPointDirection = 270;
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
}

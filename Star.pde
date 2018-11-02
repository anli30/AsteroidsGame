class Star //note that this class does NOT extend Floater
{
  protected int myX;
  protected int myY;
  protected int mySize;
  public Star(){
    myX = (int)(Math.random()*500)+1;
    myY = (int)(Math.random()*500)+1;
    mySize = (int)(Math.random()*6)+1;
  }
  public void createStar(){
    noStroke();
    fill(255);
    ellipse(myX,myY,mySize,mySize);
  }
}

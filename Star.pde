class Star //note that this class does NOT extend Floater
{
  int myX, myY,myColor,myColor2,myColor3;
  Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = ((int)(Math.random()*256));
    myColor2 = ((int)(Math.random()*256));
    myColor3 = ((int)(Math.random()*256));
  }
  public void show(){
    fill(myColor,myColor2,myColor3);
    ellipse(myX,myY,5,5);
  }
  
}

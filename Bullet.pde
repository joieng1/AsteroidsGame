public class Bullet extends Floater {
  Bullet(Spaceship theShip){
  myCenterX =  theShip.getCenterX();
  myCenterY = theShip.getCenterY();
  myXspeed = theShip.getXspeed();
  myYspeed = theShip.getYspeed();
  myPointDirection = theShip.getPointDirection() ;
  accelerate(7);
  }
  public double getBCenterX(){
    return (myCenterX);
  }
  public double getBCenterY(){
    return (myCenterY);
  }
   public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;     
    myCenterY += myYspeed; 
  }
  public void show(){
    fill(200,0,200);
    ellipse((float)myCenterX,(float)myCenterY,20,20);
  }
}

public class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = 100;
    myCenterX = (double)(Math.random()*600);
    myCenterY = (double)(Math.random()*600);
    myXspeed = (double)(Math.random()*2);
    myYspeed = (double)(Math.random()*2);
    myPointDirection = (double)(Math.random()*360);
    rotSpeed = (double)(Math.random()*11)-6;
    accelerate((double)(Math.random()*10)-5);
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public void setACenterX(double x) {
    myCenterX = x;
  }
  public void setACenterY(double y) {
    myCenterY = y;
  }
  public double getACenterX() {
    return myCenterX;
  }
  public double getACenterY() {
    return myCenterY;
  }
}

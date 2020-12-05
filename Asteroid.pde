public class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-22, 17, 13, 1, -21, -15};
    yCorners = new int[]{-14, -18, 10, 20, 18, 10};
    myColor = 100;
    myCenterX = (Math.random()*600);
    myCenterY = (Math.random()*600);
    myXspeed = (double)(Math.random()*2);
    myYspeed = (double)(Math.random()*2);
    myPointDirection = (Math.random()*360);
    rotSpeed = (double)(Math.random()*11)-6;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public void setCenterX(double x) {
    myCenterX = x;
  }
  public void setCenterY(double y) {
    myCenterY = y;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}

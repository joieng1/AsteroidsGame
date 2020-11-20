Spaceship bob = new Spaceship();
Star [] ben;
//your variable declarations here
public void setup() 
{
  size(600,600);
  background(256);
  bob.accelerate(0);
  ben = new Star[500];
  for(int i = 0;i<ben.length;i++){
    ben[i]= new Star();
  }
}
public void draw() 
{
  background(256);
  bob.move();
  bob.show();
  noStroke();
  for(int i = 0; i<ben.length;i++){
    ben[i].show();
  }
}

public void keyPressed(){
    if(key == 'h')
      {
        bob.setXspeed(0);
        bob.setCenterX((int)(Math.random()*600));
        bob.setCenterY((int)(Math.random()*600));
      }
      else if(key == 'w')
      {
        bob.accelerate(+2);
      }
      else if(key == 's')
      {
        bob.accelerate(-1);
      }
      else if(key == 'd'){
        bob.turn(10);
      }
      else if(key == 'a'){
        bob.turn(-10);
      } 
      
        
}

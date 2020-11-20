Spaceship bob = new Spaceship();
Star [] ben;
//your variable declarations here
public void setup() 
{
  size(600,600);
  background(0);
  bob.accelerate(0);
  ben = new Star[500];
  for(int i = 0;i<ben.length;i++){
    ben[i]= new Star();
  }
}
public void draw() 
{
  noStroke();
  background(0);
  for(int i = 0; i<ben.length;i++){
    ben[i].show();
  }
  bob.move();
  bob.show();
  
  
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

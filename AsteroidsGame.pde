Spaceship bob = new Spaceship();
Star [] ben;
ArrayList <Asteroid> astro = new ArrayList <Asteroid>(10);
ArrayList <Bullet> but = new ArrayList <Bullet>();
int x = 0;
//your variable declarations here
public void setup() 
{
  size(600, 600);
  background(0);
  bob.accelerate(0);
  ben = new Star[400];
  for (int i = 0; i<ben.length; i++) {
    ben[i]= new Star();
  }
  for (int i = 0; i<11; i++) {
    astro.add(new Asteroid());
    //astro.get(i).accelerate((double)(Math.random()*10)-5);
  }
  frameRate(60);
}
public void draw() 
{
  noStroke();
  background(0);
  for (int i = 0; i<ben.length; i++) {
    ben[i].show();
  }
  bob.move();
  bob.show();

  for (int i = 0; i<astro.size(); i++) {

    if (dist((float)astro.get(i).getACenterX(), (float)astro.get(i).getACenterY(), (float)bob.getCenterX(), (float)bob.getCenterY())< 20 + 5) {
      astro.remove(i);
      x = x - 5;
    } else {
      astro.get(i).move();
      astro.get(i).show();
    }
  }
  for (int i = 0; i<but.size(); i++) {
    for (int m = 0; m<astro.size(); m++) {
      if (dist((float)astro.get(m).getACenterX(), (float)astro.get(m).getACenterY(), (float)but.get(i).getBCenterX(), (float)but.get(i).getBCenterY())<20 +5) {
        astro.remove(m);
        but.remove(i);
        x = x + 10;
        break;
      } else {
        but.get(i).show();
        but.get(i).move();
      }
    }
  }
  fill(200, 0, 10);
  text(" Score: " + x, 50, 50);
  if (astro.size() < 5) {
    astro.add(new Asteroid());
  }
}


public void keyPressed() {
  if (key == 'h')
  {
    bob.setXspeed(0);
    bob.setCenterX((int)(Math.random()*600));
    bob.setCenterY((int)(Math.random()*600));
  } else if (key == 'w')
  {
    bob.accelerate(+.2);
  } else if (key == 's')
  {
    bob.accelerate(-.1);
  } else if (key == 'd') {
    bob.turn(10);
  } else if (key == 'a') {
    bob.turn(-10);
  } else if ( key == ' ') {
    but.add(new Bullet(bob));
  }
}

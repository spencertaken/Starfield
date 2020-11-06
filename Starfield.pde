Particle [] bob; 
void setup()
{
  background(0);
  size(400,400);
  bob = new Particle[1500]; 
  for (int i=0;i<bob.length;i++){
    bob[i] = new Particle(); 
    bob[0] = new OddballParticle();
    bob[1] = new OddballParticle();
    bob[2] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for (int i=0;i<bob.length;i++) {
  bob[i].move(); 
  bob[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  color c; 
  Particle() {
    myX = 200;
    myY = 200; 
    myAngle = (Math.random()*(2*Math.PI)); 
    mySpeed = (Math.random()*10); 
    c = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed; 
    myY = myY + Math.sin(myAngle)*mySpeed; 
  }
  void show() {
    fill(c); 
    ellipse((int)myX,(int)myY,7,7);
  }
}

class OddballParticle extends Particle
{
  OddballParticle() {
    mySpeed = Math.random(); //isn't redundant because I need to change mySpeed to make OddballParticle slower
    c = color(255,255,255);  //isn't redundant because I want OddballParticle to be white
  }
  void show() {
    fill(c); //isn't redundant because I want OddballParticle to be white
    ellipse((int)myX+(int)(Math.random()*33)-16,(int)myY+(int)(Math.random()*33)-16,45,45); //isn't redundant because I want OddballParticle to shake chaotically
  }
}

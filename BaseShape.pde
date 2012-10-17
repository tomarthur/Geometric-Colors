class BaseShape { //shape SuperConstructor™

  PVector pos;
  PVector speed;
  PVector accel;

  color c;

  BaseShape(PVector _pos, float speedX, float speedY, float accellX, float accellY, color c)
  {
    pos = _pos;
    speed = new PVector(speedX, speedY);
    accel = new PVector(accellX, accellY);
    this.c = c;
  }


  void draw () {
    fill(c);
//    speed.add(accel);
      pos.add(speed);
//    
    if(pos.x < 0 || pos.x > width)
    {
      speed.x *= -1;
    }
    if(pos.y < 0 || pos.y > width)
    {
      speed.y *= -1;
    }
    
  }
  
}


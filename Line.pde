class Line extends BaseShape { // tells circle that it's based off of BaseShape

    PVector size;
    color c;

  Line(float _x, float _y, float _x1, float _x2, color _c) {
    super(new PVector(_x, _y), 0, 0, 0, 0, _c);
    size = new PVector (_x1, _x2);
    c = _c;
  }

  void draw() {
    super.draw();
    stroke(c);    
    line(pos.x, pos.y, size.x, size.y); //get to a specific value in another class by using the class.variable
    stroke(0);
  }
}


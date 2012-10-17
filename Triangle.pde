class Triangle extends BaseShape{ // tells circle that it's based off of BaseShape

  float x2, y2, x3, y3;


  Triangle(float _x1, float _y1, float _x2, float _y2, float _x3, float _y3, color _c) {
    super(new PVector(_x1, _y1), 0, 0, 0, 0, color(_c)); //sends data to BaseShape constructor
    x2 = _x2;
    x3 = _x3;
    y2 = _y2;
    y3 = _y3;
  }

  void draw() {
    super.draw();
    triangle(pos.x, pos.y, x2, y2, x3, y3); //get to a specific value in another class by using the class.variable
  }
}


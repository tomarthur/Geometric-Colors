class Circle extends BaseShape { // tells circle that it's based off of BaseShape

    float d;

  Circle(float _d, float _x, float _y) {
    super(new PVector(_x, _y), 0, 0, 0, 0, color(255, 0, 0)); //sends data to BaseShape constructor
    d = _d;
  }

  //Constructor: make a spot in memory, set up the objs
  Circle(float _d, float _x, float _y, color _c) {
    super(new PVector(_x, _y), 1, 1, 0.1, 0.1, _c);
    d = _d;
  }

  void draw() {
    super.draw();
    ellipseMode(CENTER);
    ellipse(pos.x, pos.y, d, d); //get to a specific value in another class by using the class.variable
  }
}


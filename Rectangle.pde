class Rectangle extends BaseShape{ // tells circle that it's based off of BaseShape

  PVector size;
  
  Rectangle(float _x, float _y, float _w, float _h) {
    super(new PVector(_x, _y), 0, 0, 0, 0, color(0, 255, 0)); //sends data to BaseShape constructor ****if you want to call the super constructor you must do it first
    size = new PVector (_w, _h);
  }

  //Constructor: make a spot in memory, set up the objs
  Rectangle(float _x, float _y, float _w, float _h, color _c) {
    super(new PVector(_x, _y), 0, 0, 0, 0, _c);
    size = new PVector (_w, _h);
  }

  void draw() {
    super.draw();
    rectMode(CENTER);                   //change rectangle mode to center so they are built with a center point
    rect(pos.x, pos.y, size.x, size.y); //get to a specific value in another class by using the class.variable
  }
}


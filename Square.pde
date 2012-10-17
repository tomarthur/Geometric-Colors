class Square extends Rectangle {

  Square(float _x, float _y, float _size) {
    super(_x, _y, _size, _size); //sends data to BaseShape constructor ****if you want to call the super constructor you must do it first
  }

  //Constructor: make a spot in memory, set up the objs
  Square(float _x, float _y, float _size, color _c) {
    super(_x, _y, _size, _size, _c);
  }
}



class InfoBar extends Rectangle { // tells InfoBar that it's based off of BaseShape
  
  boolean hm, bm, sm; //define booleans for status display
//  String vm;
  
  InfoBar(float _x, float _y, float _w, float _h, color _c, boolean huemmode, boolean saturationmode, boolean brightnessmode) {
    super(_x, _y, _w, _h, _c);
    hm = huemmode;
    sm = saturationmode;
    bm = brightnessmode;
//    vm = vectormode;
  }
  
  void draw(){
    super.draw();                         //draw the rectangle    
    
    //change text if conditons are true.
    if (hm == true){
      fill (95, 82, 86);
      text("h = hue on", 5, 605);
    }
    else{
      fill (231, 0, 88);
      text("h = hue off", 5, 605);
    }
    if (sm == true){
      fill (95, 82, 86);
      text("s = saturation on", 85, 605);
    }
    else{
      fill (231, 0, 88);
      text("s = saturation off", 85, 605);
    } 
    if (bm == true){
      fill (95, 82, 86);
      text("b = brightness on", 205, 605);
    }
    else{
      fill (231, 0, 88);
      text("b = brightness off", 205, 605);
    }
    fill (231, 0, 88);
    text ("r = square, t = triangle, c = circle, l = line", 330, 605);
  }
  
}


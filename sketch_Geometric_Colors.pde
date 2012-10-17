/*

ICM & Visual Language Week 6 Homework
 
 ///ICM///
 > using ArrayLists
 > polymorphism
 
 ///Visual Language///
 >  Color Composition (Hue, Saturation & Brightness
 
 
 ///Notes///
 > colors apparently must be defined after the switch to HSB
 color htwGreen = color(74, 99, 73); //ITP howtomworks blog green in HSB)
 color htwOrange = color(16, 78, 93); //ITP howtomworks blog orange in HSB)
 
 */


ArrayList geometric;   //array list to shore shapes
InfoBar infobar;     //info bar so you know what mode you are in

float theta = 0;      //used for adjusting angle of rotation
float c = 0;          //count to track new objets

//values for hue saturation & brightness (allows for switching modes of change)
float hue = 16;
float saturation = 78;
float brightness = 93;

//booleans for which type of shape to add to the arraylist
boolean circleD = false;
boolean triangleD = false;
boolean squareD = true;
boolean hueC = false;
boolean saturationC = false;
boolean brightnessC = false;

void setup () {
  size (600, 610);
  frameRate(30);
  smooth();
  colorMode(HSB, 360, 100, 100); //didn't work correctly until processing was told what the max values for HSB were
  background(0);
  
  strokeWeight(0.5);
  //  noStroke();
  
  geometric = new ArrayList();       //array list for shapes;
  

  for (int i = 0; i < 2; i++) {     //add new squares to ArrayList
    geometric.add(new Square(0, 0, 600-(i*40), color(hue, saturation, brightness)));
  }
}

void draw () {


  for (int i = 0; i < geometric.size(); i++) {    //draws all shapes in arraylist geometric
    BaseShape shp = (BaseShape)geometric.get(i);
    for (float f = 0; f < PI; f+=0.2)
    {
      pushMatrix();                               //prevent translation & rotation from becoming cumulative
      translate(width/2, height/2);               //move to the center of the sketch
      rotate(theta+f);                            //rotate  
      shp.draw();
      popMatrix();
    }
    if (geometric.size() >= 5) { //clear out old shapes to keep things moving & to save pattern
      int q = 0;
      geometric.remove(q);
      q++;
            
    }
 
  }
 

  theta+=0.01;
  // intialize & draw info bar
  infobar = new InfoBar(300, 600, 600, 20, color(0, 0, 0, 188), hueC, saturationC, brightnessC);
  infobar.draw();

}



void keyPressed() {
  if (key =='r' || key == 't' || key == 'c' || key == 'l') {
    if (hueC == true) {                //change hue if selected
      if (hue < 360) {
        hue+= 10;                      //add 10 to hue until max
      }
      else {
        hue = 0;                      //return hue to 0
      }
    }
    if (saturationC == true) {         //change saturation if selected
      if (saturation < 100) {
        saturation+= 10;
      }
      else {
        saturation = 0;
      }
    }
    if (brightnessC == true) {         //change brightness if selected
      if (brightness >= 0) {
        brightness-= 10;
      }
      else {
        brightness = 100;
      }
    }
  }
  
  if (key == 'h') {                   //toggle hue mode on/off
    hueC = !hueC;
    println(hueC);
  }
  else if (key == 's') {              //toggle saturation mode on/off
    saturationC = !saturationC;
  }
  else if (key == 'b') {              //toggle brightness mode on/off
    brightnessC = !brightnessC;
  }
  else if (keyCode == DELETE || keyCode == BACKSPACE){  //backspace to clear stuff out
    for (int i = 0; i < geometric.size(); i++)
      {    
           geometric.remove(i);
           c = 0;
           background(0);
      }
  }
  else if (key == 'r') {                   //build squares
    geometric.add(new Square(0, 0, 600-(c*20), color(hue, saturation, brightness))); //make a new shape
    c++;
  }
  else if (key == 'c') {             //build circles (something weird going on because of BaseShape movement)
    geometric.add(new Circle(300-(c*20), 0, 0, color(hue, saturation, brightness))); //make a new shape
    c++;
  }
  else if (key == 't') {            //build triangles
    geometric.add(new Triangle(0, 0, 0, 400-(c*20), 400-(c*20), 0, color(hue, saturation, brightness)));
    c++;
  }
  else if (key == 'l') {            //build lines
    geometric.add(new Line(0, 0, 300-(c*50), 300-(c*50), color(hue, saturation, brightness)));   
    c++;
}
}



//// not sure where to put this
//
//    if (hueC == true) {
//     if(hue >= 360) //if hue gets higher than max, return it to 0
//     {
//       hue = 0;
//     }
//     else {
//       hue+= (h*2); //if hue is less than max, add to hue
//     }


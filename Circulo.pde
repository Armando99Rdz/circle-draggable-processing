class Circulo {
  float x;
  float y;
  float radio;
  boolean selected;
  
  Circulo(float a, float b, float c) {
    x = a;
    y = b;
    radio = c;
    selected = false;
    ellipseMode(CENTER);
  }
  
  void dibuja (){
    
    noFill();
    
    // set rgb color
    stroke(0,0,0);
    
    //   (posicion(x,y), alto, ancho)
    ellipse(x, y, radio*2, radio*2);
    
  }
  
  
  boolean isAdentro(float a, float b){
    if(dist(a,b,x,y) <= radio)
      return true;
    else
      return false;
  }
  
}

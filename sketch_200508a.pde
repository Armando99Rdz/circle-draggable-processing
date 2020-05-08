
Circulo c1;
color background;

void setup(){
  size(600,400);
  c1 = new Circulo(random(510), 310, 90);
  background = color(200,200,200);
  
}


void draw(){
  background(background);
  c1.dibuja();
}


void mouseDragged(){
  if(c1.isAdentro(mouseX,mouseY)){
    c1.x = mouseX;
    c1.y = mouseY;
  }
}

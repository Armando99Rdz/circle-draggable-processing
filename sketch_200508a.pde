

Circulo c1, c2, c3, tmp;
ArrayList <Circulo> circulos = new <Circulo>ArrayList();
float x, y;
int idSelected = 0; // id del circulo
int k = 10; // num de circulos
int idTmp = 0;
 
color background;

void setup(){
  size(600,400);
  background = color(200,200,200);
  tmp = null;
  for(int i = 0; i < k; i ++){
    x = random(width-40);
    y = random(height-40);
    tmp = new Circulo(x, y, 50, idTmp);
    idTmp++;
    circulos.add(tmp);
  }
  
}


void draw(){
  background(background);
}


void mouseDragged(){
  if(c1.isAdentro(mouseX,mouseY)){
    c1.x = mouseX;
    c1.y = mouseY;
  }
}

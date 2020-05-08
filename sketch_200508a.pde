

Circulo tmp;
ArrayList <Circulo> circulos = new <Circulo>ArrayList();
float x, y; // coordenadas en cada instanicia circulo
int k = 14; // num de circulos
int idTmp = 0; // identificar circulo a arrastrar
color background; // color background de la ventana
color bgCircle; // circle background color

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
  idTmp = -1; // -1 == ningun circulo seleccionado
  background(background);
  for (Circulo c: circulos){
    c.dibuja();
  }
}


void mouseDragged(){
  // identificar circulo a mover
  for (Circulo c: circulos){ 
    if(c.isAdentro(mouseX,mouseY)){ // si esta sobre el circulo
      if(c.id >= idTmp){ // si el id es mayor al actual
        idTmp = c.id; // sustituye circulo actual
        println("idTmp = " + idTmp);
      }
    } 
  }
  // TODO: modificar coordenadas del circulo
  if(idTmp != -1){ // mientras existe un circulo
    println("Un circulo seleccionado");
    for (Circulo c: circulos){
      if(idTmp == c.id){ // circulo encontrado
        c.x = mouseX;
        c.y = mouseY;
        println("Coordenadas modificadas");
      }
    }
  }else{
    println("Ningún circulo seleccionado");
  }
}

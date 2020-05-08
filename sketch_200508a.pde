/**
 * Armando Rodriguez
 */


Circulo tmp;
ArrayList <Circulo> circulos = new <Circulo>ArrayList();
float x, y; // coordenadas en cada instanicia circulo
int k = 30; // num de circulos
int idTmp = 0; // identificar circulo a arrastrar
color background; // color background de la ventana
color bgCircle; // circle background color

void setup(){
  size(800,600);
  background = color(200,200,200);
  tmp = null;
  for(int i = 0; i < k; i ++){
    x = random(width-40);
    y = random(height-40);
    tmp = new Circulo(x, y, 30, idTmp);
    idTmp++;
    circulos.add(tmp);
  }
  
}


void draw(){
  
  background(background);
  for (Circulo c: circulos){
    c.dibuja();
  }
}


void mousePressed(){
  // identificar circulo a mover
  for (int i = circulos.size()-1;  i >= 0 ; i--){ 
    if(circulos.get(i).isAdentro(mouseX,mouseY)){ // si esta sobre el circulo
      if(circulos.get(i).id >= idTmp){ // si el id es mayor al actual
        tmp = circulos.get(i); // sustituye circulo actual
        idTmp = tmp.id;
        println("idTmp = " + idTmp);
        break;
      }
    } 
  }
}

void mouseReleased(){ // reset actual id
  idTmp = -1; // -1 == ningun circulo seleccionado
}

void mouseDragged(){
  
  // TODO: modificar coordenadas del circulo
  if(idTmp != -1){ // mientras existe un circulo
    for (Circulo c: circulos){
      if(idTmp == c.id){ // circulo encontrado
        c.x = mouseX;
        c.y = mouseY;
      }
    }
  }else{
    println("Ningún circulo seleccionado");
  }
}

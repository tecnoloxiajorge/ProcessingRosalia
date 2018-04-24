Circulo circulo1; //objeto de la clase Circulo

void setup() {
  size(480,320);//tamaño ventana
  circulo1=new Circulo();
  circulo1.posX=240;
  circulo1.posY=160;
  circulo1.velX=1;
  circulo1.velY=-1;
  circulo1.tam=80;
}

void draw() {
  background(#39BBF5); //color de fondo
  
  circulo1.mostrar();
  circulo1.mover();
  
}

class Circulo {
  int posX, posY, velX, velY, tam; //atributos
  
  void mostrar() { //método de la clase Circulo
    fill(#F4F528); //color de relleno
    noStroke(); //sin borde
    ellipse(posX,posY,tam,tam);
  }
  void mover() {
    posX=posX+velX;
    posY=posY+velY;
    if (posX>=440 || posX<=40) {velX=-velX;}
    if (posY>=280 || posY<=40) {velY=-velY;}
  }
}
Circulo circulo1, circulo2;
color amarillo=#F5FC24, azul=#3B84FF, rojo=#FF3B3F,verde=#3BFF46;

void setup() {
  size(480,320);
  surface.setResizable(true);
  circulo1=new Circulo(260,160,1,-1,80,amarillo); //instanciamos objeto de la clase Circulo
  circulo2=new Circulo(60,260,2,-2,50,rojo);
}

void draw() {
  background(#08b8eb);
  circulo1.mostrar();
  circulo1.mover();
  circulo2.mostrar();
  circulo2.mover();
  
}

class Circulo {
  int posX, posY, velX, velY, tam;
  color relleno;
  
  Circulo (int pX, int pY, int vX, int vY, int ta, color rell){ //constructor
          posX=pX;
          posY=pY; 
          velX=vX; 
          velY=vY;
          tam=ta; 
          relleno=rell;
  }
  void mostrar() { //método de la clase
      fill(relleno); //color de relleno
      noStroke(); //sin borde
      ellipse(posX,posY,tam,tam);
  }
  void mover() {
      posX=posX+velX;
      posY=posY+velY;
      if(posX>=width-tam/2 || posX<=tam/2) {velX=-velX;}
      if(posY>=height-tam/2 || posY<=tam/2) {velY=-velY;}
  }
}
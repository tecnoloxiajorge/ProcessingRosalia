class Circulo {
  //atributos
  int posX, posY, velX, velY, tam;
  color relleno;
  //constructor
  Circulo (int pX, int pY, int vX, int vY, int ta, color rell) {
    posX=pX;
    posY=pY;
    velX=vX;
    velY=vY;
    tam=ta;
    relleno=rell;
  }
  //métodos
  void mostrar() {
    fill(relleno);
    noStroke();
    ellipse(posX,posY,tam,tam);
  }
  void mover() {
    posX=posX+velX;
    posY=posY+velY;
    if (posX>=width-tam/2 || posX<=tam/2) {velX=-velX;}
    if (posY>=height-tam/2 || posY<=tam/2) {velY=-velY;}
  }
}
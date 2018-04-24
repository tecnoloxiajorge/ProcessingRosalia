class Circulo {
  int posX, posY, velX, velY, tam;
  color relleno;
  boolean alive;
  //constructor
  Circulo (int pX, int pY, int vX, int vY, int ta, color rell){ 
          posX=pX;
          posY=pY; 
          velX=vX; 
          velY=vY;
          tam=ta; 
          relleno=rell;
          alive=true;
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
  void rebotar() {
     for (int i=1; i<=numCirculos;i++) {
     int distancia=int(dist(posX,posY,circulo[i].posX, circulo[i].posY)); 
     int radios=(tam+circulo[i].tam)/2;
     if (distancia==0) { break;}
     else if (distancia<=radios) { 
       if (tam/2>=circulo[i].tam/2) {
         velX=-velX; 
         velY=-velY;
         relleno=circulo[i].relleno;
         tam++;
        circulo[i].posX=20000;}
       
     }
  }}

}

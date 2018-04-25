class Circulo {
  //atributos
  float tam;
  float posX, posY, velX, velY;
  color relleno;
  //constructor
  Circulo (float pX, float pY, float vX, float vY, float ta,color re) {
    posX=pX;
    posY=pY;
    velX=vX;
    velY=vY;
    tam=ta;
    relleno=re;
  }
  //métodos
  void mostrar() {
    fill(relleno); //color de relleno
    noStroke(); //sin borde
    ellipse(posX,posY,tam,tam);
  }
  void mover() {
    posX=posX+velX;
    posY=posY+velY;
    velX=velX*0.995; //reducir velocidad
    velY=velY*0.995;
    if (velX>5) {velX=5;}
    if (velX<-5) {velX=-5;}
    if (velY>5) {velY=5;}
    if (velY<-5) {velY=-5;}
    if (posX>=width-tam/2 || posX<=tam/2) {velX=-velX;}
    if (posY>=height-tam/2 || posY<=tam/2) {velY=-velY;}
  }
  void rebotar() {
    for (int i=1; i<=numCirculos;i++) {
      float distancia=int(dist(posX,posY,circulo[i].posX,circulo[i].posY));
      float radios=tam/2+circulo[i].tam/2;
      if (distancia==0) {break;}
      else if (distancia<=radios) {
        velX=-circulo[i].velX*1.03; 
        velY=-circulo[i].velY*1.03;
        circulo[i].velX=-velX*1.03;
        circulo[i].velY=-velY*1.03; 
        tam=tam*1.05;
        if (tam>30) {tam=30;}
        circulo[i].tam=circulo[i].tam*0.95;
        if (circulo[i].tam<5) {circulo[i].tam=5;}
        
      }
    }
  }
  
}

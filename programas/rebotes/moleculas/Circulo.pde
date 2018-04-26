class Circulo {
  //atributos
  float posX, posY;
  int tam;
  float velX, velY;
  color relleno;
  boolean on;
  int cont;
  //constructor
  Circulo (float pX, float pY, float vX, float vY, int ta, color rel, boolean off, int con) {
   posX=pX;
   posY=pY;
   velX=vX;
   velY=vY;
   tam=ta;
   relleno=rel;
   on=off;
   cont=con;
  }
  //métodos
  void mostrar() {
    fill(relleno);
    noStroke();
    ellipse(posX,posY,tam,tam);
  }
  void mover() {
    float ruidoX=random(-1,1);
    float ruidoY=random(-1,1);
    posX=posX+velX+ruidoX;
    posY=posY+velY+ruidoY;
    if (posX>=width-tam || posX<=tam) {velX=-velX;}
    if (posY>=height-tam || posY<=tam) {velY=-velY;}
  }
  void rebotar() {
    if (on==true) {
    for (int i=1; i<=total; i++) {
   float distancia=dist(posX,posY,atomo[i].posX,atomo[i].posY);
   float radios=(tam+atomo[i].tam)/2;
   if (distancia<=radios && relleno==atomo[i].relleno) {
     velX=-velX; 
     velY=-velY;
     atomo[i].velX=-atomo[i].velX;
     atomo[i].velY=-atomo[i].velY;}
  }}}
  
  void enlazar() {
   
    for (int i=1; i<=hidro; i++) {
   float distancia=dist(posX,posY,atomo[i].posX,atomo[i].posY);
   float radios=(tam+atomo[i].tam)/2;
   if (distancia<=radios && relleno!=atomo[i].relleno && atomo[i].on==true && on==true) {
     velX=velX*0.5;
     velY=velY*0.5;
     atomo[i].velX=velX; 
     atomo[i].velY=velY;
     
     if(i<=hidro) { atomo[i].on=false; cont++; atomo[i].relleno=#85D6F5;}
     if (cont>=2){relleno=amarillo;on=false;}
    
 
  }}}}
/* rebotes
* @author jorge gomez
* @version 3.0
*/

int numCirculos=100;
Circulo[] circulo=new Circulo[numCirculos+1];

color azul=#4380FF, verde=#1CFA42, rojo=#FA1C23, amarillo=#F2FA1C, lila=#ED1AEA, crema=#FCC242;
void setup() {
  size(480,320);//tamaño ventana
  surface.setResizable(true);
  for (int i=1;i<=numCirculos;i++) {
    int tam=int(random(10,20));
    int pX=int(random(tam/2,width-tam/2));
    int pY=int(random(tam/2,height-tam/2));
    int vX=int(random(-4,4));
    if(vX==0) {vX=1;}
    int vY=int(random(-4,4));
    if(vY==0) {vY=1;}
    color relleno=rojo;
    int col=int(random(1,7));
    switch(col) {
      case 1: relleno=azul; break;
      case 2: relleno=verde; break;
      case 3: relleno=rojo; break;
      case 4: relleno=amarillo; break;
      case 5: relleno=lila; break;
      case 6: relleno=crema; break;
    }
    circulo[i]=new Circulo(pX,pY,vX,vY,tam,relleno);
  }
   
}

void draw() {
  background(#39BBF5); //color de fondo
  for (int i=1; i<=numCirculos;i++) {
  circulo[i].mostrar();
  circulo[i].mover();
  circulo[i].rebotar();
  }
  
}
 void mousePressed() {
   for (int i=1;i<=numCirculos;i++) {
    if(mouseX>=circulo[i].posX-circulo[i].tam/2 && mouseX<=circulo[i].posX+circulo[i].tam/2 && 
    mouseY>=circulo[i].posY-circulo[i].tam/2 && mouseY<=circulo[i].posY+circulo[i].tam/2) {
      circulo[i].velX=5*circulo[i].velX;
      circulo[i].velY=5*circulo[i].velY;
    }
  }}
  
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

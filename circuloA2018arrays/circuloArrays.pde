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

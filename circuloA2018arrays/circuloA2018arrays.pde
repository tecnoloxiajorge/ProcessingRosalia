int numCirculos=20;
Circulo[] circulo=new Circulo[numCirculos+1];

color amarillo=#F5FC24, azul=#3B84FF, rojo=#FF3B3F,verde=#3BFF46;

void setup() {
  size(640,420);
  surface.setResizable(true);
  for (int i=1; i<=numCirculos;i++) {
    int tam=int(random(10,30));
    int posX=int(random(tam/2,width-tam/2));
    int posY=int(random(tam/2,height-tam/2));
    int velX=int(random(-3,3));
    if(velX==0) {velX=1;}
    int velY=int(random(-3,3));
    if(velY==0) {velY=1;}
    //color
    color relleno=rojo;
    int col=int(random(1,5));
    switch(col){
     case(1): relleno=amarillo; break;
     case(2): relleno=azul;break;
     case(3): relleno=rojo;break;
     case(4): relleno=verde;break;
    }
  
    circulo[i]=new Circulo(posX,posY,velX,velY,tam,relleno); 
  }
}

void draw() {
  background(#08b8eb);
  for (int i=1; i<=numCirculos;i++) {
   if(circulo[i].alive==true) {
  circulo[i].mostrar();}
  circulo[i].mover();
  circulo[i].rebotar();
  }
  
}

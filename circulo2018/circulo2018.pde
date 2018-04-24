//variables
int posX=240;
int posY=160;
int velX=1;
int velY=2;

int posX2=80;
int posY2=80;
int velX2=-2;
int velY2=1;

int posX3=60;
int posY3=270;
int velX3=-2;
int velY3=-1;

void setup() {
  size(480,320);//tamaño ventana
}

void draw() {
  background(#39BBF5); //color de fondo
  
  //creamos y movemos círculo
  fill(#F4F528); //color de relleno
  noStroke(); //sin borde
  ellipse(posX,posY,80,80);
  posX=posX+velX;
  posY=posY+velY;
  if (posX>=440 || posX<=40) {velX=-velX;}
  if (posY>=280 || posY<=40) {velY=-velY;}
  
  //creamos y movemos círculo 2
  fill(#F528D3); //color de relleno
  noStroke(); //sin borde
  ellipse(posX2,posY2,80,80);
  posX2=posX2+velX2;
  posY2=posY2+velY2;
  if (posX2>=440 || posX2<=40) {velX2=-velX2;}
  if (posY2>=280 || posY2<=40) {velY2=-velY2;}
  
  //creamos y movemos círculo 3
  fill(#93F545); //color de relleno
  noStroke(); //sin borde
  ellipse(posX3,posY3,80,80);
  posX3=posX3+velX3;
  posY3=posY3+velY3;
  if (posX3>=440 || posX3<=40) {velX3=-velX3;}
  if (posY3>=280 || posY3<=40) {velY3=-velY3;}
}
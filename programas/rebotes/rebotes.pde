/* rebotes
* @author jorge gomez
* @version 1.0
*/

//variables
int posX=int(random(40,600)); //declaro variable posición X
int posY=int(random(40,320)); //declaro variable posición Y
int velX=3;
int velY=2;
//circulo2
int posX2=int(random(40,600));; 
int posY2=int(random(40,320)); 
int velX2=2;
int velY2=-2;
//circulo3
int posX3=int(random(40,600)); 
int posY3=int(random(40,320)); 
int velX3=-2;
int velY3=2;
//color
color coloruno=#638AF0;
color colordos=#F25A5A;
color colortres=#63EA36;
color auxiliar;

void setup() {
  size(640,360); //tamaño ventana
  surface.setResizable(true);//ventana ajustable
}

void draw(){
  background(255); //fondo blanco
  
  //circulo1
  fill(coloruno); //color de relleno
  noStroke(); //sin borde
  ellipse(posX,posY,80,80); //dibuja circulo
  posX=posX+velX;
  posY=posY+velY;
  if(posX>=width-40 || posX<=40) {velX=-velX;}
  if(posY>=height-40 || posY<=40) {velY=-velY;}
  
  //circulo2
  fill(colordos); //color de relleno
  noStroke(); //sin borde
  ellipse(posX2,posY2,80,80); //dibuja circulo
  posX2=posX2+velX2;
  posY2=posY2+velY2;
  if(posX2>=width-40 || posX2<=40) {velX2=-velX2;}
  if(posY2>=height-40 || posY2<=40) {velY2=-velY2;}
  
  //circulo3
  fill(colortres); //color de relleno
  noStroke(); //sin borde
  ellipse(posX3,posY3,60,60); //dibuja circulo
  posX3=posX3+velX3;
  posY3=posY3+velY3;
  if(posX3>=width-30 || posX3<=30) {velX3=-velX3;}
  if(posY3>=height-30 || posY3<=30) {velY3=-velY3;}
  
  //choque entre circulos
  if(dist(posX,posY,posX2,posY2)<=80){
    velX=-velX;
    velX2=-velX2;
    velY=-velY;
    velY2=-velY2;
    auxiliar=coloruno;
    coloruno=colordos;
    colordos=auxiliar;
  }
  if(dist(posX,posY,posX3,posY3)<=70){
    velX=-velX;
    velX3=-velX3;
    velY=-velY;
    velY3=-velY3;
    auxiliar=coloruno;
    coloruno=colortres;
    colortres=auxiliar;
  }
  if(dist(posX2,posY2,posX3,posY3)<=70){
    velX2=-velX2;
    velX3=-velX3;
    velY2=-velY2;
    velY3=-velY3;
    auxiliar=colordos;
    colordos=colortres;
    colortres=auxiliar;
  }
  if(mousePressed) {  
    velX=int(random(-5,5));
    velY=int(random(-5,5));
    velX2=int(random(-5,5));
    velY2=int(random(-5,5));
    velX3=int(random(-5,5));
    velY3=int(random(-5,5));
  }
}
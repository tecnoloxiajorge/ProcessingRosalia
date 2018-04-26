int hidro=40, oxigen=10;
int total=hidro+oxigen;
Circulo [] atomo=new Circulo[total+1];

color verde=#2BFA3A, rojo=#FA141C, amarillo=#FCF226;

void setup() {
  size(640,480);
  surface.setResizable(true);
  for (int i=1; i<=hidro;i++){
    float posX=random(40,width-40);
    float posY=random(40, height-40);
    float velX=random(-3,3);
    float velY=random(-3,3);
  atomo[i]=new Circulo(posX,posY,velX,velY,15,verde,true,0); //instanciar el objeto
  }
  for (int i=hidro+1; i<=total;i++){
    float posX=random(40,width-40);
    float posY=random(40, height-40);
    float velX=random(-3,3);
    float velY=random(-3,3);
  atomo[i]=new Circulo(posX,posY,velX,velY,25,rojo,true,0); //instanciar el objeto
  }
   }

void draw() {
  background(#9ba2f6);
  for (int i=1; i<=total;i++){
   atomo[i].mostrar();
  atomo[i].mover();
  //atomo[i].rebotar();
  atomo[i].enlazar();
  }
   }
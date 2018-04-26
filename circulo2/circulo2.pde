Circulo aro1,aro2,aro3;
color verde=#2BFA3A, rojo=#FA141C, azul=#3979FF, amarillo=#FCF226;
void setup() {
  size(480,320);
   surface.setResizable(true);
   
   aro1=new Circulo(260,160,1,-1,80,amarillo); //instanciar el objeto
   aro2=new Circulo(60,240,-2,1,50,azul); //instanciar el objeto
   aro3=new Circulo(360,80,2,-2,30,rojo); //instanciar el objeto
}

void draw() {
  background(#9ba2f6);
  aro1.mostrar();
  aro1.mover();
  aro2.mostrar();
  aro2.mover();
  aro3.mostrar();
  aro3.mover();
  
}
class Anillo{
     float x, y; //Coordenada-x, coordenada-y
     float diametro; //Diámetro del anillo
     boolean on = false; //Muestra o no el anillo
     color relleno;
     
 
 void inicio(float xpos, float ypos) {
     x=xpos;
     y=ypos;
     on=true;
     diametro=1;
     relleno=255; 
   
}

void crecer() {
    if (on==true) {
     diametro += 0.5;
     if (diametro>400) {
     on=false;
 }
 }
 }
void mostrar() {
     if (on==true) {
     noFill();
     fill( random(255), random(255), random(255), random(255)); 
     strokeWeight(4);
     stroke(155, 153);
     ellipse(x,y,diametro,diametro);
 }
}
}

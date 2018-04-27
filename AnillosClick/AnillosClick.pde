Anillo[] anillos; //Declara el array

int numAnillos = 100;
int anilloActual = 0;

void setup() {
   size(800, 800);
   smooth();
   anillos = new Anillo[numAnillos]; //Crea el array
   for (int i = 0; i < numAnillos; i++) {
   anillos[i] = new Anillo(); //Crea cada objeto
 }
}
void draw() {
   background(0);
   for (int i = 0; i<numAnillos; i++) {
   anillos[i].crecer();
   anillos[i].mostrar();
     
 }
}
//Click para crear un nuevo anillo
void mousePressed() {
   anillos[anilloActual].inicio(mouseX, mouseY);
   anilloActual++;
   if (anilloActual>=numAnillos) {
   anilloActual=0;
   fill( random(255), random(255), random(255), random(255)); 
 }
}

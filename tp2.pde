//Leonela Malena Vazquez
//Comision 3

PFont fuente;

PImage foto1, foto2, foto3, foto4;

float l = 0;
float s = 0;
float z = 0;
int x = 500;
int y = 400;
int w = 100;
int h = 45;
boolean button1= false;
boolean button2 = false;
int segundos = 0;
int estado = 0;
boolean arranca = false;

float c = 550;
float k = 380;

void setup() {
  size(640, 480);
  fuente = loadFont ("MalgunGothicBold-77.vlw");

  foto1 = loadImage ("foto1.jpg");
  foto2 = loadImage ("foto2.jpg");
  foto3 = loadImage ("foto3.jpg");
  foto4 = loadImage ("foto4.jpg");

  estado = 0;
}

void draw() {
  switch (estado) {
  case 0:
    image (foto1, 0, 0, 640, 480);
    fill (255);
    textFont (fuente);
    textSize(33);
    text ("INSIDEOUT. \n La casa, un santuario sensible.", width/2, l);
    textAlign(CENTER);
    l += 1;
    if (l >= 90) {
      l = 90;
    } else {
      l += 1;
    }
    if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h)) {
      noStroke();
      fill (0, 0, 255, 50);
    } else {
      noStroke();
      fill(255);
    }
    rect(x, y, w, h);
    fill (0);
    textSize(24);
    text("Iniciar", 550, 430);
    break;
  case 1:
    if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h && mousePressed)) {
      button1= true;
      button2= true;
    }
    if (button1 || button2) {
      segundos++;
      if (arranca == true) {
        if (arranca) {
          println ("valor = ", segundos);
        }
      }
      if (segundos > 0 && segundos <= 150) {
        image (foto2, 0, 0, 640, 480);
        textFont (fuente);
        textSize (24);
        textAlign (CENTER);
        fill (0);
        text ("Es una instalación que permite al usuario experimentar \n una tormenta dentro de un invernadero \n iluminado por proyecciones de luz.", s, 190);
        s += 1;
        if (s >= 317) {
          s = 317;
        } else {
          s += 1;
        }
        textFont (fuente);
        textSize (24);
        textAlign (CENTER);
        fill (255);
        text ("Es una instalación que permite al usuario experimentar \n una tormenta dentro de un invernadero \n iluminado por proyecciones de luz.", s, 187);
        s += 1;
        if (s >= 315) {
          s = 315;
        } else {
          s += 1;
        }
      }
      if (segundos > 150 && segundos <= 300) {
        image (foto3, 0, 0, 640, 480);
        textFont (fuente);
        textSize (22);
        textAlign (CENTER);
        fill(0, 150);
        text("El proyecto pretende interrogar y explorar \n la casa como un lugar seguro de las fuerzas de la naturaleza, \n confronta al espectador haciéndolo sentir vulnerable \n y expuesto mientras transcurre una tormenta, para, \n posteriormente, ofrecerle calma y seguridad.", width/2 + 2, z + 2);
        fill (255);
        text("El proyecto pretende interrogar y explorar \n la casa como un lugar seguro de las fuerzas de la naturaleza, \n confronta al espectador haciéndolo sentir vulnerable \n y expuesto mientras transcurre una tormenta, para, \n posteriormente, ofrecerle calma y seguridad.", width/2, z);
      }
      z -= 1.5;
      if (z < -480) {
        z = 480;
      } else {
        z -= 1.5;
      }
      if (segundos > 300) {
        image (foto4, 0, 0, 640, 480);
        textFont (fuente);
        textSize (19);
        textAlign (CENTER);
        fill(0, 150);
        text("Mientras arrecia la lluvia, \n los muros protectores se desvanecen en la oscuridad y la tormenta llega \n a un clímax en el que el sujeto se siente desnudo y purificado por la luz. \n El sonido juega un papel protagónico, así como la luz.", c + 2, k + 2);
        fill (255);
        text("Mientras arrecia la lluvia, \n los muros protectores se desvanecen en la oscuridad y la tormenta llega \n a un clímax en el que el sujeto se siente desnudo y purificado por la luz. \n El sonido juega un papel protagónico, así como la luz.", c, k);
        c -= 2;
        k -= 2;
        if (c < 550 && k < 380) {
        }
        if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h)) {
          noStroke();
          fill (0, 0, 255, 50);
        } else {
          noStroke();
          fill(255);
        }
        rect(x, y, w, h);
        fill (0);
        textSize(18);
        text("Reiniciar", 550, 430);
        if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h && mousePressed)) {
          button2= true;
          segundos =0;

          break;
        }
      }
    }
  }
}




void mousePressed() {
  if (mouseX > 500 && mouseX < 600 && mouseY > 400 && mouseY < 445) {
    // Si se presiona el botón "Iniciar" en cualquier estado
    if (estado == 0) {
      // Si estamos en la pantalla de inicio
      estado = 1; // Cambiar al siguiente estado
      arranca = true;
      segundos = 0;
      l = 0;
      s = 0;
      z = 0;
      c = 550;
      k = 380;
    } else {
      // Si se presiona el botón "Reiniciar" en cualquier otro estado
      estado = 0; // Volver a la pantalla de inicio
      segundos = 0;
      l = 0;
      s = 0;
      z = 0;
      c = 550;
      k = 380;
    }
  }
}

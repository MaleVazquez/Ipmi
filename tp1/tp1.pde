//Leonela Malena Vazquez
//comisión3
//94030/1




PImage Yo;


void setup() {
  size (800, 400);
  Yo = loadImage ("yo.jpg");
  Yo.resize(430, 0);
}

void draw () {

  translate(width/2, height/2);
  rotate(-HALF_PI);
  imageMode(CENTER);
  image (Yo, 0, -220, height, width/2);




  //fondo
  fill(167, 162, 152);
  rect(-200, -25, 400, 800);
  
  fill(33, 38, 39);
  rect(-200, -25, 350, 200); //puerta
  
  fill(49, 55, 57);
  rect(-200, -25, 320, 170); //marco
  
  
  fill(57, 44, 43);
  circle(180, 370, 150); //ventana

  fill(197, 227, 234);
  circle(180, 370, 100); //fondo ventana

  fill(57, 44, 43);
  rect(175, 320, 5, 100); //linea




  fill(108, 61, 59);
  rect(-150, 125, 180, 150); //pelo

  fill(252, 255, 255);
  rect(-200, 120, 120, 170); //remera

  fill(0);
  circle(-130, 200, 50);

  fill(32, 85, 98);
  rect(-200, 80, 120, 80); //campera
  rect(-200, 240, 120, 80); //campera

  fill(255, 204, 153);
  rect(-80, 188, 25, 30); //cuello

  //rostro
  fill(255, 204, 153);
  ellipse(25, 200, 180, 150); //cara

  fill(255); // Color blanco
  ellipse(55, 240, 15, 40); // ojo izquierdo
  ellipse(55, 160, 15, 40); // ojo derecho

  fill(0);
  ellipse(55, 240, 15, 20); // pupila izquierda
  ellipse(55, 160, 15, 20); // pupila derecha

  fill(255, 204, 150);
  arc(25, 200, 14, 30, 0, PI); // nariz

  line(-10, 180, -10, 230); //boca

  fill(0);
  triangle(55, 138, 67, 90, 61, 150); //delineado 1
  fill(0);
  triangle(55, 260, 67, 310, 61, 254); //delineado 2
  
  fill(109, 61, 59);
  triangle(120, 200, 80, 79, 70, 160); //flequillo
  triangle(120, 200, 80, 230, 70, 320); //flequillo

  fill(232, 194, 56);
  circle(44, 122, 15); //arito 1
  circle(44, 274, 15); //arito 2
  
  
}

//Leonela Malena Vazquez
//Comision 3
//LINK AL VIDEO: https://www.youtube.com/watch?v=nXZsaQ4xXH0


int Ncuadrados = 13; // Número de cuadrados
float maxSize;
PImage cuadra;
float rotacion = 0; // Ángulo de rotación inicial
boolean activar = false;
color negro, blanco;
float rotacionInicial = QUARTER_PI / 4; // Rotación inicial de los cuadrados

void setup() {
  size(800, 400); // Resolución de 800x400
  maxSize = width / 3.5; // Ajustar el tamaño del cuadrado más grande para la grilla
  cuadra = loadImage("cuadrado.jpg"); // Asegúrate de que el nombre del archivo sea correcto
  negro = color(0);
  blanco = color(255);
}

void draw() {
  background(255);
  image(cuadra, 0, 0, 400, 400); 

  int gridCols = 2;
  int gridRows = 2;
  float gridWidth = width / 4;
  float gridHeight = height / 2;

  for (int col = 2; col < gridCols + 2; col++) { // Iniciamos en col = 2 para solo dibujar en la mitad derecha
    for (int row = 0; row < gridRows; row++) {
      pushMatrix();
      translate(col * gridWidth + gridWidth / 2, row * gridHeight + gridHeight / 2); // Centra el origen de coordenadas en cada celda de la grilla
      if (activar) {
        float factorRotacion = map(mouseY, 0, height, 0, QUARTER_PI); // Factor de rotación basado en la posición vertical del mouse
        rotacion += factorRotacion; // Actualiza el ángulo de rotación
      }
      dibujarCuadrados();
      popMatrix();
    }
  }
}

// Función propia con parámetros que NO retorna un valor
void dibujarCuadrados() {
  for (int i = 0; i < Ncuadrados; i++) { // Ciclo FOR para los cuadrados concéntricos
    if (i % 2 == 0) {
      fill(blanco);
    } else {
      fill(negro);
    }

    float size = calcularTamanoCuadrado(i); // Uso de función propia con retorno de valor
    pushMatrix();
    if (!activar) {
      rotate(PI / 4 * i / Ncuadrados); // Rotar ligeramente cada cuadrado en el estado estático inicial
    } else {
      rotate(rotacionInicial + rotacion * i / Ncuadrados); // Aplica la rotación inicial y la rotación dinámica al cuadrado
    }
    rectMode(CENTER);
    noStroke();
    rect(0, 0, size, size);
    popMatrix();
  }
}

// Función propia con parámetros que RETORNA un valor
float calcularTamanoCuadrado(int indice) {
  return maxSize * (Ncuadrados - indice) / Ncuadrados;
}

void keyPressed() {
  if (key == 'R' || key == 'r') {
    reiniciarPrograma(); // Reiniciar el programa
  }
}

void mousePressed() {
  if (mouseX > width / 2 && mouseX < width && mouseY > 0 && mouseY < height) {
    activar = true; // Modificación de variables
    negro = color(random(0, 125)); // Funciones matemáticas: random()
    blanco = color(random(125, 255)); // Funciones matemáticas: random()
  }
}

void reiniciarPrograma() {
  activar = false;
  rotacion = 0;
  negro = color(0);
  blanco = color(255);
}

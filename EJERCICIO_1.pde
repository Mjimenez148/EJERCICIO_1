// Ejercicio 1: Patrón de Formas Aleatorias Crea un programa que dibuje un patrón de formas geométricas (círculos, rectángulos, etc.) 
// de diferentes tamaños y colores en la pantalla de manera aleatoria. Asegúrate de que el patrón se vea interesante y único cada vez 
// que se ejecute el programa. Luego, exporta una captura de pantalla del patrón y agrega la imagen al informe PDF.

void setup() {
  size(800, 800);
  background(#0D0C0C);
  noLoop();
}
void draw() {
  for (int i = 0; i < 1000; i++) {
    float x = random(width);
    float y = random(height);
    
    if (random(1) > 0.5) {
      fill(random(255), random(255), random(255), 150);
      ellipse(x, y, random(20, 50), random(20, 50));
    } else if (random(1) > 0.5) {
      fill(random(255), random(255), random(255), 150);
      triangle(x, y, x + random(20, 50), y + random(20, 50), x - random(20, 50), y + random(20, 50));
    } else if (random(1) < 0.5) {
      stroke(random(255), random(255), random(255), 150);
      line(x, y, x + random(-50, 50), y + random(-50, 50));
    }
    else {
      fill(random(255), random(255), random(255), 150);
      rect(x, y, random(20, 50), random(20, 50));
    }
  }
  
  fill(#FAFF00); // Color negro para el texto
  textSize(32); // Tamaño del texto
  text("Por: Mónica Jiménez", 510,785);
}

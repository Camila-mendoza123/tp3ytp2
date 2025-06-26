
float calcularTamPeque(float x, float y, boolean animar, float mouseX, float mouseY) {
  if (!animar) {
    return TAM_ORIG;
  }
  float d = dist(mouseX, mouseY, x, y);
  return map(d, 0, 300, 80, 10); 
}

void dibujarRectangulos(float zonaX, float anchoCelda, float altoVentana) {
  fill(240, 193, 22);
  rect(zonaX + 0 * anchoCelda, 0, anchoCelda, altoVentana);

  fill(173, 196, 245);
  rect(zonaX + 1 * anchoCelda, 0, anchoCelda, altoVentana);

  fill(247, 61, 40);
  rect(zonaX + 2 * anchoCelda, 0, anchoCelda, altoVentana);
}

//(grilla).
void dibujarCirculos(float zonaX, float anchoCelda, float altoCelda, boolean animar, float movc, float mouseX, float mouseY) {
  
  for (int col = 0; col < columnas; col++) {
    for (int fila = 0; fila < filas; fila++) {
      
      //Calcula la posición del círculo:
      float posX = zonaX + col * anchoCelda + anchoCelda / 2;
      float posY = fila * altoCelda + altoCelda / 2;
      float x = posX;
      float y = posY + (animar ? movc : 0);

      if (col == 0) fill(0);
      else if (col == 1) fill(247, 171, 5);
      else fill(128, 149, 109);
      ellipse(x, y, anchoCelda, altoCelda);

      float tamPeque = calcularTamPeque(x, y, animar, mouseX, mouseY);

      if (col == 0) fill(240, 193, 22);
      else if (col == 1) fill(173, 196, 245);
      else fill(247, 61, 40);

      ellipse(x, y, tamPeque, tamPeque);
    }
  }
}

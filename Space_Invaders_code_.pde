void gameOver() {
  redLine();
  for (int i = 0; i < 60; i++) {
    checkIfAlienIsOverRedLine(i);
  }
}

void redLine() {
  fill(#FF2B2B);
  rect(-10, 650, 1500, 5);
}


void checkIfAlienIsOverRedLine(int i) {
  if (alienYPositionArray[i] > 625) {
    gameState = 5;
  }
}

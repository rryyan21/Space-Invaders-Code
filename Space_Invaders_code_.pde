void gameState5() {
  EndScreen();
  gameReset();
}

void gameReset() {
  if (mousePressed && mouseX<700 && mouseX>500 && mouseY > 400 && mouseY<600) {
    exit();
  }
}

void EndScreen() {
  rect(0, 0, 999, 999);
  fill(#FFFFFF);
  textSize(75);
  text("GAME OVER", 300, 300);
  textSize(50);
  text("Your Finale Score Was :", 100, 700);
  text(score, 600, 700);
  textSize(25);
  text("click here to play again", 500, 389);
  fill(#000000);
  stroke(#7F3991);
  rect(500, 400, 200, 200);
}

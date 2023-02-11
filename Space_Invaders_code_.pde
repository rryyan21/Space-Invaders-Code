
void gameState3() {
  background(bg);
  //  tint(255, 128);
  laser();
  Tank();
  Player();
  SpaceShipEdgeCollision();
  laser();
  instructions();
  returnButtonYText();
  returnButton();
  returnMouseOverButton();
  returnMousePressed();
}

void returnButtonYText() {
  textSize(15);
  text("Click Here To Go Back", 50, 50);
}
void instructions() {
  fill(#FFFFFF);
  textSize(45);
  text("How To Play Space Invaders!", 300, 100);
  textSize(25);
  text("Aliens are attacking earth! You are our last hope!", 300, 300);
  text("Use right and left arrow keys to move your ship!", 300, 350);
  text("press spacebar to shoot a laser at the aliens!", 300, 400);
  text("Be careful aliens will move down once they hit the edge!", 300, 450);
  text("You must destroy all of them before they reach the red line!", 300, 500);
  text("Good luck, humanity rests in your hands!", 300, 550);
  textSize(15);
  text("psst! Press P to pause if you're in a pickle!", 25, 400);
}

void returnButton() {
  if (!notOverButton) {
    stroke(#FFFFFF);
    fill(#000000);
  } else {
    fill(#FFFFFF);
    image(Alien1, 100, 250);
    stroke(#F06C6C);
    fill(#FFC77D);
  }
  rect(50, 50, 200, 200);
}

void returnMouseOverButton() {
  if (mouseX>50 && mouseX<250 && mouseY > 50 && mouseY<250) {
    notOverButton = true;
  } else {
    notOverButton = false;
  }
}



void returnMousePressed() {
  if (mousePressed && mouseX>50 && mouseX<250 && mouseY > 50 && mouseY<250) {
    gameState=1;
  }
}

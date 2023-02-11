boolean notOverButton = false;


void gameState1() {
  
  background(bg);
  laser();
  title();
  button();
  mouseOverButton();
}

void title() {
  fill(#FFFFFF);
  Tank();
  Player();
  SpaceShipEdgeCollision();
  textSize(40);
  text("Space Invaders", 375, 200);
  textSize(25);
  fill(#000000);
  stroke(#FFFFFF);
  //rect(85,375,400,150);
  fill(#FFFFFF);
  text("press S to start your mission!", 100, 400);
  text("click the sqaure to learn how to play", 100, 500);
}

void button() {
  if (!notOverButton) {
    stroke(#FFFFFF);
    fill(#000000);
  } else {
    stroke(#994C00);
    fill(#CCE5FF);
  }
  rect(600, 500, 200, 200);
}

void mouseOverButton() {
  if (mouseX<800 && mouseX>600 && mouseY > 500 && mouseY<700) {
    notOverButton = true;
  } else {
    notOverButton = false;
  }
}

void mousePressed() {
  if (mousePressed && mouseX<800 && mouseX>600 && mouseY > 500 && mouseY<700) {
    gameState=3;
  }
}

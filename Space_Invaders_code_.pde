boolean someGuyHitTheEdge = false;
boolean drawUFO = true;
boolean drawAliens = true;
int alienHealth = 2;
int UFOxPosition = 10;
int UFOyPosition = 10;
int UFOspeed = 20;
int UFOdirection = 10;

void gameState2() {
  background(bg2);
  score();
  UfoOnTopOfScreen();
  UFOMovement();
  gameOver();
  stopWatch = millis()/1000*1000;
  drawAlien();
  alienMovement();
  alienEdgeCollisionRight();
  alienEdgeCollisionLeft();
  laser();
  laserUFOCollision();
  for (int i = 0; i < 60; i++) {
    laserAlienCollision(i);
  }
  healthOfAlien();
  checkIfAlienIsOverRedLine(1);
  Tank();
  Player();
  SpaceShipEdgeCollision();
  println(millis()/1000*1000);
}

void alienEdgeCollisionRight() {
  for (int i=0; i<alienXPositionArray.length; i++) {
    if (alienXPositionArray[i]>950) {
      someGuyHitTheEdge = true;
    }
  }
  if (someGuyHitTheEdge) {
    for (int i= 0; i<60; i++) {
      //dropdown
      alienYPositionArray[i]=alienYPositionArray[i]+1;
    }
    //ReverseDirection
    alienSpeed= -abs(alienSpeed);
    someGuyHitTheEdge = false;
  }
}


void alienEdgeCollisionLeft() {
  for (int i=0; i<alienXPositionArray.length; i++) {
    if (alienXPositionArray[i]<10) {
      someGuyHitTheEdge = true;
    }
  }
  if (someGuyHitTheEdge) {
    for (int i= 0; i<60; i++) {
      //dropdown
      alienYPositionArray[i]=alienYPositionArray[i]+1;
    }
    //ReverseDirection
    alienSpeed= abs(alienSpeed);
    someGuyHitTheEdge = false;
  }
}

void UfoOnTopOfScreen() {
  if (drawUFO) {
    image(UFO, UFOxPosition, UFOyPosition);
    UFOxPosition += UFOspeed;
  }
}

void UFOMovement() {
  if (UFOxPosition>980) {
    UFOspeed = -abs(UFOspeed);
  }
  if (UFOxPosition<10) {
    UFOspeed = abs(UFOspeed);
  }
}

void laserUFOCollision() {
  int bottomOfUFO =  UFOyPosition+25;
  int rightSideOfUFO = UFOxPosition+25;
  int leftSideOfUFO = UFOxPosition;
  int topOfLaser = laserYposition;
  int leftSideOfLaser = laserXposition;
  int rightSideOfLaser = laserXposition+5;

  if (topOfLaser < bottomOfUFO && rightSideOfLaser > leftSideOfUFO && leftSideOfLaser < rightSideOfUFO) {
    drawUFO = false;
    score = score+1000;
  }
}

void laserAlienCollision(int i) {
  int topOfLaser = laserYposition;
  int leftSideOfLaser = laserXposition;
  int rightSideOfLaser = laserXposition+5;
  int bottomOfLaser = laserYposition + 40;
  int topOfAlien = alienYPositionArray[i];
  int bottomOfAlien = alienYPositionArray[i] + 25; // hgt of alien could be wrong
  int leftOfAlien = alienXPositionArray[i];
  int rightOfAlien = alienXPositionArray[i] + 25;

  if (topOfLaser < bottomOfAlien && bottomOfLaser > topOfAlien && leftSideOfLaser < rightOfAlien && rightSideOfLaser > leftOfAlien) {
    laserOnScreen = false;
    alienShot[i] = true;
    score = score+100;
  }
}

void drawAlien() {
  fill(#FFFFFF);
  for (int j = 0; j < alienXPositionArray.length; j++) {
    if (alienShot[j] == false) {
      image(Alien1, alienXPositionArray[j], alienYPositionArray[j]);
    }
  }
}



void alienMovement() {
  if (millis()-stopWatch < 20) {
    for (int i = 0; i < alienXPositionArray.length; i++) {
      alienXPositionArray[i] += alienDirection*alienSpeed;
    }
  }
}

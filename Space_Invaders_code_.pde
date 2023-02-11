int alienXposition = 10;
int alienYposition = 10;
int stopWatch = millis()/1000*1000;
int shipXposition = 500;
int shipYposition = 750;
int Xspeed;
int alienSpeed = 20;
int alienDirection = 1;
int laserYPosition = 730;
boolean circle = false;
boolean playerRight = false;
boolean playerLeft = false;
boolean alienLeft = false;
boolean alienRight = true;
PImage SpaceShip;
PImage UFO;
int SpaceShipState = 1;
PImage SpaceShip2;
PImage Alien1;
PImage bg;
PImage bg2;
boolean touchingRightEdge = false ;
boolean touchingLeftEdge = false;
int gameState = 1;

int[] alienXPositionArray = new int [60];
int[] alienYPositionArray = new int [60];
boolean[] alienShot = new boolean[60];


  //alienXPosition[i] = alienXPosition[i] + alienDirection*alienSpeed;

  void setup() {
  size(1000, 1000);
  noSmooth();
  SpaceShip = loadImage("SpaceShip.png");
  UFO = loadImage("UFO.png");
  SpaceShip2 = loadImage("SpaceShip2.png");
  Alien1 = loadImage("Alien1.png");
  bg = loadImage("space.jpeg");
  bg2 = loadImage("Space2.jpeg");
  for (int i=0; i<alienXPositionArray.length; i++) {
    alienXPositionArray[i] = 65*(i%10)+100;
    alienYPositionArray[i] = 65*(i/10)+100;
  }
}



void draw() {
  if (gameState==1) {
    gameState1();
  }
  if (gameState==2) {
    gameState2();
  }
  if (gameState==3) {
    gameState3();
  }
  if (gameState==4) {
    gameState4();
  }
  if (gameState==5) {
    gameState5();
  }
}






void keyPressed() {
  println(keyCode);
  if (keyCode==37) {
    playerLeft = true;
  }
  if (keyCode==39) {
    playerRight = true;
  }
  if (keyCode==83) {
    gameState = 2;
  }
  if (keyCode==32 && laserOnScreen == false) {
    laserOnScreen = true;
    laserXposition = shipXposition+40;
  }
  if (keyCode==72) {
    SpaceShipState = 2;
  }
  if (keyCode==80) {
    gameState = 4;
  }
  if (keyCode==82) {
    gameState = 2;
  }
  if (keyCode==71) {
    gameState = 5;
  }
}

void keyReleased() {
  if (keyCode==37) {
    playerLeft = false;
  }
  if (keyCode==39) {
    playerRight = false;
  }
}

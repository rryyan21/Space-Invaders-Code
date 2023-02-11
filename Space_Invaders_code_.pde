boolean shipLaser = false;
boolean laserOnScreen = false;
int laserSpeed = -10;
int laserXposition;
int laserYposition = shipYposition;
int shipCordX = shipXposition;
int shipCordY = shipYposition;

void laser() {
  if (laserOnScreen) {
    rect(laserXposition, laserYposition, 5, 40);
    laserYposition = laserYposition -10;
  }
  if(laserOnScreen == false){
   shipCords();
  }
  if(laserYposition<=0){
   laserOnScreen = false; 
  }
}

void shipCords(){
 shipCordX = shipXposition+40;
 shipCordY = shipYposition;
 laserXposition = shipCordX;
 laserYposition = shipYposition;
}

void healthOfAlien() {
  if (alienHealth < 2) {
    image(SpaceShip, shipXposition, shipYposition);
  }
}

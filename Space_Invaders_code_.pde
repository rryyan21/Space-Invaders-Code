void SpaceShipEdgeCollision() {
  if (shipXposition<0) {
    shipXposition = 0;
  }
  if (shipXposition>910) {
    shipXposition=910;
  }
}



void Tank() {
  image(SpaceShip, shipXposition, shipYposition);
}

void Player() {
  if (playerLeft) {
    shipXposition= shipXposition-10;
    image(SpaceShip2, shipXposition, shipYposition);
  }
  if (playerRight) {
    shipXposition= shipXposition+10;
    image(SpaceShip2, shipXposition, shipYposition);
  }
}

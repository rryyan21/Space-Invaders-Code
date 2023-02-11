boolean mouseOverButton = false;



void resetButton(){
 if (!mouseOverButton) {
    stroke(#876ff5);
    fill(#000000);
  } else {
    stroke(#994C00);
    fill(#CCE5FF);
  }
  rect(500, 400, 200, 200);
} 

void mouseOnButton() {
  if (mouseX<700 && mouseX>500 && mouseY > 400 && mouseY < 600) {
    mouseOverButton = true;
  } else {
    mouseOverButton = false;
  }
}

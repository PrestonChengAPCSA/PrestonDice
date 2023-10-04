Dice bob;
int totalDots = 0;
void setup() {
  size(410, 450);
}

void draw() {
  background(255, 0, 0);
  for (int y = 0; y <= 400; y = y + 60) {
    for (int x = 0; x <= 400; x = x + 60) {
      bob = new Dice(x, y);
      bob.show();
    }
  }

  text("total number of dots = " + totalDots, 130, 430);
  noLoop();
}

void mousePressed() {
  totalDots = 0;
  redraw();
}

class Dice {
  int rollNumber, myX, myY;
  Dice(int x, int y) {
    rollNumber = (int)(Math.random()*6 + 1);
    myX = x;
    myY = y;
  }

  void show() {
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (rollNumber == 1) {
      ellipse(myX+25, myY+25, 5, 5);
      totalDots = totalDots + 1;
    } else if (rollNumber == 2) {
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+37, myY+37, 5, 5);
      totalDots = totalDots + 2;
    } else if (rollNumber == 3) {
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX+37, myY+37, 5, 5);
      totalDots = totalDots + 3;
    } else if (rollNumber == 4) {
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX +37, myY + 12, 5, 5);
      ellipse(myX +12, myY + 37, 5, 5);
      ellipse(myX+37, myY+37, 5, 5);
      totalDots = totalDots + 4;
    } else if (rollNumber == 5) {
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX +37, myY + 12, 5, 5);
      ellipse(myX +12, myY + 37, 5, 5);
      ellipse(myX+37, myY+37, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      totalDots = totalDots + 5;
    } else if (rollNumber == 6) {
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX +37, myY + 12, 5, 5);
      ellipse(myX +12, myY + 37, 5, 5);
      ellipse(myX+37, myY+37, 5, 5);
      ellipse(myX + 12, myY + 25, 5, 5);
      ellipse(myX + 37, myY + 25, 5, 5);
      totalDots = totalDots + 6;
    }
  }
}

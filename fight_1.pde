




// carrot blaster
void fight1Clicks() {
  if (mouseX > 220 && mouseX < 400 + w && mouseY > 350 && mouseY < 400)
    mode = GAME;
}

void fight1() {
  background(255);


  //images/ angry gifs
  image(GGIF[fr], 300, 250, 125, 125);
  println(frameCount);
  if (frameCount % 10 == 0) fr = fr + 1;
  if (fr == frame) fr = 0;





  BOY.display();
  GIRL.display();



  //array

  if (mode != previousMode) {
    raining = true;
    stopTime = millis() + 30000;  // 30 seconds of rain
    previousMode = mode;
  }

  if (millis() >= stopTime) {
    raining = false;

    strokeWeight(2);
    fill(0);
    stroke(0);
    tac(220, 350, 200, 50);
    rect(220, 350, 200, 50);

    fill(255);
    text("winner !", 268, 384);

    //dead bunny
    //images/ dead bunny gifs
    image(DGIF[dead], 300, 250, 125, 125);
    println(frameCount);
    if (frameCount % 10 == 0) dead = dead + 1;
    if (dead == frame) dead = 0;




    stroke(0);
    textSize(30);
    fill(0);
    text("The rain has stopped!", 100, 150);
  }

  int i = 0;
  float speed = 4;


  if (raining) {


    while (i < n) {
      acidRain(x[i], y[i]);   // draw the rain
      y[i] += speed;




      //acid rain
      // collision
      if (dist(Rx, Ry, x[i], y[i]) <= 25 + acidRainw + acidRainh) {
        x[i] = random(0, 600);
        y[i] = random(-500, 0);
        healths = healths - 2;
        w = w - 2;
      }
      if (w <= 0) {
        w = 90;
        wb = 90;
        i = i + 1;
        mode = GAMEOVER;
      }

      if (dist(roix, roiy, x[i], y[i]) <= 25 + acidRainw + acidRainh) {
        x[i] = random(0, 600);
        y[i] = random(-500, 0);
        healthb = healthb - 2;
        wb = wb -2;
      }
      if (wb <= 0) {
        w = 90;
        wb = 90;
        i = i + 1;
        mode = GAMEOVER;
      }


      if (y[i] > height) {
        x[i] = random(0, 600);
        y[i] = random(-500, 0);
      }
      i = i + 1;
    }
  }
}





void acidRain(float x, float y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(5);
  stroke(255, 0, 0);
  rect(acidRainx, acidRainy, 2, acidRainh + 10);
  popMatrix();
}





void tac (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255, 0, 0);
  } else stroke(255);
}

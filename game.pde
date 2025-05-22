

void gameClicks() {
  mode = PAUSE;
  
}




void game() {

  background(brown);
  fill(255);
  stroke(brown);
  rect(80, 80, 440, 440);
  
  
  //BOUNDERIES ROBIN
  if (BOY.robinx < 100) BOY.robinx = 100;
  if (BOY.robinx > 490) BOY.robinx = 490;
  if (BOY.robiny < 75) BOY.robiny = 75;
  if (BOY.robiny > 470) BOY.robiny = 470;
  //BOUNDERIES ROI
  if (GIRL.roix < 100) GIRL.roix = 100;
  if (GIRL.roix > 490) GIRL.roix = 490;
  if (GIRL.roiy < 75) GIRL.roiy = 75;
  if (GIRL.roiy > 470) GIRL.roiy = 470;
  
  
  
  
  
  
  
  
  
  




  //iamges
  image(bunni, bunnix, bunniy, 50, 50);
  image(apple, applex, appley, applew, appleh);
  //mewo
  image(mewo, mewox, mewoy, 20, 20);
  
  BOY.display();
  GIRL.display();
  
 
///----------------------------------------------------------


  // collision
  if (dist(BOY.robinx, BOY.robiny, mewox, mewoy) <= 65 + 10) {
    //basically finding the slope
    mode = MEWO;
  }

  if (dist(GIRL.roix, GIRL.roiy, mewox, mewoy) <= 65 + 10) {
    mode = MEWO;
  }



  //apple
  // collision
  if (dist(BOY.robinx, BOY.robiny, applex, appley) <= 65 + 25) {

    applex = random(105, 495);
    appley = random(105, 495);
    point = point + 1;
  }

  if (dist(GIRL.roix, GIRL.roiy, applex, appley) <= 65 + 50) {

    applex = random(105, 495);
    appley = random(105, 495);
    point2 = point2 + 1;
  }



  //bunni collision
  if (!bunniOn && random(100) < 1) {
    bunnix = random(105, 495);
    bunniy = random(105, 495);
    bunniOn = true;
  }

  if (bunniOn) {
    image(bunni, bunnix, bunniy, 50, 50);
  }

  if (dist(BOY.robinx, BOY.robiny, bunnix, bunniy) <= 65 + 25) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }


  if (dist(GIRL.roix, GIRL.roiy, bunnix, bunniy) <= 65 + 25) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }
}

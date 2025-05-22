

void gameClicks() {
  mode = PAUSE;
  
}




void game() {

  background(brown);
  fill(255);
  stroke(brown);
  rect(80, 80, 440, 440);


BOY.display();
GIRL.display();



  //iamges
  image(bunni, bunnix, bunniy, 50, 50);
  image(apple, applex, appley, applew, appleh);
  //mewo
  image(mewo, mewox, mewoy, 20, 20);
  
  
  
 
///----------------------------------------------------------


  // collision
  if (dist(Rx, Ry, mewox, mewoy) <= 10 + 25) {
    //basically finding the slope
    mode = MEWO;
  }

  if (dist(roix, roiy, mewox, mewoy) <= 10 + 25) {
    mode = MEWO;
  }



  //apple
  // collision
  if (dist(Rx, Ry, applex, appley) <= 25 + 25) {

    applex = random(105, 495);
    appley = random(105, 495);
    point = point + 1;
  }

  if (dist(roix, roiy, applex, appley) <= 25 + 25) {

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

  if (dist(Rx, Ry, bunnix, bunniy) <= 25 + 25) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }


  if (dist(roix, roiy, bunnix, bunniy) <= 25 + 25) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }
}

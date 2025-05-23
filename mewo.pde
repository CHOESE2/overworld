void mewoClicks(){
  mode = GAME`;
  
  
}

void mewo(){
  
  background(255);
  
  
    
  //BOUNDERIES ROBIN-----------------------------------------------------------
  if (BOY.robinx < 10) BOY.robinx = 10;
  if (BOY.robinx > 590) BOY.robinx = 590;
  if (BOY.robiny < 0) BOY.robiny = 0;
  if (BOY.robiny > 550) BOY.robiny = 550;
  
  //platform
  if (BOY.robiny < 370 && BOY.robiny > 320 && BOY.robinx > 380 && BOY.robinx < 530) {
    BOY.robiny = 320;
    vROBy = 0;
  } 
  
   if (BOY.robiny < 240 && BOY.robiny > 190 && BOY.robinx > 80 && BOY.robinx < 230) {
    BOY.robiny = 190;
    vROBy = 0;
  } 
  
  //BOUNDERIES ROI----------------------------------------------------------------
  if (GIRL.roix < 10) GIRL.roix = 10;
  if (GIRL.roix > 590) GIRL.roix = 590;
  if (GIRL.roiy < 0) GIRL.roiy = 0;
  if (GIRL.roiy > 550) GIRL.roiy = 550;
  
  //platform 
  if (GIRL.roiy < 370 && GIRL.roiy > 320 && GIRL.roix > 380 && GIRL.roix < 530) {
    GIRL.roiy = 320;
    vROIy = 0;
  }
   if (GIRL.roiy < 240 && GIRL.roiy > 190 && GIRL.roix > 80 && GIRL.roix < 230) {
    GIRL.roiy = 190;
    vROIy = 0;
  } 
  //--------------------------------------------------------------------
  
  
    

  
 
  
 
 //floor
 fill(0);
 rect(0, 550, 600, 100);
 
 //platforms 
 rect(380, 350, 150, 20); //right
 rect(80, 220, 150, 20);
 
  
  
  //velocity + acceleration = gravity
  //ROBIN
  BOY.robiny += vROBy;
  if (BOY.robiny < 550) {
    vROBy += aROBy;
  } else {
    vROBy = 0;
    BOY.robiny = 550;
  } 
  //ROI
   GIRL.roiy += vROIy;
  if (GIRL.roiy < 550) {
    vROIy += aROIy;
  }
  else {
    vROIy = 0;
    GIRL.roiy = 550;
  } 
  



image(fish, fishx, fishy, fishw, fishh);


BOY.display();
GIRL.display();


  
  

// mewo----------------------------------------------------------------------------------------------------

 strokeWeight(5);
  stroke(0);
  fill(255);
  image(mewo, mewox, mewoy, mewow, mewoh);


//  ////velocity + acceleration = gravity
//  //vx += ax;
//  //vy += ay;

 //movement
  mewox += vx;
  mewoy += vy;



  //mewo
  
  if (mewoy <= 0) { // top
    vy = vy * -1;
    mewox = 100;
    mewoy = 100;
    
  }

  if (mewoy >= height - 25) { //bottom
    vy = vy * -1; 
    mewox = 500;
    mewoy = 500;
  }
  
  //  if (mewox >= width) {// right
  //  vx = vx * -1;
    
  //}
   
  
  
  //if (random(0, 100) < 1) {
  // if (mewox >= width && mewox <= 0) {
  //  vx = vx * -0.95;
  // }
  //}
 
 //-------------------------------------------------------------------------------------------------------------------------------



//bullets

float speed = 4;
int i = 0;
SHOOTB = true;
int shotB = 0;



ABX = new float [ammoB];
ABY = new float [ammoB];

AGX = new float [ammoG];
AGY = new float [ammoG];
//-----------------------------

for ( i = 0; i < ammoB; i++ ) {
  ABX [i] = (BOY.robinx);
  ABY [i] = (BOY.robiny);
} //shoot the amount of bullets you have 

for ( i = 0; i < ammoG; i ++ ) {
  AGX [i] = (GIRL.roix);
  AGY [i] = (GIRL.roiy);
}

if (mode == MEWO) {
    raining = true;
  }
  
if (mode != previousMode) {
    raining = true;
    previousMode = mode;
  }
  
  
   //ROBIN-------------------------------------------
if (raining) {
  
   
 if (ammoB > 0) {
 for (i = 0; i < ammoB; i++) {
    acidRain(ABX[i], ABY[i]);
    ABY[i] += speed;
  }
}
 
  
   //fish
  // collision
  
  if (dist(BOY.robinx, BOY.robiny, fishx, fishy) <= BOY.robinw/2 + 50) {

    fishx = random(130, 550);
    fishy = random(130, 550);
    ammoB += 5;
    
      
  ABX = new float[ammoB];
  ABY = new float[ammoB];

  for (i = 0; i < ammoB; i++) {
    ABX[i] = BOY.robinx;
    ABY[i] = BOY.robiny;
  } 
 }
 
 
 //SHOOTING BULLETS 
 
 
if (SHOOTB == false) {
  ABX [shotB] = (BOY.robinx);
  ABY [shotB] = (BOY.robiny);
} if (eKey) {
  SHOOTB = true;
  ABX [shotB] = (mewox);
  ABY [shotB] = (mewoy);

  
  shotB = (shotB + 1) % ammoB;
}


      if (ABY[shotB] > height) {
        ABX[i] = (BOY.robinx);
        ABY[i] = (BOY.robiny);
      }
      i = i + 1;
  }
    while (i < ammoB) {
      acidRain(ABX[i], ABY[i]);   // draw the rain

      //acid rain
      // collision
      if (dist(mewox, mewoy, ABX[shotB], ABY[shotB]) <= 75 + acidRainw + acidRainh) {
       healths -= 3;
      }
       // healths = healths - 3;
       // w = w - 3;
      //}
      //if (w <= 0) {
      //  w = 90;
      //  wb = 90;
      //  i = i + 1;
      //  mode = GAMEOVER;
      //}
      
 
}
      
      //------------------------------------------------------
      
  //    while (i < ammoG) {
  //    acidRain(AGX[i], AGY[i]);   // draw the rain
  //    AGY[i] += speed;
      
  //    //acid rain
  //    // collision
  //    if (dist(mewox, mewoy, AGX[i], AGY[i]) <= 75 + acidRainw + acidRainh) {
  //      AGX [i] = (GIRL.roix);
  //      AGY [i] = (GIRL.roiy);
  //    }
  //    //  healthb = healthb - 3;
  //    //  wb = wb -3;
  //    //}
  //    //if (wb <= 0) {
  //    //  w = 90;
  //    //  wb = 90;
  //    //  i = i + 1;
  //    //  mode = GAMEOVER;
  //    //}


  //    if (AGY[i] > height) {
  //      AGX[i] = (GIRL.roix);
  //      AGY[i] = (GIRL.roiy);
  //    }
  //    i = i + 1;
  //  }
  //}



 
  
 //----------------------------------------------------------------------------------------------------------------------------------
 //--------------------------------------------



 // // collision
 // if (dist(BOY.robinx, BOY.robiny, mewox, mewoy) <= 65 + 75) {
 //    healths = healths - 1;
 //    w = w - 1;
 // } if (w <= 0){
 //   w = 90;
 //   wb = 90;
 //   mode = GAMEOVER;
 // }

 // if (dist(GIRL.roix, GIRL.roiy, mewox, mewoy) <= 65 + 75) {
 //healthb = healthb - 1;
 //    wb = wb - 1;
 // } if (wb <= 0){
 //   w = 90;
 //   wb = 90;
 //   mode = GAMEOVER;
 // }
  
  
  
  
  
  





  //if (dist(GIRL.roix, GIRL.roiy, fishx, fishy) <= GIRL.roiw/2 + 50) {

  //  fishx = random(130, 550);
  //  fishy = random(130, 550);
  //  ammoG += 5;
   
  //}
  
  
  
  
  
  
  


//void fish (int x, int y){
//  pushMatrix();
//  translate(x, y);
//  image(fish, fishx, fishy, fishw, fishh);
//  popMatrix();
}

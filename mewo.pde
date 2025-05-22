void mewoClicks(){
  mode = GAME`;
  
  
}

void mewo(){
  
  background(255);
  
  
  //platform
  fill(255);
  stroke(0);
  
  rect(20, 300, 560, 30);
  fill(0);
  stroke(0);
  rect(20, 20, 560, 300);
  
  
  
   stroke(255);
  //background
  fill(255, 0, 0);
  rect(50, 331, 500, 500); //bloodly lake 
  
  fill(0);
  rect(230, 300, 150, 400); 
  
  rect(150, 400, 80, 90);
  fill(0);
  
  triangle(152, 490, 230, 490, 230, 530);
  
 // mewo's spawn
 fill(255);
 rect(220, 100, 150, 150);
 fill(0);
 rect(220, 80, 150, 150);
  
  
  
  
//  image(fish, fishx, fishy, fishw, fishh);
BOY.display();
GIRL.display();
  

 
  
  //bounderies 
  //road 
  if (robinx < 230 && robiny > 320) {
    robinx = 230;
  }
  if (robinx > 380 && robiny > 320){
    robinx = 380;
  }
  
  //platform
  if (robinx < 20 && robiny < 320){ 
    robinx = 20;
  }
  if(robinx > 580 && robiny < 320){
    robinx = 580;
  }
  if(robiny >  320 && robinx < 230){ //telaportation
    robiny = 320;
  }
  if (robiny > 320 && robinx > 380){ //telaportation
    robiny = 320;
  }
  
  if (robiny < 20){ //celeing 
    robiny = 20;
  }
 
 
 
 

//bounderies 
  //road 
  if (roix < 230 && roiy > 320) {
    roix = 230;
  }
  if (roix > 380 && roiy > 320){
    roix = 380;
  }
  
  //platform
  if (roix < 20 && roiy < 320){ 
    roix = 20;
  }
  if(roix > 580 && roiy < 320){
    roix = 580;
  }
  if(roiy >  320 && roix < 230){ //telaportation
    roiy = 320;
  }
  if (roiy > 320 && roix > 380){ //telaportation
    roiy = 320;
  }
  if (roiy < 20){ //celeing 
    roiy = 20;
  }
  








 //  stroke(0);
 //  strokeWeight(2);
 //  fill(255);
 //  rect(sunnyx - 38, sunnyy - 75, 90, 10);
 //  fill(0, 255, 0);
 // rect(sunnyx - 38, sunnyy - 75, w, 10);
  
 // if (w < 60){
 //   fill(255, 172, 70);
 //   rect(sunnyx - 38, sunnyy - 75, w, 10);
 // }
 // if (w < 30){
 //   fill(255, 0, 0);
 //   rect(sunnyx - 38, sunnyy - 75, w, 10);
 // }
  
    
  
 // strokeWeight(2);
 //  fill(255);
 // rect(basilx - 40, basily - 60, 90, 10);
 // fill(0, 255, 0);
 // rect(basilx - 40, basily - 60, wb, 10);
  
 //  if (wb < 60){
 //   fill(255, 172, 70);
 //   rect(basilx - 40, basily - 60, wb, 10);
 // }
 // if (wb < 30){
 //   fill(255, 0, 0);
 //   rect(basilx - 40, basily - 60, wb, 10);
 // }
  
  
  



 //strokeWeight(5);
 // stroke(0);
 // fill(255);
 // image(mewo, mewox, mewoy, mewow, mewoh);


 // ////velocity + acceleration = gravity
 // //vx += ax;
 // //vy += ay;


 // //movement
 // mewox += vx;
 // mewoy += vy;


 // //mewo
 // if (mewoy <= 0) { // top
 //   vy = vy * -0.95; //positive * negative = negative
 //   // mewoy = mewow/2 + mewoh/2; // when the ball is outside the walls this ensures bally is set back to within the walls,
 // }

 // if (mewoy >= height - 25) { //bottom
 //   vy = vy * -0.95; //reverse the vy. Negative * negative = positive
 //   mewoy = height - 25;
 // }
 // if (mewox <= 0) {// right
 //   vx = vx * -0.95;
 // }

 // if (mewox >= width - 25) { //left
 //   vx = vx * -0.95; //reverse the vx
 //   mewox = width - 25;
 // }



 // // collision
 // if (dist(sunnyx, sunnyy, mewox, mewoy) <= 25 + 75) {
 //    healths = healths - 1;
 //    w = w - 1;
 // } if (w <= 0){
 //   w = 90;
 //   wb = 90;
 //   mode = GAMEOVER;
 // }

 // if (dist(basilx, basily, mewox, mewoy) <= 25 + 75) {
 //healthb = healthb - 1;
 //    wb = wb - 1;
 // } if (wb <= 0){
 //   w = 90;
 //   wb = 90;
 //   mode = GAMEOVER;
 // }
  
  
  
 // //fish
 // // collision
 // if (dist(sunnyx, sunnyy, fishx, fishy) <= 25 + 50) {

 //   fishx = random(130, 550);
 //   fishy = random(130, 550);
 //   //point = point + 1;
 // }

 // if (dist(basilx, basily, fishx, fishy) <= 25 + 50) {

 //   fishx = random(130, 550);
 //   fishy = random(130, 550);
 //   //point2 = point2 + 1;
 // }
  
  
  
  
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
 

}

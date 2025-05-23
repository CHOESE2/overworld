
void bunnyClicks(){
  if (mouseX > 45 && mouseX < 245 && mouseY > 400 && mouseY < 500) {
    mode = FIGHT1;
  } else if (mouseX > 350 && mouseX < 550 && mouseY > 400 && mouseY < 500){
    mode = GAME;
    
    //only works if characters are out of bunny 
  }

    
    
  
}


void bunny(){
  background(255, 0, 0);
  
 
   BOY.display();
   GIRL.display();
   
  
 

  textSize(30);
  fill(0);
  
  text("you know, i didn't wanna fight you", 100, 100);
  text("but u stomped on my face", 100, 150);
  
 
 image(BGIF[f], 300, 300, 125, 125);
 println(frameCount);
 if (frameCount % 10 == 0) f = f + 1; 
 if (f == frames) f = 0;
  
  
  
  
  fill(0);
  
  tact(45, 400, 200, 100);
  rect(45, 400, 200, 100);
  fill(255);
  textSize(40);
  text("fight", 98, 460);
  
  fill(0);
  tact(350, 400, 200, 100);
  rect(350, 400, 200, 100);
  fill(255);
  text("run away", 368, 460); 
  
}
  
  
  
  
  
  
  void tact (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
    stroke(0, 0, 255);
  } else stroke(255);
  }

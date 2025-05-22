

class robin {
  float robinx, robiny, robinh, robinw, speed;
  int spriteNum;
  int THRESHOLD;
  int count;

  
  robin() {
    spriteNum = 0;
    THRESHOLD = 8;
    count = 0;
 
    robinx = random(105, 495);
    robiny = random(105, 495);
    robinw = 130;
    robinh = 130;
    speed = 4; 
  }
  
  void show() {
    count ++;
    if (count == THRESHOLD) {
      count = 0;
      spriteNum++;
    }
    
    if (spriteNum >= currentAction.size()) {
      spriteNum = 0;
    }
    
    imageMode(CENTER);
    image(currentAction.get(spriteNum), robinx, robiny, robinw, robinh);
  }
  
  
  void display() {
    imageMode(CENTER);
    show();
    act();
    
    //health 
     stroke(0);
  strokeWeight(2);
  fill(255);
  rect(robinx - 46, robiny - 72, 90, 10);
  fill(0, 255, 0);
  rect(robinx - 46, robiny - 72, w, 10);

  if (w < 60) {
    fill(255, 172, 70);
    rect(robinx - 38, robiny - 75, w, 10);
  }
  if (w < 30) {
    fill(255, 0, 0);
    rect(robinx - 38, robiny - 75, w, 10);
    
     if (healths == 0) {
    mode = GAMEOVER;
    healths = 500;
    healthb = 500;
  }
   
  } 
 }
  
  
  
  void act() {
    if (upKey) {
      robiny -= speed;
      currentAction = WBUp;
    }
    
    if (downKey) {
      robiny += speed;
      currentAction = WBDown;
    }
    
    if (leftKey) {
      robinx -= speed;
      currentAction = WBLeft;
    }
    
    if (rightKey) {
      robinx += speed;
      currentAction = WBRight;
    }
    
    if (!upKey && !downKey && !leftKey && !rightKey) {
      currentAction = idle;
    }
  }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

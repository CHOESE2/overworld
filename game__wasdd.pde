import processing.sound.*; //<>//


// colour variables:
color brown = #1A120B;

//ROBIN VARIAB;ES:object ------------------------------------------------------------------------------
PImage robinIdle;
robin BOY = new robin();
ArrayList<PImage> idle;
ArrayList<PImage> WBLeft;
ArrayList<PImage> WBRight;
ArrayList<PImage> WBUp;
ArrayList<PImage> WBDown;
ArrayList<PImage> currentAction;

float robinx, robiny, robinw, robinh;
float Rx, Ry, Rh, Rw;
//ROI----------------------------------------------------------------------------------------------------------------------------------

PImage roiIdle;
roi GIRL = new roi();
ArrayList<PImage> idlee;
ArrayList<PImage> WGLeft;
ArrayList<PImage> WGRight;
ArrayList<PImage> WGUp;
ArrayList<PImage> WGDown;
ArrayList<PImage> current_ACT;

float roix, roiy, roiw, roih;

//---------------------------------------









//mode framework
int mode; //scene, what screen we're on

//health
int healths;
int healthb;
//health bar
int w = 90;
int wb = 90;

//gif
PImage [] BGIF;
int frames;
int f;






//angry bunny

PImage [] GGIF;
int frame;
int fr;

//dead bunny
PImage [] DGIF;
int fram;
int dead;

//fish
PImage fish;
float fishx, fishy, fishh, fishw;




final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int SHOP = 4;
final int BUNNYFIGHT = 5;
final int STATS = 6;
final int MEWO = 7;
final int FIGHT1 = 8;
final int WINNER = 9;




//images
PImage apple;
boolean appleOn;




//bunny variables
float bunnix, bunniy, bunniw, bunnih;
PImage bunni;
boolean bunniOn;



//acid rain
float acidRainx, acidRainy, acidRainw, acidRainh;
float avx, avy;     //acid's velocity
float aax, aay; // acceleration// mewo's gravity

// acid rain ARRAYS
float [] x;
float [] y;
int n;

//stop rain
int stopTime;
boolean raining = true;
int previousMode = -1;







//apple variables
float applex, appley, applew, appleh;

//purple color variables------------------------------
color whitep = #F2F4F2;
color p1 = #DDE2FC;
color p2 = #B9B5FC;
color p3 = #0E0E2F;


//key Variables-------------------
boolean aKey, dKey, wKey, sKey, upKey, downKey, leftKey, rightKey; //false by default
// pause
boolean tKey;


//mode
boolean xKey;
boolean zKey;
boolean cKey;

//mewo variables ENEMY!!
PImage mewo;
float mewox, mewoy, mewow, mewoh;
boolean mewoOn;
float vx, vy;     //mewo's velocity
float ax, ay; // acceleration// mewo's gravity


//score variables
int point;
int point2;
int i = 0;



////sounds variable
//SoundFile fail;
//SoundFile sucess;
//SoundFile music;






void setup() {
  imageMode(CENTER);
  size(600, 600);



  //health;
  healths = 500;
  healthb = 500;











  //bunny
  frames = 4;

  BGIF = new PImage[ frames ];
  int index = 0;
  while (index < frames) {
    BGIF[index] = loadImage("frame_" + index + "_delay-0.2s.png");
    index = index + 1;
  }

  // angry bunny
  frame = 4;
  int i = 0;

  GGIF = new PImage[ frame ];
  while (i < frame) {
    GGIF[i] = loadImage("frame_" + i + "_delay-0.2s.gif");
    i = i + 1;
  }

  // dead bunny
  fram = 4;
  int in = 0;

  DGIF = new PImage[ fram ];
  while (in < fram) {
    DGIF[in] = loadImage("frameD_" + in + "_delay-0.2s copy.png");
    in = in + 1;
  }


  //set up array of rain drops
  n = 20;
  x = new float [n];
  y = new float [n];

  for (i = 0; i < n; i++) {
    x[i] = random(0, 600);
    y[i] = random(-500, 0);
  }


  if (mode == GAME) {
    raining = true;
    stopTime = millis() + 30000;
  }






  //image fish
  fish= loadImage("fish.png");

  fishx = random(130, 550);
  fishy = random(130, 550);
  fishw = 100;
  fishh = 100;



  //image bunni
  bunni = loadImage("bunny.png");

  bunnix = random(105, 495);
  bunniy = random(105, 495);
  bunniw = 130;
  bunnih = 130;



  ////load sounds
  //fail = new SoundFile(this, "FAILURE.wav"); //this refers to this sketch




//ROBIN ------------------------------------------------------------------------------------------------------------------ //<>//
  robinIdle = loadImage("forward_robin-0.png");
  BOY = new robin();

  idle = new   ArrayList<PImage>();
  WBLeft = new   ArrayList<PImage>();
  WBRight = new   ArrayList<PImage>();
  WBUp = new   ArrayList<PImage>();
  WBDown = new   ArrayList<PImage>();
  currentAction = new   ArrayList<PImage>();


idle.add(loadImage("forward_robin-0.png"));

WBLeft.add(loadImage("left_robin-0.png"));
WBLeft.add(loadImage("left_robin-1.png"));
WBLeft.add(loadImage("left_robin-2.png"));
WBLeft.add(loadImage("left_robin-3.png"));
WBLeft.add(loadImage("left_robin-4.png"));
WBLeft.add(loadImage("left_robin-5.png"));

WBRight.add(loadImage("boyjny-0.png"));
WBRight.add(loadImage("boyjny-1.png"));
WBRight.add(loadImage("boyjny-2.png"));
WBRight.add(loadImage("boyjny-3.png"));
WBRight.add(loadImage("boyjny-4.png"));
WBRight.add(loadImage("boyjny-5.png"));


WBUp.add(loadImage("back_robin-0.png"));
WBUp.add(loadImage("back_robin-1.png"));
WBUp.add(loadImage("back_robin-2.png"));
WBUp.add(loadImage("back_robin-3.png"));


WBDown.add(loadImage("forward_robin-0.png"));
WBDown.add(loadImage("forward_robin-1.png"));
WBDown.add(loadImage("forward_robin-2.png"));
WBDown.add(loadImage("forward_robin-3.png"));

currentAction = idle;


// ROI -------------------------- ------------------------------------------------------------------------------------------------------------------

 roiIdle = loadImage("forward_roi-0.png");
  GIRL = new roi();

  idlee = new   ArrayList<PImage>();
  WGLeft = new   ArrayList<PImage>();
  WGRight = new   ArrayList<PImage>();
  WGUp = new   ArrayList<PImage>();
  WGDown = new   ArrayList<PImage>();
  current_ACT = new   ArrayList<PImage>();


idlee.add(loadImage("forward_roi-0.png"));

WGLeft.add(loadImage("left_roi-0.png"));
WGLeft.add(loadImage("left_roi-0.png"));
WGLeft.add(loadImage("left_roi-0.png"));
WGLeft.add(loadImage("left_roi-0.png"));
WGLeft.add(loadImage("left_roi-0.png"));
WGLeft.add(loadImage("left_roi-0.png"));

WGRight.add(loadImage("right_roi-0.png"));
WGRight.add(loadImage("right_roi-1.png"));
WGRight.add(loadImage("right_roi-2.png"));
WGRight.add(loadImage("right_roi-3.png"));
WGRight.add(loadImage("right_roi-4.png"));
WGRight.add(loadImage("right_roi-5.png"));


WGUp.add(loadImage("back_roi-0.png"));
WGUp.add(loadImage("back_roi-1.png"));
WGUp.add(loadImage("back_roi-2.png"));
WGUp.add(loadImage("back_roi-3.png"));


WGDown.add(loadImage("forward_roi-0.png"));
WGDown.add(loadImage("forward_roi-0.png"));
WGDown.add(loadImage("forward_roi-0.png"));
WGDown.add(loadImage("forward_roi-0.png"));


//-----------------------------------------------------------------------------------------------------------------













  //mewo
  mewo = loadImage("mewo.png");
  mewox = random(90, 510);
  mewoy = random(90, 510);
  mewow = 150;
  mewoh = 150;



  //apple
  apple = loadImage("apple.png");
  applex = random(105, 495);
  appley = random(105, 495);
  applew = 100;
  appleh = 100;

  

  //acid rain
  acidRainx = 0;
  acidRainy = 0;
  acidRainw = 2;
  acidRainh = 0;

  //acids velocity
  avx = 0;
  avy = 5;

  //acids acceleration
  aax = 0;
  aay = 0;


  //mewo's velocity [ the speed at which the ball is moving is a certain direction ]
  vx = 6;
  vy = 6;
  //mewo's acceleration [ the change in the velocity of the ball ]
  ax = 0;
  ay = 6;




  //music.loop(); // plays sound for
  //music.amp(0.1); //loudness
  //fail.pan(); //0 is default, -1, or 1 makes sounds depending on which side headphone u have

  mode = INTRO;




  point = 0;
  point2 = 0;
}








void draw() {


  if (mode == INTRO) {
    intro();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == SHOP) {
    shop();
  } else if (mode == BUNNYFIGHT) {
    bunny();
  } else if (mode == STATS) {
    stats();
  } else if (mode == MEWO) {
    mewo();
  } else if (mode == FIGHT1) {
    fight1();
  } else if (mode == WINNER) {
    winner();
  } else {
    println("ERROR! Mode is " + mode);
  }
}








//void mouseReleased(){
//fail.play();  // likes overlapping use this
////fail.stop() // stops the previous one so no echo

void mewoOn (float x, float y) {
  pushMatrix();
  translate(x, y);
  image(mewo, mewox, mewoy, mewow, mewoh);
  popMatrix();
}


void bunniOn(float x, float y, float w, float h) {
  pushMatrix();
  translate(x, y);
  image(bunni, bunnix, bunniy, bunniw, bunnih);
  popMatrix();
}


void appleOn(float x, float y, float w, float h) {
  pushMatrix();
  translate(x, y);
  //scale(s);
  image(apple, applex, appley, applew, appleh);
  popMatrix();
}

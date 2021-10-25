Button transButton;

boolean mReleased, mPressed, clicked;

int MODE = 0;
final int INTRO = 1;
final int GAMEMODE = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

void setup() {
  //setup
  fullScreen(FX2D);
  MODE = INTRO;

color yellow = #F6FF0D;
color white = #F9FCF7;
color black = #080101;
color red = #FF190D;

  //buttons
  transButton = new Button("", 200, 400, 200, 150, red, yellow);
}


void draw () {
  clicked();
  if (MODE == INTRO) {
    intro();
  } else if ( MODE == GAMEMODE ) {
    gamemode();
  } else if ( MODE == PAUSE ) {
    pause();
  } else if ( MODE == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + MODE);
  }
}

void clicked() {
  mReleased = false;
  if (mousePressed) mPressed = true;
  if (mPressed && !mousePressed) {
    mReleased = true;
    mPressed = false;
  }
}

void keyPressed () {
  if (MODE==GAMEMODE) {
    if (keyCode =='p'||keyCode=='P') {
      MODE=PAUSE;
    }
  } else if (MODE==PAUSE) {
    if (key=='p'||key=='P') {
      MODE=GAMEMODE;
    }
  }
}

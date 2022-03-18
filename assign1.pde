PImage sky;
PImage soil;
PImage life;
PImage groundhog;
PImage soldier;
int soldierX;
int soldierY;
//soldier x y
PImage robot;
int robotX;
int robotY;
//robot x y
int lazerX;
int lazerXX, lazerY;
int lazerLimit;
//lazerx,xx,y
void setup() {
  size(640, 480, P2D);
  sky=loadImage("img/bg.jpg");
  soil=loadImage("img/soil.png");
  life=loadImage("img/life.png");
  groundhog=loadImage("img/groundhog.png");
  soldier=loadImage("img/soldier.png");
  soldierY=160+floor((random(160, 480))%4)*80;
  //soldier random y
  robot=loadImage("img/robot.png");
  robotX=160+floor(random(0, 6))*80;
  robotY=160+floor((random(160, 480))%4)*80;
  //robot random x y
  lazerX=robotX+25;
  lazerXX=robotX+25;
  lazerY=robotY+37;
  lazerLimit=lazerX-160-25;
}

void draw() {
  image(sky, 0, 0);
  //sky image
  image(soil, 0, 160);
  //soil image
  image(life, 10, 10);
  image(life, 80, 10);
  image(life, 150, 10);
  //life image
  noStroke();
  fill(124, 204, 25);
  rect(0, 145, width, 15);
  //grass
  image(groundhog, 280, 80);
  //groundhog image
  stroke(255, 255, 0);
  fill(253, 184, 19);
  strokeWeight(5);
  ellipse(590, 50, 120, 120);
  //sun
  soldierX+=4;
  image(soldier, soldierX, soldierY);
  if (soldierX >= width) {
    soldierX = -80;
  }
  soldierX%=width;
  //soldier walking

  image(robot, robotX, robotY);
  //robot place
  stroke(255, 0, 0);
  strokeWeight(10);
  line(lazerX, lazerY, lazerXX, lazerY);
  lazerX-=2;

  if (lazerX<=robotX+25-40){
    lazerXX-=2;
  }
  //robot lazer 
  if(lazerX<=lazerLimit){
    lazerX=lazerX+80*2+25;
    lazerXX=robotX+25;
  }
    //robot lazer restart
}

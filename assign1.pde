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
//lazerx
void setup() {
  size(640, 480, P2D);
  sky=loadImage("bg.jpg");
  soil=loadImage("soil.png");
  life=loadImage("life.png");
  groundhog=loadImage("groundhog.png");
  soldier=loadImage("soldier.png");
  soldierY=160+floor((random(160, 480))%4)*80;
  //soldier random y
  robot=loadImage("robot.png");
  robotX=160+floor(random(0, 400));
  robotY=160+floor((random(160, 480))%4)*80;
  //robot random x y
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
  ellipse(590, 50, 60, 60);
  //sun
  soldierX++;
  image(soldier, soldierX, soldierY);
  soldierX%=width;
  //soldier walking
  stroke(255, 0, 0);
  pushMatrix();
  translate(robotX+25, robotY+37);
  lazerX-=2;
  line(lazerX,0,lazerX-40,0);
  lazerX%=185;
  popMatrix();
  //robot lazer
  image(robot, robotX, robotY);
  //robot place
}

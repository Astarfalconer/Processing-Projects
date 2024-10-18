import processing.sound.*;
SoundFile music;

import peasy.*;

PeasyCam cam;
float theta;
PImage img;
PShape globe;
Body Sun;

void setup () {
size(640,360, P3D);
frameRate(60);
//noStroke();
img = loadImage("Data/cyberPunk.jpg");
cam = new PeasyCam(this,600);
Sun = new Body(400,90,0);
Sun.spawnChildren(5,0);
music= new SoundFile(this, "Data/Scattle - Remorse.mp3");
  music.play();
}


void draw () {
lights();
background(img);
rotate(theta);
rotateY(theta);
Sun.display();
Sun.orbit();
theta += 0.006;
}

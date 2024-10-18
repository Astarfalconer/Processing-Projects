/** 
* Main file displaying poster

*/

 import processing.sound.*;
 SoundFile music;
 
 
float UFO_SIZE = 0.8;
float MAX_WEIGHT = 0.2;
float MAX_PLANET_SIZE = 50;
ArrayList<Star> stars = new  ArrayList<Star>();
ArrayList<Planet> planets = new  ArrayList<Planet>();
ArrayList<Ufo> ufos = new  ArrayList<Ufo>();
void setup() {
  music= new SoundFile(this, "assets/The Human Abstract - Crossing The Rubicon 8-Bit.mp3");
  music.play();
size(1000,600);
for (int i = 0; i < 1000; i++) {
  Star Star = new Star();
  stars.add(Star);
}
for (int i = 0; i < 15; i++) {
  Planet Planet = new Planet();
  planets.add(Planet);
}
for (int i = 0; i < 4; i++) {
  Ufo Ufo = new Ufo();
  ufos.add(Ufo);
}
}

void draw() {
background(5,0,70);
for ( Star s : stars ) {
 s.display();
PVector direction = new PVector (-1, 0);
s.move(direction);
}
for ( Planet p : planets) {
p.display();
PVector direction = new PVector (-1, -0);
p.move(direction);
}

textSize(128);
fill(255,223,0);
text("Crossing", 40, 120); 
fill(255,223,0);
text("The", 40, 240);
fill(255,223,0);
text("Galactic-Rubicon", 40, 360);
for ( Ufo u : ufos) {
u.display();
PVector direction = new PVector (2, 0);
u.move(direction);
}
}

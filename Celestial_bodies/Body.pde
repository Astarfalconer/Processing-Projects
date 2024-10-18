class Body {
float radius;
float distance;
Body[] bodies;
float angle;
float orbitSpeed;
PVector V;
float ranC1;
float ranC2;
float ranC3;
PImage cube;
Body(float r, float d, float o) {
 //cube = loadImage("Data/2k_earth_nightmap.jpg");
 V = PVector.random3D();
 this.ranC1 = random(100,175);
 this.ranC2 = random(50);
 this.ranC3 = random(100,175);
 radius = r;
 distance = d;
 V.mult(distance);
 angle = random(TWO_PI );
 orbitSpeed = o;
}

void orbit() {
angle = angle + orbitSpeed;
if (bodies != null) {
for (int i = 0; i < bodies.length; i++) {
bodies[i].orbit();
}
}
}

void spawnChildren(int total,int level) {
bodies = new Body[total];
for (int i = 0; i < bodies.length; i ++) {
float r = radius * 0.1;
float d = random((radius + r), (radius + r * 2));
float o = random(- 0.05, 0.05);
push();
bodies[i] = new Body(r,d,o);
if (level < 2) {
  int num = int(random(0,3));
bodies[i].spawnChildren(num, level + 1);
pop();
}
}

}

void display() {
push();
fill(this.ranC1,this.ranC2,this.ranC3);
PVector V2 = new PVector(1,0,1);
PVector P = V.cross(V2);
rotate(angle,P.x,P.y,P.z);
globe = createShape(BOX,radius/2);
globe.setTexture(cube);
translate(V.x,V.y,V.z);
shape(globe);
if (bodies != null) {
for (int i = 0; i < bodies.length; i++){
bodies[i].display();
}

}
pop();
}
}

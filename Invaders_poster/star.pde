class Star {
  PVector pos;
  float size;
  float colour;
  float distance;
  float speed;

  Star() {
   this.pos = new PVector (random(width),random(height));
   this.size = random(MAX_WEIGHT);
   this.colour = (255/ MAX_WEIGHT) * this.size;
   this.distance = dist(mouseX,mouseY,this.pos.x,this.pos.y);
   this.speed = map(this.size,0,MAX_WEIGHT,0,3);
  }
  
  void display() {
  fill(255);
  push();
  translate(this.pos.x,this.pos.y);
  scale(this.size);
  beginShape();
  vertex(0, -50);
  vertex(14, -20);
  vertex(47, -15);
  vertex(23, 7);
  vertex(29, 40);
  vertex(0, 25);
  vertex(-29, 40);
  vertex(-23, 7);
  vertex(-47, -15);
  vertex(-14, -20);
  endShape(CLOSE);
  pop();
  }
  
  void move(PVector direction) {
     direction.mult(this.speed);
     this.pos.add(direction);
     if (this.pos.x > width) {
      this.pos.x = -50;
     } else if ( this.pos.x < 0) {
      this.pos.x = width;
     } else if ( this.pos.y > height) {
      this.pos.y = 0;
     } else if ( this.pos.y < 0) {
      this.pos.y = height;
     }
  }
 
}

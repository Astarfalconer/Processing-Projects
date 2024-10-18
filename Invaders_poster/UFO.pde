class Ufo {
 PVector pos;
  float size;
  float speed;
  int margin = 2000;
  Ufo() {
  this.pos = new PVector(random(width),random(height));
  this.size = random(0.7,UFO_SIZE);
  this.speed = map(this.size,0,UFO_SIZE,0,3);
  
  }
  
  void display() {
scale(this.size);
noStroke();
fill(0,255,255);
arc(this.pos.x, this.pos.y, 120, 90, radians(180),radians(360));
fill(200);
ellipse( this.pos.x, this.pos.y, 200,20);
  }
  
  void move(PVector direction) {
     //direction.mult(this.speed);
     this.pos.add(direction);
     if (this.pos.x > width + this.margin) {
      this.pos.x = -this.margin;
     } else if ( this.pos.x < 0 -this.margin) {
      this.pos.x = width + this.margin;
     } else if ( this.pos.y > height + this.margin) {
      this.pos.y = - this.margin;
     } else if ( this.pos.y < 0 - this.margin) {
      this.pos.y = height + this.margin;
     }
  }

}

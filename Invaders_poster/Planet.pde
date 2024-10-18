class Planet {
PVector pos;
  float size;
  float colour1;
  float colour2;
  float colour3;
  float distance;
  float speed;
  int margin = 50;
  
  Planet() {
   this.pos = new PVector (random(width),random(height));
   this.size = random( MAX_PLANET_SIZE);
   this.colour1 = random(255/ MAX_PLANET_SIZE) * this.size;
   this.colour2 = random(255/MAX_PLANET_SIZE) * this.size;
   this.colour3 = random(255/MAX_PLANET_SIZE) * this.size;
   this.speed = map(this.size,0,MAX_WEIGHT,0,3);
  }
  void display() {
    noStroke();
    fill(this.colour1,this.colour2,this.colour3);
    ellipse(this.pos.x,this.pos.y,this.size, this.size);
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



 

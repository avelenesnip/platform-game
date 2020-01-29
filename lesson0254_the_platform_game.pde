import fisica.*;

color black = #000000;
color pink = color(255, 174, 201);
color red = color (255,0,0);
color blue = color(255,0,0);


PImage map;

int x = 0;
int y = 0;

final int gridSize = 35;

FWorld world;

void setup() {

  fullScreen(FX2D);


  Fisica.init(this);
  world = new FWorld();

  map = loadImage("map.png");  

  while (y < map.height) {
    color c = map.get (x, y);

    if ( c == black) {
      FBox b = new FBox(gridSize, gridSize);
      b.setName("ground");
      b.setStrokeColor(black);
      b.setFillColor(black);
      b.setPosition(x*gridSize, y*gridSize);
      b.setFriction(1);
      b.setStaticBody(true);
      world.add(b);
    }
    
     if ( c == pink) {
      FBox p = new FBox(gridSize, gridSize);
      p.setName("ground");
      p.setStrokeColor(pink);
      p.setFillColor(pink);
      p.setPosition(x*gridSize, y*gridSize);
      p.setFriction(1);
      p.setStaticBody(true);
      world.add(p);
    }
    
    
     if ( c == black) {
      FBox b = new FBox(gridSize, gridSize);
      b.setName("ground");
      b.setStrokeColor(black);
      b.setFillColor(black);
      b.setPosition(x*gridSize, y*gridSize);
      b.setFriction(1);
      b.setStaticBody(true);
      world.add(b);
    }
    
    if ( c == blue) {
      FBox b = new FBox(gridSize, gridSize);
      b.setName("player1");
      b.setStrokeColor(blue);
      b.setFillColor(blue);
      b.setPosition(x*gridSize, y*gridSize);
      b.setFriction(1);
      b.setStaticBody(true);
      world.add(b);
    }
    
    if ( c == red) {
      FBox b = new FBox(gridSize, gridSize);
      b.setName("player2");
      b.setStrokeColor(red);
      b.setFillColor(red);
      b.setPosition(x*gridSize, y*gridSize);
      b.setFriction(1);
      b.setStaticBody(true);
      world.add(b);
    }
    
    
    
    x++;

    if ( x > map.width) {
      x = 0;
      y++;
    }
  }
}








void draw() {

  background(#E0FFFF);

  world.step();  
  world.draw();

}

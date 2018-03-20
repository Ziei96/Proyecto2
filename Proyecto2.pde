
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Box> boxes;
Surface surface;

PImage img;

void setup() {
  size(700,450);
  img=loadImage("Fondo.jpg");
  
  smooth();
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -80);

  boxes = new ArrayList<Box>();
  surface = new Surface();
  
}

void draw() {
  image(img,0,0);
  
  text("Da click para que las hojas caigan",300,20);
  text("Presiona una letra para que el viento actue, el puntero sera su guia",300,30);
  
  if (mousePressed) {
    boxes.add(new Box(280,230));
    boxes.add(new Box(280,300));
    boxes.add(new Box(160,160));
    boxes.add(new Box(160,350));
    boxes.add(new Box(340,200));
    boxes.add(new Box(380,320));
    boxes.add(new Box(330,330));
    boxes.add(new Box(380,305));
    boxes.add(new Box(110,205));
    boxes.add(new Box(400,165));
    
  }
  
  if (keyPressed) {
    for (Box b: boxes) {
     Vec2 wind = new Vec2(mouseX,mouseY);
     b.applyForce(wind);
    }
  }

  box2d.step();

  surface.display();
  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }

  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }
}
// this is a comment
/*
this
is
a
comment
*/

float r, g, b, a, radius, x1, y1, x2, y2; // GLOBAL variables


// this runs at the beginning
void setup()
{
  size(800, 600);
  
  rectMode(CORNERS); // changed from rectMode Center
  
  background(0); // CHANGED TO BLACK
  
  x1 = width/2;
  y1 = height/2;
  
}

// this runs every frame
void draw()
{

  // give me some random values
  r = random(200, 255); //edited to have less green and more fall colors
  g = random(0, 192);
  b = random(0, 50);
  a = random(50, 100);
  
  x2 = x1+random(-20, 20);
  y2 = y1+random(-20, 20);
  
  radius = 0;
  radius+= random(0, 10); //made radii smaller for bigger area draw
  radius+= random(0, 10); 
  radius+= random(0, 30);
  radius = radius/3.;
  
  stroke(r, g, b, a);
  line(x1, y1, x2, y2);
  
  // this is the key part:
  x1 = y2;
  y1 = x2; //changed variables to render mirror images
 
  // draw the stuff
  fill(r, g, b, a); // interior fill color
  ellipse(x2, y2, radius, radius); // circle that chases the mouse
  
  if(x1>width) x1 = 7;
  if(x1<0) x1 = width-8;
  if(y1>height) y1 = 0;
  if(y1<0) y1 = height-6;
}

// run whenever I left-click.
void mouseClicked()
{
   background(0); // Changed to black--blacks out the screen
}

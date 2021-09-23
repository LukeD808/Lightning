 int sX = 500+(int)(Math.random()*50-25);
 int sY = 650;
 int eX = 500+(int)(Math.random()*50-25);
 int eY = 650;
void setup()
{
  background(119,136,153);
  strokeWeight(5);
  size(1000,1000);  
}
void draw()
{
  //background
  fill(119,136,153,75);
  rect(0,0,1000,1000);
  //lightning
  int r = 0;
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255)+g;
  stroke(r,g,b);
  while(eY>=150)
  {
    eX = sX;
    eY = sY;
    sX -= (int)(Math.random()*18-9);
    sY -= (int)(Math.random()*9);
    line(sX,sY,eX,eY);
  }
  lightningRod();
  cloud();
}
void mousePressed()
{
  sX = 500+(int)(Math.random()*50-25);
  sY = 650;
  eX = 500+(int)(Math.random()*50-25);
  eY = 650;
}
void lightningRod()
{
  noStroke();
  //inital shape
  fill(184,115,51);
  triangle(450,1000,500,650,550,1000);
  ellipse(500,650,150,150);
  //background
  fill(119,136,153);
  rect(425,625,150,55);
  //line up and down
  fill(184,115,51);
  rect(475,610,50,75);
  //lines across
  rect(427,630,146,5);
  rect(425,640,150,5);
  rect(423,650,154,5);
  rect(425,660,150,5);
  rect(427,670,146,5);
}

void cloud()
{
  fill(249, 246, 238);
  ellipse(500,100,100,100);
  ellipse(425,125,100,100);
  ellipse(475,75,100,100);
  ellipse(450,100,100,100);
  ellipse(550,125,100,100);
  ellipse(450,150,100,100);
  ellipse(500,150,125,125);
}

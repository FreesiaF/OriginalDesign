
void setup()
{
  size(500,500);
}

void draw()
{

background(204,216,234);
circles();
crane();


}

void crane()
{
  fill(255);
  stroke(0);
  triangle(400,180, 205,265, 270,305); // right wing
  line(400,180, 200,300 ); // right wing line
  triangle(230,255, 270,290, 180,290); // center peak
  triangle(100,100, 185,348, 240,320); // tail
  quad(285,176, 300,180, 290,300+50, 262,290+50); //inner neck fold 
  triangle( 300,175, 285,173, 310,208); // head
  triangle(285,176, 260,350, 240,320); //center body
  beginShape();  // outer wing center
  vertex(260,350);
  vertex(254,290);
  vertex(180,250);
  vertex(185,348);
  vertex(230,330);
  vertex(260,350);
  endShape();
  stroke(70);
  line(205,275, 230,310);
  line(230,310, 255,302);
  line(230,309, 230,330);
  stroke(100);
  line(230,309,185,348); 
  stroke(0);
  triangle(254,290, 190,250, 50,230); //left wing
}





void circles()
{
  frameRate(3);
  float x = random(10,450);
  float y = random(10,450);
  float a = random(20,70);
  noStroke();
  fill(122,165,232,100);
  ellipse(x,y,a/2,a/2);
  ellipse(y+x,2*a,a-10,a-10);
  ellipse(y,x,a,a);
  ellipse(x+a,x+40,2*a,2*a);
  ellipse(y+a,y+x,a+20,a+20);
  ellipse(y-30,a+x,a,a);
  ellipse(500-x,y+10,a+30,a+30);
  ellipse(500-x, 500-y, a-5,a-5);

}


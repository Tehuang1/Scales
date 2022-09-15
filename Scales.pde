void setup() {
  size(500, 500);
}
void draw() {
  int a = 0;
  int r = (int)(Math.random()*100+100);
  int g = (int)(Math.random()*100+100);
  int b = (int)(Math.random()*100+100);
  scale(0,0);
  for(int y = -50; y < 500; y += 20){
    for(int x = -50; x < 500; x += 30){
      fill((int)(Math.random()*100+150),(int)(Math.random()*100+150),(int)(Math.random()*100+150),1000);
      noStroke();
      rect(0,a,500,10);
      stroke(1);
      fill(r,g,b);
      scale(x,y);
      a = a + 2;
      r = (int)(Math.random()*100+75);
      g = (int)(Math.random()*100+75);
      b = (int)(Math.random()*100+75);
    }
  }
}

void scale(int x, int y) {
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+15,y+10);
  curveVertex(x+5,y+27);
  curveVertex(x+15,y+25);
  curveVertex(x+20,y+40);
  curveVertex(x+25,y+25);
  curveVertex(x+35,y+27);
  curveVertex(x+25,y+10);
  curveVertex(x+40,y);
  curveVertex(x+20,y+10);
  curveVertex(x,y);
  endShape(CLOSE);
}

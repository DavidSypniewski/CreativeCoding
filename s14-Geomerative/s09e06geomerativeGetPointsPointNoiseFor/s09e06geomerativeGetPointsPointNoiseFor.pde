import geomerative.*;

RShape napis;
RPoint[] points;

void setup() {
  // Initilaize the sketch
  size(750, 500);

  background(255);
  stroke(#0CDDF2, 3);

  RG.init(this);

  napis = RG.getText("Code", "FreeSans.ttf", 272, CENTER);

  translate(width/2, 3*height/4);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(15);

  points = napis.getPoints();
}

void draw() {

  translate(width/2, 3*height/4);

  strokeWeight(5);
  for (int i = 0; i< points.length; i++) {
    RPoint p1 = points[i];
    point(p1.x+noise(frameCount/1000.0+i*10)*100, p1.y+noise(frameCount/1000.0+i*60)*50);
  }
}

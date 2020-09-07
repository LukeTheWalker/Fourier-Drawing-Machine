import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;

//PGraphics pg;

ArrayList <PVector> pointsDrawn; //do not touch, only useful for actual drawing
ArrayList <PVector> fourierXY;   //output of the fourier trasformation
ArrayList <PVector> points;

PVector prev;
BigDecimal time;
//double time = 0;
int skip = 3;
int counter = 0;
boolean finish = false;

void setup () {
  ArrayList <PVector> edges;
  size(512, 512);
  surface.setResizable(true);
  time = new BigDecimal (0);
  background(0);
  pointsDrawn = new ArrayList();
  prev = new PVector (0, 0);
  edges = EdgeParser("input.png"); //extract edges as serie of points
  println("Edges parsed succesfully");
  //PointsParser(edges);
  points = Kruskal(edges);         //cluster and order edge point with graph traversing
  points = shrink(points, skip);   //shrinks the quality, keeps every size/skip number of points || also map the point to be in -width/2 ~ width/2 range
  println("Points ordered succesfully");
  fourierXY = dft(points);         //applies fourier transformations
  println("Fourier serie created succesfully");
  Sort(fourierXY);                 //order fourier serie in desceding radius for a more organic visual effect
  //pg = createGraphics (width, height);
}    


void draw () {
  //pg.beginDraw();
  background (0);
  translate(width/2, height/2);
  if (pointsDrawn.size()  == fourierXY.size()) {
    finish = true;
    println("Done");
  }
  PVector v = FourierDrawer(0, 0, 0, fourierXY);
  stroke (255);
  if (!finish) pointsDrawn.add(v);
  beginShape();
  noFill();
  for (int i = 0; i < pointsDrawn.size(); i++) {
    if ((pointsDrawn.get(i).dist(prev) > 5)) {
      endShape(); 
      beginShape();
    }
    prev.set(pointsDrawn.get(i));
    vertex(pointsDrawn.get(i).x, pointsDrawn.get(i).y);
  }
  endShape();
  save("output/gif-"+nf(counter, 5)+".png");
  if (finish) noLoop();
  counter++;
  time = time.add(new BigDecimal(TWO_PI/fourierXY.size()));
  //time+=TWO_PI/fourierXY.size();
  //pg.endDraw();
}

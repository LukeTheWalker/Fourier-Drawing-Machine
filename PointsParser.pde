//use this to debug points, it shows them as white on a black background
void PointsParser (ArrayList<PVector> points) {
  println(points.size());
  noFill();
  stroke(255);
  loadPixels();
  for (int i = 0; i < points.size(); i++)
    pixels[(int)(points.get(i).x+ points.get(i).y*width)] = color(255);
  updatePixels();
}

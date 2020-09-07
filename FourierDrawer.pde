PVector FourierDrawer (float x, float y, float angle, ArrayList<PVector> fourier) { 
  push();
  translate(x, y);
  PVector p_target = new PVector();
  PVector target = new PVector();
  for ( int k = 0; k < fourier.size(); k++) {
    float amp = fourier.get(k).x;
    float phase = fourier.get(k).y;
    float freq = fourier.get(k).z;
    target.add(PVector.fromAngle((float)time.floatValue()*freq+phase+angle).setMag(amp));
    stroke (255, 50);
    noFill();
    if (!finish) {
      //ellipse (p_target.x, p_target.y, amp*2, amp*2);  
      //stroke (255, 150);
      //line ( p_target.x, p_target.y, target.x, target.y);
    }
    p_target.set(target);
  }
  pop();
  return p_target;
}

ArrayList<PVector> shrink (ArrayList<PVector> points, int skip) {
  ArrayList<PVector> newpoints = new ArrayList<PVector> ();
  for (int i = 0; i < points.size(); i++)
    if (i % skip == 0) {
      float x = map(points.get(i).x, 0, width, -width/2, width/2);
      float y = map(points.get(i).y, 0, height, -height/2, height/2);
      newpoints.add(new PVector(x, y));
    }
  return newpoints;
}

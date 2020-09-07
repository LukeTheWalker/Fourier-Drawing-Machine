//give a blak and white image, where the image points are the edges, it extrapolates all the coordinate of the points of edges
ArrayList <PVector> EdgeParser(String imagePath) {
  ArrayList <PVector> points = new ArrayList();
  PImage img;         // Source image
  img = loadImage(imagePath);
  surface.setSize(img.width, img.height);
  for (int x = 0; x < width; x++ ) {
    for (int y = 0; y < height; y++ ) {
      int loc = x + y*width;
      if (brightness(img.pixels[loc]) > 128){
        points.add(new PVector(x,y));
      }
    }
  }
  return points;
}

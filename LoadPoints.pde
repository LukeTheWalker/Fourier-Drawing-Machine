ArrayList LoadPoints() {
  ArrayList points = new ArrayList();
  BufferedReader reader = createReader("output.txt");
  String line = null;
  int i = 0;
  try {
    while ((line = reader.readLine()) != null) {
      String[] pieces = split(line, " ");
      float x = int(pieces[0]);
      float y = int(pieces[1]);
      x = map(x, 0, width, -width/2, width/2); 
      y = map(y, 0, height, -height/2, height/2); 
      //if (i% skip == 0) points.add(new PVector(x, y));
      i++;
    }
    reader.close();
  } 
  catch (IOException e) {
    e.printStackTrace();
  }
  return points;
}

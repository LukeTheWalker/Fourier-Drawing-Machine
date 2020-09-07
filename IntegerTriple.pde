class IntegerTriple implements Comparable {
  Integer _second, _third;
  Float _first;

  public IntegerTriple(Float f, Integer s, Integer t) {
    _first = f;
    _second = s;
    _third = t;
  }

  public int compareTo(Object o) {
    if (!this.first().equals(((IntegerTriple)o).first()))
      return Float.compare(this.first(), ((IntegerTriple)o).first());
    else if (!this.second().equals(((IntegerTriple)o).second()))
      return this.second() - ((IntegerTriple)o).second();
    else
      return this.third() - ((IntegerTriple)o).third();
  }

  Float first() { return _first; }
  Integer second() { return _second; }
  Integer third() { return _third; }

  void setFirst (float f) { _first = f;}
  void setSecond (int s)  { _second = s;}
  void setThird  (int t)  { _third = t;}
 
  public String toString() { return first() + " " + second() + " " + third(); }
}

class IntegerPair implements Comparable {
  Integer _first, _second;

  public IntegerPair(Integer f, Integer s) {
    _first = f;
    _second = s;
  }

  public int compareTo(Object o) {
    if (this.first() != ((IntegerPair )o).first())
      return this.first() - ((IntegerPair )o).first();
    else
      return this.second() - ((IntegerPair )o).second();
  }

  // Overriding equals() to compare two Complex objects 
  public boolean equals(Object o) { 

    // If the object is compared with itself then return true   
    if (o == this) { 
      return true;
    } 

    /* Check if o is an instance of Complex or not 
     "null instanceof [type]" also returns false */
    if (!(o instanceof IntegerPair)) { 
      return false;
    } 

    // typecast o to Complex so that we can compare data members  
    IntegerPair c = (IntegerPair) o; 

    // Compare the data members and return accordingly  
    return Double.compare(_first, c._first) == 0
      && Double.compare(_second, c._second) == 0;
  } 
  Integer first() { 
    return _first;
  }
  Integer second() { 
    return _second;
  }
}
